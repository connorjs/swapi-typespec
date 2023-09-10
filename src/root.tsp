using TypeSpec.Http;

namespace SWAPI;

/** Gets the `Root` resource. */
@route("/")
@get
op root(): Root;

/**
 * The Root resource provides information on all available resources within the
 * API.
 */
model Root {
	/** The URL root for Film resources. */
	films: string;

	/** The URL root for People resources. */
	people: string;

	/** The URL root for Planet resources. */
	planets: string;

	/** The URL root for Species resources. */
	species: string;

	/** The URL root for Starships resources. */
	starships: string;

	/** The URL root for Vehicles resources. */
	vehicles: string;
}
