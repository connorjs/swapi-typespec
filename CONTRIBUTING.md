# Contributing

## Developing

### Run scripts

Use `npm run` to list all available scripts. The `release` script executes a
“release build.” The CI build uses this script.

### Directory structure

- [src](./src) contains the TypeSpec (`.tsp`) files

## TypeSpec conventions

- Separate files by type. Name files using the plural form, which SWAPI uses
  in its documentation.

- Using `@resource` adds _all_ REST operations. Thus, the spec files explicitly
  configure `list` and `read` operations because SWAPI only supports those.

- Use backticks to escape properties that are TypeSpec keywords. For example,
  ```typespec
  `model`: string; // Used in starships.tsp
  ```
