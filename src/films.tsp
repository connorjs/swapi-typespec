import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace SWAPI;

@route("/films")
namespace films {
	/**
	 * Get all the film resources.
	 *
	 * @param search Case-insensitive partial match on the `title` field.
	 */
	op list(search: string): Film[];

	@route("/{filmId}")
	namespace film {
		/**
		 * Get a specific film resource.
		 *
		 * @param filmId Numeric ID of the film to get.
		 */
		op read(@path filmId: int32): Film;
	}
}

/** A Film resource is a single film. */
model Film {
	/** The title of this film */
	title: string;

	/** The episode number of this film. */
	episode_id: integer;

	/** The opening paragraphs at the beginning of this film. */
	opening_crawl: string;

	/** The name of the director of this film. */
	director: string;

	/** The name(s) of the producer(s) of this film. Comma separated. */
	producer: string;

	/** The ISO 8601 date format of film release at original creator country. */
	release_date: plainDate;

	/** The hypermedia URL of this resource. */
	url: string;

	/** The ISO 8601 date format of the time that this resource was created. */
	created: string;

	/** The ISO 8601 date format of the time that this resource was edited. */
	edited: string;
}
