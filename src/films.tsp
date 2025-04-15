import "./common.tsp";

using Http;
using OpenAPI;

namespace SWAPI;

@route("/films")
namespace films {
	/**
	 * Get all the films resources.
	 *
	 * @param search Case-insensitive partial match on the `name` field.
	 */
	@operationId("ListFilms")
	op list(@query search: string): Film[];

	/**
	 * Get a specific film resource.
	 *
	 * @param filmId Numeric ID of the film to get.
	 */
	@operationId("GetFilm")
	op read(@path filmId: int32): Film;
}

/** A Film resource is a single film. */
model Film {
	/** The title of this film */
	title: string;

	/** The episode number of this film. */
	episode_id: int32;

	/** The opening paragraphs at the beginning of this film. */
	opening_crawl: string;

	/** The name of the director of this film. */
	director: string;

	/** The name(s) of the producer(s) of this film. Comma separated. */
	producer: string;

	/** The ISO 8601 date format of film release at original creator country. */
	release_date: plainDate;

	/** An array of species resource URLs that are in this film. */
	species: url[];

	/** An array of starship resource URLs that are in this film. */
	starships: url[];

	/** An array of vehicle resource URLs that are in this film. */
	vehicles: url[];

	/** An array of people resource URLs that are in this film. */
	characters: url[];

	/** An array of planet resource URLs that are in this film. */
	planets: url[];

	...CommonResourceMembers;
}
