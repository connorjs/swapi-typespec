using Http;
using OpenAPI;

namespace SWAPI;

/** Gets the `Root` resource. */
@route("/")
namespace root {
	@operationId("GetRoot")
	op read(): Root;
}

/**
 * The Root resource provides information on all available resources within the
 * API.
 */
model Root {
	/** The URL root for Film resources. */
	films: url;

	/** The URL root for People resources. */
	people: url;

	/** The URL root for Planet resources. */
	planets: url;

	/** The URL root for Species resources. */
	species: url;

	/** The URL root for Starships resources. */
	starships: url;

	/** The URL root for Vehicles resources. */
	vehicles: url;
}
