# SWAPI TypeSpec

[TypeSpec][typespec] representation of [SWAPI: The Star Wars API][swapi].

<!-- Badges: Use link shorthand for readability and easier reordering -->

[![CI Build][ci-build-badge]][ci-build]
[![npm version][npm-version-badge]][npm-version]

[ci-build]: https://github.com/connorjs/swapi-typespec/actions/workflows/ci-build.yml
[ci-build-badge]: https://github.com/connorjs/swapi-typespec/actions/workflows/ci-build.yml/badge.svg
[npm-version]: https://www.npmjs.com/package/swapi-typespec
[npm-version-badge]: https://img.shields.io/npm/v/swapi-typespec

<!-- End badges -->

## About

I created this project to learn about TypeSpec through first-hand usage.

## Getting started

Follow these steps to consume the generated Open API specification for SWAPI.

1. Install this package as a dependency.

   ```sh
   npm install -D swapi-typespec
   ```

2. Reference the generated Open API specification directly.

   ```sh
   ./node_modules/swapi-typespec/swapi.openapi.yaml
   ```

## Developing

### Run scripts

Use `npm run` to list all available scripts. The `release` script executes a
“release build.” The CI build uses this script.

### Directory structure

- [src](./src) contains the TypeSpec (`.tsp`) files

### Notes

- Using `@resource` adds _all_ REST operations. Thus, the spec files explicitly
  configure `list` and `read` operations because SWAPI only supports those.

[swapi]: https://swapi.dev
[typespec]: https://microsoft.github.io/typespec/
