import "@typespec/http";
import "@typespec/openapi";

import "./films.tsp";
import "./people.tsp";
import "./planets.tsp";
import "./root.tsp";
import "./species.tsp";
import "./starships.tsp";
import "./vehicles.tsp";

using TypeSpec.Http;

@service({
	title: "SWAPI: The Star Wars API",
	version: "v1",
})
@server("https://swapi.dev/api/", "SWAPI server")
namespace SWAPI;
