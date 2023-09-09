# SWAPI TypeSpec

[TypeSpec][typespec] representation of [SWAPI: The Star Wars API][swapi].

## Notes

- Using `@resource` adds _all_ REST operations. Thus, the spec files explicitly
  configure `list` and `read` operations because SWAPI only supports those.

[swapi]: https://swapi.dev
[typespec]: https://microsoft.github.io/typespec/
