using TypeSpec.Http;

namespace SWAPI;

@route("/people")
namespace people {
	/**
	 * Get all the people resources.
	 *
	 * @param search Case-insensitive partial match on the `name` field.
	 */
	op list(search: string): Person[];

	@route("/{personId}")
	namespace person {
		/**
		 * Get a specific people resource.
		 *
		 * @param personId Numeric ID of the person to get.
		 */
		op read(@path personId: int32): Person;
	}
}

/** A People resource is an individual person or character within the Star Wars universe. */
model Person {
	/** The name of this person. */
	name: string;

	/** The birth year of the person, using the in-universe standard of BBY or ABY - Before the Battle of Yavin or After the Battle of Yavin. The Battle of Yavin is a battle that occurs at the end of Star Wars episode IV: A New Hope. */
	birth_year: string;

	/** The eye color of this person. Will be `"unknown"` if not known or `"n/a"` if the person does not have an eye. */
	eye_color: string;

	/** The gender of this person. Either `"Male"`, `"Female"` or `"unknown"`, `"n/a"` if the person does not have a gender. */
	gender: string;

	/** The hair color of this person. Will be `"unknown"` if not known or `"n/a"` if the person does not have hair. */
	hair_color: string;

	/** The height of the person in centimeters. */
	height: string;

	/** The mass of the person in kilograms. */
	mass: string;

	/** The skin color of this person. */
	skin_color: string;

	/** The URL of a planet resource, a planet that this person was born on or inhabits. */
	homeworld: url;

	/** An array of film resource URLs that this person has been in. */
	films: url[];

	/** An array of species resource URLs that this person belongs to. */
	species: url[];

	/** An array of starship resource URLs that this person has piloted. */
	starships: url[];

	/** An array of vehicle resource URLs that this person has piloted. */
	vehicles: url[];

	/** The hypermedia URL of this resource. */
	url: url;

	/** The ISO 8601 date format of the time that this resource was created. */
	created: utcDateTime;

	/** The ISO 8601 date format of the time that this resource was edited. */
	edited: utcDateTime;
}
