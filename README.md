# SWAPI TypeSpec

[TypeSpec][typespec] representation of [SWAPI: The Star Wars API][swapi].

<!-- Badges: Use link shorthand for readability and easier reordering -->

[![CI Build][ci-build-badge]][ci-build]

[ci-build]: https://github.com/connorjs/swapi-typespec/actions/workflows/ci-build.yml
[ci-build-badge]: https://github.com/connorjs/swapi-typespec/actions/workflows/ci-build.yml/badge.svg

<!-- End badges -->

## Notes

- Using `@resource` adds _all_ REST operations. Thus, the spec files explicitly
  configure `list` and `read` operations because SWAPI only supports those.

[swapi]: https://swapi.dev
[typespec]: https://microsoft.github.io/typespec/
