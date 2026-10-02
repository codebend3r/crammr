export const CODE_EXAMPLES: Array<{ language: string; source: string }> = [
  {
    language: "javascript",
    source:
      '// A simple greeting\nconst greet = (name) => {\n  return `Hello, ${name}!`;\n};\nconsole.log(greet("Ada"));',
  },
  {
    language: "typescript",
    source:
      'type User = { name: string };\nconst user: User = { name: "Ada" };\nfunction greet(user: User): string {\n  return `Hello, ${user.name}!`;\n}',
  },
  {
    language: "python",
    source:
      '# A simple greeting\ndef greet(name: str) -> str:\n    return f"Hello, {name}!"\n\nprint(greet("Ada"))',
  },
  {
    language: "java",
    source:
      'public class Greeting {\n  public static void main(String[] args) {\n    System.out.println("Hello, Ada!");\n  }\n}',
  },
  {
    language: "c",
    source: '#include <stdio.h>\nint main(void) {\n  printf("Hello, Ada!\\n");\n  return 0;\n}',
  },
  {
    language: "cpp",
    source:
      '#include <iostream>\nint main() {\n  std::cout << "Hello, Ada!" << std::endl;\n  return 0;\n}',
  },
  {
    language: "csharp",
    source:
      'using System;\nclass Greeting {\n  static void Main() {\n    Console.WriteLine("Hello, Ada!");\n  }\n}',
  },
  {
    language: "go",
    source: 'package main\n\nimport "fmt"\n\nfunc main() {\n  fmt.Println("Hello, Ada!")\n}',
  },
  {
    language: "rust",
    source:
      'fn greet(name: &str) -> String {\n    format!("Hello, {}!", name)\n}\n\nfn main() {\n    println!("{}", greet("Ada"));\n}',
  },
  {
    language: "php",
    source:
      '<?php\nfunction greet(string $name): string {\n  return "Hello, $name!";\n}\necho greet("Ada");',
  },
  { language: "ruby", source: 'def greet(name)\n  "Hello, #{name}!"\nend\n\nputs greet("Ada")' },
  {
    language: "swift",
    source:
      'func greet(_ name: String) -> String {\n    return "Hello, \\(name)!"\n}\nprint(greet("Ada"))',
  },
  {
    language: "kotlin",
    source:
      'fun greet(name: String): String {\n    return "Hello, $name!"\n}\nfun main() {\n    println(greet("Ada"))\n}',
  },
  {
    language: "dart",
    source:
      'String greet(String name) {\n  return "Hello, $name!";\n}\nvoid main() {\n  print(greet("Ada"));\n}',
  },
  {
    language: "r",
    source: 'greet <- function(name) {\n  paste("Hello,", name)\n}\nprint(greet("Ada"))',
  },
  {
    language: "lua",
    source: 'local function greet(name)\n  return "Hello, " .. name\nend\nprint(greet("Ada"))',
  },
  {
    language: "sql",
    source:
      "SELECT name, COUNT(*) AS visits\nFROM users\nWHERE active = TRUE AND name = 'Ada'\nGROUP BY name\nORDER BY visits DESC;",
  },
  {
    language: "xml",
    source:
      '<!-- A greeting card -->\n<section class="notice">\n  <h1>Hello, Ada!</h1>\n</section>',
  },
  {
    language: "css",
    source:
      "/* A greeting card */\n.notice {\n  color: #68d9ff;\n  padding: 12px;\n  display: grid;\n}",
  },
  { language: "json", source: '{\n  "name": "Ada",\n  "active": true,\n  "visits": 42\n}' },
  {
    language: "yaml",
    source:
      '# User preferences\nname: "Ada"\nactive: true\nvisits: 42\nthemes:\n  - neon\n  - nord',
  },
  { language: "bash", source: '#!/usr/bin/env bash\nname="Ada"\nprintf "Hello, %s!\\n" "$name"' },
  {
    language: "powershell",
    source: '# A simple greeting\n$name = "Ada"\nWrite-Output "Hello, $name!"',
  },
];
