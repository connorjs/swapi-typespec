import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

@service({
	title: "SWAPI: The Star Wars API",
	version: "v1",
})
@server("https://swapi.dev/api/", "SWAPI server")
namespace SWAPI;

@route("/")
@get
op root(): Root;

// https://swapi.dev/documentation#root
model Root {
	films: string;
	people: string;
	planets: string;
	species: string;
	starships: string;
	vehicles: string;
}
