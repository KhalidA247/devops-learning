# 02-bash

`01-linux` → **`02-bash`** → `03-git` → `04-networking` → `05-aws` → `06-kubernetes` → `07-terraform`

## What's in here

```
02-bash/
├── labs/          # Core concept scripts (loops, functions, arrays, error handling, etc.)
├── notes/         # Reference scripts and notes on file operators, IFS, conditionals, etc.
└── projects/      # Standalone challenge scripts (Bash Battle Arena levels + assignments)
```

## Concepts covered so far

- Shebang lines, variables, positional parameters (`$1`, `$@`)
- Arithmetic expansion `$(( ))` and `bc` for decimals
- Conditionals: `if`/`elif`/`else`, file test operators (`-f`, `-d`, `-e`), string/numeric tests
- Loops: `for`, `while`, nested loops
- Redirection: `>` vs `>>`, `<`, piping
- `read` for user input, `IFS` handling
- Arrays and `${#array[@]}` for counting
- Functions, `local` variables, return values
- `grep`, `sort`, `awk` for text processing
- `date` command with custom `+format` strings, command substitution `$( )`
- Error handling and exit codes
- Debugging scripts (VS Code unsaved-tab gotchas, Output panel vs Terminal for `read`)

## Bash Battle Arena challenges

Progressive scripting challenges — file operations, backup automation, log searching,
sorting by size, and a functional calculator. Each level builds on the last.

## How I'm working

- Mac, VS Code, zsh
- Git via terminal commands only (`git add . && git commit -m "..." && git push`) — building good habits early