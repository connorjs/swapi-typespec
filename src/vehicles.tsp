import "@typespec/http";
import "@typespec/rest";

using TypeSpec.Http;
using TypeSpec.Rest;

namespace SWAPI;

@route("/vehicles")
namespace vehicles {
	/**
	 * Get all the vehicle resources.
	 *
	 * @param search Case-insensitive partial match on the `name` and `model` fields.
	 */
	op list(search: string): Vehicle[];

	@route("/{vehicleId}")
	namespace vehicle {
		/**
		 * Get a specific vehicle resource.
		 *
		 * @param vehicleId Numeric ID of the vehicle to get.
		 */
		op read(@path vehicleId: int32): Vehicle;
	}
}

/** A Vehicle resource is a single transport craft that **does not have** hyperdrive capability. */
model Vehicle {
	/** The name of this vehicle. The common name, such as "Sand Crawler" or "Speeder bike". */
	name: string;

	/** The model or official name of this vehicle. Such as "All-Terrain Attack Transport". */
	`model`: string;

	/** The class of this vehicle, such as "Wheeled" or "Repulsorcraft". */
	vehicle_class: string;

	/** The manufacturer of this vehicle. Comma separated if more than one. */
	manufacturer: string;

	/** The length of this vehicle in meters. */
	length: string;

	/** The cost of this vehicle new, in Galactic Credits. */
	cost_in_credits: string;

	/** The number of personnel needed to run or pilot this vehicle. */
	crew: string;

	/** The number of non-essential people this vehicle can transport. */
	passengers: string;

	/** The maximum speed of this vehicle in the atmosphere. */
	max_atmosphering_speed: string;

	/** The maximum number of kilograms that this vehicle can transport. */
	cargo_capacity: string;

	/** The maximum length of time that this vehicle can provide consumables for its entire crew without having to resupply. */
	consumables: string;

	/** The hypermedia URL of this resource. */
	url: string;

	/** The ISO 8601 date format of the time that this resource was created. */
	created: string;

	/** The ISO 8601 date format of the time that this resource was edited. */
	edited: string;
}
