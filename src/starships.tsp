import "./common.tsp";

using Http;
using OpenAPI;

namespace SWAPI;

@route("/starships")
namespace starships {
	/**
	 * Get all the starship resources.
	 *
	 * @param search Case-insensitive partial match on the `name` and `model` fields.
	 */
	@operationId("ListStarships")
	op list(@query search: string): Starship[];

	/**
	 * Get a specific starship resource.
	 *
	 * @param starshipId Numeric ID of the starship to get.
	 */
	@operationId("GetStarship")
	op read(@path starshipId: int32): Starship;
}

/** A Starship resource is a single transport craft that has hyperdrive capability. */
model Starship {
	/** The name of this starship. The common name, such as "Death Star". */
	name: string;

	/** The model or official name of this starship. Such as "T-65 X-wing" or "DS-1 Orbital Battle Station". */
	`model`: string;

	/** The class of this starship, such as "Starfighter" or "Deep Space Mobile Battlestation" */
	starship_class: string;

	/** The manufacturer of this starship. Comma separated if more than one. */
	manufacturer: string;

	/** The cost of this starship new, in galactic credits. */
	cost_in_credits: string;

	/** The length of this starship in meters. */
	length: string;

	/** The number of personnel needed to run or pilot this starship. */
	crew: string;

	/** The number of non-essential people this starship can transport. */
	passengers: string;

	/** The maximum speed of this starship in the atmosphere. "N/A" if this starship is incapable of atmospheric flight. */
	max_atmosphering_speed: string;

	/** The class of this starships hyperdrive. */
	hyperdrive_rating: string;

	/** The Maximum number of Megalights this starship can travel in a standard hour. A "Megalight" is a standard unit of distance and has never been defined before within the Star Wars universe. This figure is only really useful for measuring the difference in speed of starships. We can assume it is similar to AU, the distance between our Sun (Sol) and Earth. */
	MGLT: string;

	/** The maximum number of kilograms that this starship can transport. */
	cargo_capacity: string;

	/** The maximum length of time that this starship can provide consumables for its entire crew without having to resupply. */
	consumables: string;

	/** An array of Film URL Resources that this starship has appeared in. */
	films: url[];

	/** An array of People URL Resources that this starship has been piloted by. */
	pilots: url[];

	...CommonResourceMembers;
}
