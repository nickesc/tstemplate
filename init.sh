#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Error: Please provide a project name"
    echo "Usage: $0 <project_name>"
    exit 1
fi

PROJECT_NAME="$1"

if ! git clone https://github.com/nickesc/tstemplate.git; then
    echo "Error: Failed to clone repository"
    exit 1
fi

if ! mv ./tstemplate ./"$PROJECT_NAME"; then
    echo "Error: Failed to rename project folder"
    exit 1
fi

cd "./$PROJECT_NAME"

if ! mv ./tstemplate.ts ./"$PROJECT_NAME".ts; then
    echo "Error: Failed to rename main TypeScript file"
    exit 1
fi

if ! mv ./tests/tstemplate.test.ts ./tests/"$PROJECT_NAME".test.ts; then
    echo "Error: Failed to rename test file"
    exit 1
fi

if command -v sed >/dev/null 2>&1; then
    if sed --version >/dev/null 2>&1; then
        # GNU sed (Linux)
        grep -rl 'tstemplate' . --exclude-dir={.git,node_modules} | xargs sed -i "s/tstemplate/$PROJECT_NAME/g"
    else
        # BSD sed (macOS)
        grep -rl 'tstemplate' . --exclude-dir={.git,node_modules} | xargs sed -i '' "s/tstemplate/$PROJECT_NAME/g"
    fi
else
    echo "Error: sed command not found"
    exit 1
fi

rm init.sh
rm -rf .git && git init && git add . && git commit -m "initial commit"

if ! npm install; then
    echo "Error: Failed to install npm dependencies"
    exit 1
fi

if ! npm run build:docs; then
    echo "Error: Failed to build documentation"
    exit 1
fi

if ! npm test; then
    echo "Error: Failed to run tests"
    exit 1
fi

echo "Project '$PROJECT_NAME' has been successfully set up"
