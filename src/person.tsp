import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace SWAPI;

@route("/people")
namespace people {
	@doc("Get all the people resources")
	op list(): Person[];

	@route("/{personId}")
	namespace person {
		@doc("Get a specific people resource")
		op read(@path personId: int32): Person;
	}
}

model Person {
	@doc("The name of this person.")
	name: string;

	@doc("The birth year of the person, using the in-universe standard of BBY or ABY - Before the Battle of Yavin or After the Battle of Yavin. The Battle of Yavin is a battle that occurs at the end of Star Wars episode IV: A New Hope.")
	birth_year: string;

	@doc("The eye color of this person. Will be \"unknown\" if not known or \"n/a\" if the person does not have an eye.")
	eye_color: string;

	@doc("The gender of this person. Either \"Male\", \"Female\" or \"unknown\", \"n/a\" if the person does not have a gender.")
	gender: string;

	@doc("The hair color of this person. Will be \"unknown\" if not known or \"n/a\" if the person does not have hair.")
	hair_color: string;

	@doc("The height of the person in centimeters.")
	height: string;

	@doc("The mass of the person in kilograms.")
	mass: string;

	@doc("The skin color of this person.")
	skin_color: string;

	@doc("The URL of a planet resource, a planet that this person was born on or inhabits.")
	homeworld: string;

	@doc("The hypermedia URL of this resource.")
	url: string;

	@doc("The ISO 8601 date format of the time that this resource was created.")
	created: string;

	@doc("The ISO 8601 date format of the time that this resource was edited.")
	edited: string;
}
