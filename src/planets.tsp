import "./common.tsp";

using Http;
using OpenAPI;

namespace SWAPI;

@route("/planets")
namespace planets {
	/**
	 * Get all the planet resources.
	 *
	 * @param search Case-insensitive partial match on the `name` field.
	 */
	@operationId("ListPlanets")
	op list(@query search: string): Planet[];

	/**
	 * Get a specific planet resource.
	 *
	 * @param planetId Numeric ID of the planet to get.
	 */
	@operationId("GetPlanet")
	op read(@path planetId: int32): Planet;
}

/** A Planet resource is a large mass, planet or planetoid in the Star Wars Universe, at the time of 0 ABY. */
model Planet {
	/** The name of this planet. */
	name: string;

	/** The diameter of this planet in kilometers. */
	diameter: string;

	/** The number of standard hours it takes for this planet to complete a single rotation on its axis. */
	rotation_period: string;

	/** The number of standard days it takes for this planet to complete a single orbit of its local star. */
	orbital_period: string;

	/** A number denoting the gravity of this planet, where "1" is normal or 1 standard G. "2" is twice or 2 standard Gs. "0.5" is half or 0.5 standard Gs. */
	gravity: string;

	/** The average population of sentient beings inhabiting this planet. */
	population: string;

	/** The climate of this planet. Comma separated if diverse. */
	climate: string;

	/** The terrain of this planet. Comma separated if diverse. */
	terrain: string;

	/** The percentage of the planet surface that is naturally occurring water or bodies of water. */
	surface_water: string;

	/** An array of People URL Resources that live on this planet. */
	residents: url[];

	/** An array of Film URL Resources that this planet has appeared in. */
	films: url[];

	...CommonResourceMembers;
}
