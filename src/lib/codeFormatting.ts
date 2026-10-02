import { parse } from "acorn";

type LineStart = { position: number; depth: number };

type SyntaxNode = {
  type: string;
  start: number;
  end: number;
  body?: unknown;
};

function isSyntaxNode(value: unknown): value is SyntaxNode {
  return (
    typeof value === "object" &&
    value !== null &&
    "type" in value &&
    typeof value.type === "string" &&
    "start" in value &&
    typeof value.start === "number" &&
    "end" in value &&
    typeof value.end === "number"
  );
}

function collectLineStarts({ value, depth }: { value: unknown; depth: number }): LineStart[] {
  if (Array.isArray(value)) {
    return value.flatMap((child: unknown) => collectLineStarts({ value: child, depth }));
  }
  if (!isSyntaxNode(value)) return [];

  const isBlock = value.type === "BlockStatement";
  const childDepth = depth + (isBlock ? 1 : 0);
  const statements =
    (isBlock || value.type === "Program") && Array.isArray(value.body)
      ? value.body.filter(isSyntaxNode)
      : [];
  const starts = statements.map((statement) => ({ position: statement.start, depth: childDepth }));
  const closing = isBlock && statements.length ? [{ position: value.end - 1, depth }] : [];
  const children = Object.values(value).flatMap((child: unknown) =>
    collectLineStarts({ value: child, depth: childDepth }),
  );
  return [...starts, ...closing, ...children];
}

export function formatJavaScript({ source }: { source: string }): {
  source: string;
  block: boolean;
} {
  // Newlines can be significant in quiz code (ASI), so authored multiline code stays untouched.
  if (/[\r\n]/.test(source)) return { source, block: true };

  try {
    const tree = parse(source, { ecmaVersion: "latest", sourceType: "module" });
    const positions = collectLineStarts({ value: tree, depth: 0 }).reduce(
      (result, start) => result.set(start.position, start),
      new Map<number, LineStart>([[0, { position: 0, depth: 0 }]]),
    );
    const starts = [...positions.values()].sort((left, right) => left.position - right.position);
    if (starts.length === 1) return { source, block: false };

    const formatted = starts
      .map((start, index) => {
        const end = starts[index + 1]?.position ?? source.length;
        const content = source.slice(start.position, end).trim();
        return content ? `${"  ".repeat(start.depth)}${content}` : "";
      })
      .filter(Boolean)
      .join("\n");
    return { source: formatted, block: true };
  } catch {
    // Invalid syntax may be the point of a question; never repair it or prevent rendering.
    return { source, block: false };
  }
}
