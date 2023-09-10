using TypeSpec.Http;

// Dev note: Only `films.tsp` uses these templates due to shortcomings I find
// with the template approach.
//
// - I want `filmId` as the `Get` path parameter, not a generic `id`. I have
//   found the specificity helps, especially with code generation.
// - The doc comments can only differ with `{name}`, which prevents deeper
//   clarification. For example, the `search` parameter should clarify on which
//   fields it searches.
// - The `@OpenAPI.operationId` decorator is not compatible with this reuse
//   pattern. The resource route is also needed at the call site.
//   _Note: This is why I did not wrap these operations in an interface._
//
// Thus, almost half of the config is still needed/desired at the call site.
//
// Standardization presents a great benefit for this approach, but I’ve found
// independent evolution on top of a copied base proves similarly effective.
//
// I will leave these templates here for reference in the repository.

/** The list operation template. */
@get
@doc("Get all the {name} resources.", TResource)
op List<TResource extends {}>(
	@doc("Case-insensitive partial match on selected fields.")
	@query
	search: string,
): TResource[];

/** The get (read) operation template. */
@route("/{id}")
@get
@doc("Get a specific {name} resource.", TResource)
op Get<TResource extends {}>(
	@doc("Numeric ID of the {name} to get.", TResource)
	@path
	id: int32,
): TResource;
