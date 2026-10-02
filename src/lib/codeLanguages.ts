import type { LanguageFn } from "highlight.js";
import type { Options } from "rehype-highlight";
import javascript from "highlight.js/lib/languages/javascript";
import typescript from "highlight.js/lib/languages/typescript";
import python from "highlight.js/lib/languages/python";
import java from "highlight.js/lib/languages/java";
import c from "highlight.js/lib/languages/c";
import cpp from "highlight.js/lib/languages/cpp";
import csharp from "highlight.js/lib/languages/csharp";
import go from "highlight.js/lib/languages/go";
import rust from "highlight.js/lib/languages/rust";
import php from "highlight.js/lib/languages/php";
import ruby from "highlight.js/lib/languages/ruby";
import swift from "highlight.js/lib/languages/swift";
import kotlin from "highlight.js/lib/languages/kotlin";
import dart from "highlight.js/lib/languages/dart";
import r from "highlight.js/lib/languages/r";
import lua from "highlight.js/lib/languages/lua";
import sql from "highlight.js/lib/languages/sql";
import xml from "highlight.js/lib/languages/xml";
import css from "highlight.js/lib/languages/css";
import json from "highlight.js/lib/languages/json";
import yaml from "highlight.js/lib/languages/yaml";
import bash from "highlight.js/lib/languages/bash";
import powershell from "highlight.js/lib/languages/powershell";

export type CodeLanguage = {
  id: string;
  label: string;
  extension: string;
  aliases: string[];
  grammar: LanguageFn;
};

export const CODE_LANGUAGES: CodeLanguage[] = [
  {
    id: "javascript",
    label: "JavaScript",
    extension: "js",
    aliases: ["js", "jsx", "mjs", "cjs"],
    grammar: javascript,
  },
  {
    id: "typescript",
    label: "TypeScript",
    extension: "ts",
    aliases: ["ts", "tsx"],
    grammar: typescript,
  },
  { id: "python", label: "Python", extension: "py", aliases: ["py", "python3"], grammar: python },
  { id: "java", label: "Java", extension: "java", aliases: [], grammar: java },
  { id: "c", label: "C", extension: "c", aliases: ["h"], grammar: c },
  { id: "cpp", label: "C++", extension: "cpp", aliases: ["c++", "cc", "cxx", "hpp"], grammar: cpp },
  { id: "csharp", label: "C#", extension: "cs", aliases: ["cs", "c#", "c-sharp"], grammar: csharp },
  { id: "go", label: "Go", extension: "go", aliases: ["golang"], grammar: go },
  { id: "rust", label: "Rust", extension: "rs", aliases: ["rs"], grammar: rust },
  { id: "php", label: "PHP", extension: "php", aliases: [], grammar: php },
  { id: "ruby", label: "Ruby", extension: "rb", aliases: ["rb"], grammar: ruby },
  { id: "swift", label: "Swift", extension: "swift", aliases: [], grammar: swift },
  { id: "kotlin", label: "Kotlin", extension: "kt", aliases: ["kt", "kts"], grammar: kotlin },
  { id: "dart", label: "Dart", extension: "dart", aliases: [], grammar: dart },
  { id: "r", label: "R", extension: "r", aliases: [], grammar: r },
  { id: "lua", label: "Lua", extension: "lua", aliases: [], grammar: lua },
  {
    id: "sql",
    label: "SQL",
    extension: "sql",
    aliases: ["postgres", "postgresql", "mysql"],
    grammar: sql,
  },
  {
    id: "xml",
    label: "HTML / XML",
    extension: "html",
    aliases: ["html", "htm", "xhtml", "svg"],
    grammar: xml,
  },
  { id: "css", label: "CSS", extension: "css", aliases: [], grammar: css },
  { id: "json", label: "JSON", extension: "json", aliases: [], grammar: json },
  { id: "yaml", label: "YAML", extension: "yml", aliases: ["yml"], grammar: yaml },
  { id: "bash", label: "Bash", extension: "sh", aliases: ["sh", "shell", "zsh"], grammar: bash },
  {
    id: "powershell",
    label: "PowerShell",
    extension: "ps1",
    aliases: ["ps1", "pwsh"],
    grammar: powershell,
  },
];

export function getCodeLanguage({ language }: { language: string }): CodeLanguage | undefined {
  const name = language.trim().toLowerCase();
  return CODE_LANGUAGES.find((item) => item.id === name || item.aliases.includes(name));
}

export function codeLanguageForModule({ slug }: { slug: string }): string | undefined {
  const name = slug.replace(/-\d+$/, "");
  return getCodeLanguage({ language: name })?.id ?? undefined;
}

export function codeLanguageMetadata({ language }: { language: string }): {
  label: string;
  extension: string;
} {
  const definition = getCodeLanguage({ language });
  if (definition) return definition;
  if (["text", "plain", "plaintext", "txt"].includes(language.trim().toLowerCase())) {
    return { label: "Plain text", extension: "txt" };
  }
  return { label: language, extension: "txt" };
}

export const HIGHLIGHT_OPTIONS: Options = {
  languages: CODE_LANGUAGES.reduce<Record<string, LanguageFn>>(
    (result, item) => ({
      ...result,
      [item.id]: item.grammar,
    }),
    {},
  ),
  aliases: CODE_LANGUAGES.reduce<Record<string, string[]>>(
    (result, item) => ({
      ...result,
      [item.id]: item.aliases,
    }),
    {},
  ),
  detect: true,
  subset: CODE_LANGUAGES.map((item) => item.id),
  plainText: ["text", "plain", "plaintext", "txt"],
};
