import "./common.tsp";

using TypeSpec.Http;

namespace SWAPI;

@route("/species")
namespace species {
	/**
	 * Get all the species resources.
	 *
	 * @param search Case-insensitive partial match on the `name` field.
	 */
	@OpenAPI.operationId("ListSpecies")
	op list(@query search: string): Species[];

	namespace species {
		/**
		 * Get a specific species resource.
		 *
		 * @param speciesId Numeric ID of the species to get.
		 */
		@OpenAPI.operationId("GetSpecies")
		op read(@path speciesId: int32): Species;
	}

	/** A Species resource is a type of person or character within the Star Wars Universe. */
	model Species {
		/** The name of this species. */
		name: string;

		/** The classification of this species, such as "mammal" or "reptile". */
		classification: string;

		/** The designation of this species, such as "sentient". */
		designation: string;

		/** The average height of this species in centimeters. */
		average_height: string;

		/** The average lifespan of this species in years. */
		average_lifespan: string;

		/** A comma-separated string of common eye colors for this species, "none" if this species does not typically have eyes. */
		eye_colors: string;

		/** A comma-separated string of common hair colors for this species, "none" if this species does not typically have hair. */
		hair_colors: string;

		/** A comma-separated string of common skin colors for this species, "none" if this species does not typically have skin. */
		skin_colors: string;

		/** The language commonly spoken by this species. */
		language: string;

		/** The URL of a planet resource, a planet that this species originates from. */
		homeworld: url;

		/** An array of People URL Resources that are a part of this species. */
		people: url[];

		/** An array of Film URL Resources that this species has appeared in. */
		films: url[];

		...CommonResourceMembers;
	}
}
