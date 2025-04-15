# Contributing

## Developing

### Run scripts

Use `npm run` to list all available scripts.
See [ci-build.yml](.github/workflows/ci-build.yml) for details on the CI build.

### Directory structure

- [src](./src) contains the TypeSpec (`.tsp`) files

## TypeSpec conventions

- Separate files by type.
  Name files using the plural form, which SWAPI uses in its documentation.

- Using `@resource` adds _all_ REST operations.
  Thus, the spec files explicitly configure `list` and `read` operations because SWAPI only supports those.

  As a result, this project does not use `@typespec/rest` at all.
  Instead, it only needs `@typespec/http` for the API definitions.

- Use backticks to escape properties that are TypeSpec keywords.
  For example,
  ```typespec
  `model`: string; // Used in starships.tsp
  ```
