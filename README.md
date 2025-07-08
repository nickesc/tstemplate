<h3 align="center" >
  <div>
    <a href="https://github.com/nickesc/tstemplate"><img alt="Source: Github" src="https://img.shields.io/badge/source-github-brightgreen?style=for-the-badge&logo=github&labelColor=%23505050"></a>
    <a href="https://github.com/nickesc/tstemplate/actions/workflows/ts-tests.yml"><img alt="Tests: github.com/nickesc/tstemplate/actions/workflows/ts-tests.yml" src="https://img.shields.io/github/actions/workflow/status/nickesc/tstemplate/ts-tests.yml?logo=github&label=tests&logoColor=white&style=for-the-badge&labelColor=%23505050"></a>
    <br>
    <a href="https://www.npmjs.com/package/tstemplate"><img alt="NPM: npmjs.com/package/tstemplate" src="https://img.shields.io/npm/v/tstemplate?style=for-the-badge&logo=npm&logoColor=white&label=npm&color=%23C12127&labelColor=%23505050"></a>
  </div>
  <br>
  <img src="docs/icon.svg" width="150px">
  <h3 align="center">
    <code>tstemplate</code>
  </h3>
  <h6 align="center">
    by <a href="https://nickesc.github.io">N. Escobar</a> / <a href="https://github.com/nickesc">nickesc</a>
  </h6>
  <h6 align="center">
    <!-- tagline -->
  </h6>
</h3>

<br>

## About `tstemplate`

Steps to get started:
1. Clone this repository:

   ```sh
   git clone https://github.com/nickesc/tstemplate.git
   ```

2. Define the project name:
   
   ```sh
   PROJECT_NAME=replace_with_project_name
   ```

3. Find and replace the string `tstemplate` in the project folder with your project name to get started quickly:
   
   ```sh
   grep -rl 'tstemplate' "./tstemplate" --exclude-dir={.git,node_modules} | xargs sed -i '' 's/tstemplate/'$PROJECT_NAME'/g'
   ```

4. Remove the `git` repository:
   ```sh
   rm -rf ./tstemplate/.git
   ```

5. Rename `tstemplate.ts` and `tests/tstemplate.test.ts`, and replace `tstemplate` with your repository name:
   ```sh
   mv ./tstemplate/tstemplate.ts ./tstemplate/$PROJECT_NAME.ts
   mv ./tstemplate/tests/tstemplate.test.ts ./tstemplate/tests/$PROJECT_NAME.test.ts
   mv ./tstemplate ./$PROJECT_NAME
   ```

6. Initialize a new `git` repository
   ```sh
   cd $PROJECT_NAME
   git init
   git add .
   git commit -m "initial commit"
   ```

## Install

Install `tstemplate` via NPM:

```sh
npm i tstemplate
```

Import the `tstemplate` class in your TypeScript or JavaScript file:

```ts
import { tstemplate } from "tstemplate";
```

## Basic Usage

> TODO

## Reference

For full documentation of the module and its methods, please see the [Documentation](/docs/documentation.md) page.

## License

`tstemplate` is released under the **MIT** license. For more information, see the repository's [LICENSE](/LICENSE) file.
