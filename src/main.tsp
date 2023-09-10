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

/** SWAPI: The Star Wars API (generated with TypeSpec from [swapi-typespec](https://github.com/connorjs/swapi-typespec#readme)). */
@service({
	title: "SWAPI (TypeSpec)",
	version: "v1",
})
@server("https://swapi.dev/api/", "SWAPI server")
@OpenAPI.externalDocs("https://swapi.dev/")
namespace SWAPI;
