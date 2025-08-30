# /primer - Build Complete Project Context

Use this command to quickly understand any project structure and context.

## What it Does

Runs the `claude primer` command which:
1. Shows project structure with `tree`
2. Reads key documentation files (CLAUDE.md, README.md)
3. Lists important dependencies
4. Shows current git status
5. Identifies project type and key files

## Usage

```bash
claude primer
```

## Output Example

```
=== PRIMER: Building Project Context ===
project-name/
├── src/
│   ├── components/
│   ├── hooks/
│   └── utils/
├── docs/
├── package.json
├── CLAUDE.md
└── README.md

=== Reading Key Files ===
# Project Name
This project does...

=== Dependencies ===
react: ^18.2.0
typescript: ^5.0.0
...

=== Git Status ===
On branch main
Your branch is up to date with 'origin/main'
nothing to commit, working tree clean
```

## When to Use

- Starting work on any project
- Getting oriented in unfamiliar codebase
- Before making significant changes
- When Claude needs project context
- Debugging project structure issues

## Benefits

- **Fast Context Loading**: Understand project in seconds
- **Consistent Information**: Same format across all projects
- **Error Prevention**: Know project structure before making changes
- **Debugging Aid**: Identify missing files or configuration issues