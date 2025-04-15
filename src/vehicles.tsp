import "./common.tsp";

using Http;
using OpenAPI;

namespace SWAPI;

@route("/vehicles")
namespace vehicles {
	/**
	 * Get all the vehicle resources.
	 *
	 * @param search Case-insensitive partial match on the `name` and `model` fields.
	 */
	@operationId("ListVehicles")
	op list(@query search: string): Vehicle[];

	/**
	 * Get a specific vehicle resource.
	 *
	 * @param vehicleId Numeric ID of the vehicle to get.
	 */
	@operationId("GetVehicle")
	op read(@path vehicleId: int32): Vehicle;
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

	/** An array of Film URL Resources that this vehicle has appeared in. */
	films: url[];

	/** An array of People URL Resources that this vehicle has been piloted by. */
	pilots: url[];

	...CommonResourceMembers;
}
