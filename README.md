# SWAPI TypeSpec

[TypeSpec][typespec] representation of [SWAPI: The Star Wars API][swapi].

[swapi]: https://swapi.dev
[typespec]: https://microsoft.github.io/typespec/

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

The generated Open API 3 specification has 878 lines (with no blank lines) in a
single file. The TypeSpec source has 493 lines (about ⅓ are blank lines for
readability) split across 8 files for logical organization, which is a ~45%
reduction in lines of code.

If we ignore the imports, using statements, and blank lines within models, then
the TypeSpec only has 353 lines. That means a 60% reduction in code to maintain.

## Installation

Follow these steps to consume the generated Open API specification for SWAPI.

1. Install this package as a dependency.

   ```sh
   npm install -D swapi-typespec
   ```

2. Reference the generated Open API specification directly.

   ```sh
   ./node_modules/swapi-typespec/swapi.openapi.yaml
   ```

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md) for details.
