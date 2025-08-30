# /fix-issue - Automated GitHub Issue Resolution

Use this command to automatically analyze and fix GitHub issues with full workflow automation.

## What it Does

This command will eventually provide end-to-end GitHub issue resolution:
1. Fetch issue details using `gh issue view <number>`
2. Analyze the problem description
3. Create a feature/fix branch
4. Search codebase for relevant files
5. Implement the fix or feature
6. Write appropriate tests
7. Run validation checks
8. Create a pull request
9. Link the original issue

## Usage

```bash
claude fix-issue <issue-number>
```

Example:
```bash
claude fix-issue 42
```

## Current Implementation

Currently shows usage instructions. Full automation requires:
- GitHub CLI (`gh`) properly authenticated
- Access to repository issues
- Project-specific implementation patterns

## Planned Workflow

### 1. Issue Analysis
```bash
gh issue view 42 --json title,body,labels,assignees
```

### 2. Branch Creation
```bash
git checkout -b fix/issue-42-description
```

### 3. Problem Investigation
- Search codebase using `rg` for relevant code
- Identify affected files and functions
- Understand the scope of changes needed

### 4. Implementation
- Make minimal changes to fix the issue
- Follow the 10 Hard Rules (file size, function size, etc.)
- Ensure proper error handling and validation

### 5. Testing
- Write tests for the fix
- Run `claude validate` to ensure quality
- Use `validation-gates` agent if needed

### 6. Pull Request Creation
```bash
git push -u origin fix/issue-42-description
gh pr create --title "Fix: Issue #42 - Description" --body "Resolves #42\n\n- Fixed X\n- Added tests for Y"
```

## Integration Points

This command integrates with:
- **GitHub CLI**: For issue and PR management
- **validation-gates agent**: For comprehensive testing
- **CLAUDE.md standards**: Following all hard rules
- **Foundation hooks**: Automatic logging and validation

## Example Issue Types

### Bug Reports
- Analyze stack traces and error conditions
- Identify root cause in codebase
- Implement fix with error handling
- Add regression tests

### Feature Requests
- Break down feature into components
- Follow architecture standards
- Implement with proper validation
- Add comprehensive tests

### Documentation Issues
- Work with `documentation-manager` agent
- Update relevant documentation files
- Ensure examples work correctly
- Update related files

## Benefits

- **Consistent Issue Resolution**: Same high-quality approach every time
- **Automated Workflow**: Reduces manual steps and errors
- **Quality Assurance**: Built-in validation and testing
- **Documentation**: Proper commit messages and PR descriptions
- **Traceability**: Clear link between issues and solutions

## Prerequisites

For full functionality, ensure:
- GitHub CLI authenticated (`gh auth login`)
- Repository access permissions
- Git configured with user details
- Project follows foundation standards

## Future Enhancements

- AI-powered issue analysis and solution suggestions
- Automatic test case generation from issue description
- Integration with project management tools
- Parallel issue resolution for bulk fixes