import "@typespec/http";
import "@typespec/openapi";
import "@typespec/versioning";

import "./films.tsp";
import "./people.tsp";
import "./planets.tsp";
import "./root.tsp";
import "./species.tsp";
import "./starships.tsp";
import "./vehicles.tsp";

using Http;
using OpenAPI;
using Versioning;

/** SWAPI: The Star Wars API (generated with TypeSpec from [swapi-typespec](https://github.com/connorjs/swapi-typespec#readme)). */
@service(#{ title: "SWAPI (TypeSpec)" })
@server("https://swapi.dev/api/", "SWAPI server")
@externalDocs("https://swapi.dev/")
@versioned(Version)
namespace SWAPI;

enum Version {
	versionless: "",
}
