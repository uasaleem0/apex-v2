# /validate - Comprehensive Quality Validation

Use this command to run all quality checks across any project type.

## What it Does

Runs the `claude validate` command which automatically:
1. **Linting**: Checks code style and catches errors
2. **Type Checking**: Validates TypeScript/Python types
3. **Testing**: Runs unit and integration tests
4. **Build Validation**: Ensures project builds successfully
5. **Security Scan**: Checks for obvious security issues

## Usage

```bash
claude validate
```

## Smart Detection

The command automatically detects your project type and runs appropriate checks:

### JavaScript/TypeScript Projects
- `npm run lint` or ESLint
- `npm run typecheck` or TypeScript compiler
- `npm test` or Jest/Vitest
- `npm run build` or build process

### Python Projects
- `ruff check` for linting
- `mypy` for type checking
- `pytest` for testing
- Build validation where applicable

### Universal Checks
- Security scan for secrets/credentials
- File size validation (<500 lines)
- Function size validation (<50 lines)

## Output Example

```
=== VALIDATION: Running All Checks ===

✅ Linting: PASSED (0 errors, 0 warnings)
✅ Type Checking: PASSED (no type errors)
✅ Tests: PASSED (24 tests, 0 failures)
✅ Build: PASSED (build completed successfully)
✅ Security: PASSED (no obvious vulnerabilities)

=== Validation Complete ===
All quality gates passed! ✅
```

## Integration with Validation-Gates Agent

This command works perfectly with the `validation-gates` agent:
- Use `claude validate` for quick checks
- Call `validation-gates` agent for iterative fixing
- Agent will re-run `claude validate` until all tests pass

## When to Use

- **Before every commit**: Ensure code quality
- **After implementing features**: Validate everything works
- **Before creating PRs**: Ensure review-ready code
- **During debugging**: Identify what's broken
- **CI/CD validation**: Same checks locally as in pipeline

## Benefits

- **Universal Quality Gates**: Same standards across all projects
- **Early Error Detection**: Catch issues before they reach production
- **Consistent Standards**: Enforce the 10 Hard Rules automatically
- **Time Saving**: One command instead of remembering multiple checks
- **CI/CD Alignment**: Match your local validation with deployment pipeline

## Troubleshooting

If validation fails:
1. Read the error messages carefully
2. Use `rg` to search for related code
3. Fix issues one at a time
4. Re-run `claude validate` after each fix
5. Consider using the `validation-gates` agent for complex issues