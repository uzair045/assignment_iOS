//
//  CarDetailsBaseModel.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on October 18, 2023
//
import Foundation

struct CarDetailsBaseModel: Codable {

	var success: Bool?
	var input: Input?
	var attributes: Attributes?
	var colors: [Colors]?
	var equipment: Equipment?
	var warranties: [Warranties]?
	var timestamp: String?

	private enum CodingKeys: String, CodingKey {
		case success = "success"
		case input = "input"
		case attributes = "attributes"
		case colors = "colors"
		case equipment = "equipment"
		case warranties = "warranties"
		case timestamp = "timestamp"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		success = try? values.decodeIfPresent(Bool.self, forKey: .success)
		input = try? values.decodeIfPresent(Input.self, forKey: .input)
		attributes = try? values.decodeIfPresent(Attributes.self, forKey: .attributes)
		colors = try? values.decodeIfPresent([Colors].self, forKey: .colors)
		equipment = try? values.decodeIfPresent(Equipment.self, forKey: .equipment)
		warranties = try? values.decodeIfPresent([Warranties].self, forKey: .warranties)
		timestamp = try? values.decodeIfPresent(String.self, forKey: .timestamp)
	}

    struct Input: Codable {
        var key: String?
        var vin: String?

        private enum CodingKeys: String, CodingKey {
            case key = "key"
            case vin = "vin"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            key = try? values.decodeIfPresent(String.self, forKey: .key)
            vin = try? values.decodeIfPresent(String.self, forKey: .vin)
        }

    }

    
    struct Attributes: Codable {

        var year: String?
        var make: String?
        var model: String?
        var trim: String?
        var style: String?
        var type: String?
        var size: String?
        var category: String?
        var madeIn: String?
        var madeInCity: String?
        var doors: String?
        var fuelType: String?
        var fuelCapacity: String?
        var cityMileage: String?
        var highwayMileage: String?
        var engine: String?
        var engineSize: String?
        var engineCylinders: String?
        var transmission: String?
        var transmissionShort: String?
        var transmissionType: String?
        var transmissionSpeeds: String?
        var drivetrain: String?
        var antiBrakeSystem: String?
        var steeringType: String?
        var curbWeight: String?
        var grossVehicleWeightRating: String?
        var overallHeight: String?
        var overallLength: String?
        var overallWidth: String?
        var wheelbaseLength: String?
        var standardSeating: String?
        var invoicePrice: String?
        var deliveryCharges: String?
        var manufacturerSuggestedRetailPrice: String?
        var productionSeqNumber: String?
        var frontBrakeType: String?
        var rearBrakeType: String?
        var turningDiameter: String?
        var frontSuspension: String?
        var rearSuspension: String?
        var frontSpringType: String?
        var rearSpringType: String?
        var tires: String?
        var frontHeadroom: String?
        var rearHeadroom: String?
        var frontLegroom: String?
        var rearLegroom: String?
        var frontShoulderRoom: String?
        var rearShoulderRoom: String?
        var frontHipRoom: String?
        var rearHipRoom: String?
        var interiorTrim: [String]?
        var exteriorColor: [String]?
        var curbWeightManual: String?
        var groundClearance: String?
        var trackFront: String?
        var trackRear: String?
        var cargoLength: String?
        var widthAtWheelwell: String?
        var widthAtWall: String?
        var depth: String?
        var optionalSeating: String?
        var passengerVolume: String?
        var cargoVolume: String?
        var standardTowing: String?
        var maximumTowing: String?
        var standardPayload: String?
        var maximumPayload: String?
        var maximumGvwr: String?

        private enum CodingKeys: String, CodingKey {
            case year = "year"
            case make = "make"
            case model = "model"
            case trim = "trim"
            case style = "style"
            case type = "type"
            case size = "size"
            case category = "category"
            case madeIn = "made_in"
            case madeInCity = "made_in_city"
            case doors = "doors"
            case fuelType = "fuel_type"
            case fuelCapacity = "fuel_capacity"
            case cityMileage = "city_mileage"
            case highwayMileage = "highway_mileage"
            case engine = "engine"
            case engineSize = "engine_size"
            case engineCylinders = "engine_cylinders"
            case transmission = "transmission"
            case transmissionShort = "transmission_short"
            case transmissionType = "transmission_type"
            case transmissionSpeeds = "transmission_speeds"
            case drivetrain = "drivetrain"
            case antiBrakeSystem = "anti_brake_system"
            case steeringType = "steering_type"
            case curbWeight = "curb_weight"
            case grossVehicleWeightRating = "gross_vehicle_weight_rating"
            case overallHeight = "overall_height"
            case overallLength = "overall_length"
            case overallWidth = "overall_width"
            case wheelbaseLength = "wheelbase_length"
            case standardSeating = "standard_seating"
            case invoicePrice = "invoice_price"
            case deliveryCharges = "delivery_charges"
            case manufacturerSuggestedRetailPrice = "manufacturer_suggested_retail_price"
            case productionSeqNumber = "production_seq_number"
            case frontBrakeType = "front_brake_type"
            case rearBrakeType = "rear_brake_type"
            case turningDiameter = "turning_diameter"
            case frontSuspension = "front_suspension"
            case rearSuspension = "rear_suspension"
            case frontSpringType = "front_spring_type"
            case rearSpringType = "rear_spring_type"
            case tires = "tires"
            case frontHeadroom = "front_headroom"
            case rearHeadroom = "rear_headroom"
            case frontLegroom = "front_legroom"
            case rearLegroom = "rear_legroom"
            case frontShoulderRoom = "front_shoulder_room"
            case rearShoulderRoom = "rear_shoulder_room"
            case frontHipRoom = "front_hip_room"
            case rearHipRoom = "rear_hip_room"
            case interiorTrim = "interior_trim"
            case exteriorColor = "exterior_color"
            case curbWeightManual = "curb_weight_manual"
            case groundClearance = "ground_clearance"
            case trackFront = "track_front"
            case trackRear = "track_rear"
            case cargoLength = "cargo_length"
            case widthAtWheelwell = "width_at_wheelwell"
            case widthAtWall = "width_at_wall"
            case depth = "depth"
            case optionalSeating = "optional_seating"
            case passengerVolume = "passenger_volume"
            case cargoVolume = "cargo_volume"
            case standardTowing = "standard_towing"
            case maximumTowing = "maximum_towing"
            case standardPayload = "standard_payload"
            case maximumPayload = "maximum_payload"
            case maximumGvwr = "maximum_gvwr"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            year = try? values.decodeIfPresent(String.self, forKey: .year)
            make = try? values.decodeIfPresent(String.self, forKey: .make)
            model = try? values.decodeIfPresent(String.self, forKey: .model)
            trim = try? values.decodeIfPresent(String.self, forKey: .trim)
            style = try? values.decodeIfPresent(String.self, forKey: .style)
            type = try? values.decodeIfPresent(String.self, forKey: .type)
            size = try? values.decodeIfPresent(String.self, forKey: .size)
            category = try? values.decodeIfPresent(String.self, forKey: .category)
            madeIn = try? values.decodeIfPresent(String.self, forKey: .madeIn)
            madeInCity = try? values.decodeIfPresent(String.self, forKey: .madeInCity)
            doors = try? values.decodeIfPresent(String.self, forKey: .doors)
            fuelType = try? values.decodeIfPresent(String.self, forKey: .fuelType)
            fuelCapacity = try? values.decodeIfPresent(String.self, forKey: .fuelCapacity)
            cityMileage = try? values.decodeIfPresent(String.self, forKey: .cityMileage)
            highwayMileage = try? values.decodeIfPresent(String.self, forKey: .highwayMileage)
            engine = try? values.decodeIfPresent(String.self, forKey: .engine)
            engineSize = try? values.decodeIfPresent(String.self, forKey: .engineSize)
            engineCylinders = try? values.decodeIfPresent(String.self, forKey: .engineCylinders)
            transmission = try? values.decodeIfPresent(String.self, forKey: .transmission)
            transmissionShort = try? values.decodeIfPresent(String.self, forKey: .transmissionShort)
            transmissionType = try? values.decodeIfPresent(String.self, forKey: .transmissionType)
            transmissionSpeeds = try? values.decodeIfPresent(String.self, forKey: .transmissionSpeeds)
            drivetrain = try? values.decodeIfPresent(String.self, forKey: .drivetrain)
            antiBrakeSystem = try? values.decodeIfPresent(String.self, forKey: .antiBrakeSystem)
            steeringType = try? values.decodeIfPresent(String.self, forKey: .steeringType)
            curbWeight = try? values.decodeIfPresent(String.self, forKey: .curbWeight)
            grossVehicleWeightRating = try? values.decodeIfPresent(String.self, forKey: .grossVehicleWeightRating)
            overallHeight = try? values.decodeIfPresent(String.self, forKey: .overallHeight)
            overallLength = try? values.decodeIfPresent(String.self, forKey: .overallLength)
            overallWidth = try? values.decodeIfPresent(String.self, forKey: .overallWidth)
            wheelbaseLength = try? values.decodeIfPresent(String.self, forKey: .wheelbaseLength)
            standardSeating = try? values.decodeIfPresent(String.self, forKey: .standardSeating)
            invoicePrice = try? values.decodeIfPresent(String.self, forKey: .invoicePrice)
            deliveryCharges = try? values.decodeIfPresent(String.self, forKey: .deliveryCharges)
            manufacturerSuggestedRetailPrice = try? values.decodeIfPresent(String.self, forKey: .manufacturerSuggestedRetailPrice)
            productionSeqNumber = try? values.decodeIfPresent(String.self, forKey: .productionSeqNumber)
            frontBrakeType = try? values.decodeIfPresent(String.self, forKey: .frontBrakeType)
            rearBrakeType = try? values.decodeIfPresent(String.self, forKey: .rearBrakeType)
            turningDiameter = try? values.decodeIfPresent(String.self, forKey: .turningDiameter)
            frontSuspension = try? values.decodeIfPresent(String.self, forKey: .frontSuspension)
            rearSuspension = try? values.decodeIfPresent(String.self, forKey: .rearSuspension)
            frontSpringType = try? values.decodeIfPresent(String.self, forKey: .frontSpringType)
            rearSpringType = try? values.decodeIfPresent(String.self, forKey: .rearSpringType)
            tires = try? values.decodeIfPresent(String.self, forKey: .tires)
            frontHeadroom = try? values.decodeIfPresent(String.self, forKey: .frontHeadroom)
            rearHeadroom = try? values.decodeIfPresent(String.self, forKey: .rearHeadroom)
            frontLegroom = try? values.decodeIfPresent(String.self, forKey: .frontLegroom)
            rearLegroom = try? values.decodeIfPresent(String.self, forKey: .rearLegroom)
            frontShoulderRoom = try? values.decodeIfPresent(String.self, forKey: .frontShoulderRoom)
            rearShoulderRoom = try? values.decodeIfPresent(String.self, forKey: .rearShoulderRoom)
            frontHipRoom = try? values.decodeIfPresent(String.self, forKey: .frontHipRoom)
            rearHipRoom = try? values.decodeIfPresent(String.self, forKey: .rearHipRoom)
            interiorTrim = try? values.decodeIfPresent([String].self, forKey: .interiorTrim)
            exteriorColor = try? values.decodeIfPresent([String].self, forKey: .exteriorColor)
            curbWeightManual = try? values.decodeIfPresent(String.self, forKey: .curbWeightManual)
            groundClearance = try? values.decodeIfPresent(String.self, forKey: .groundClearance)
            trackFront = try? values.decodeIfPresent(String.self, forKey: .trackFront)
            trackRear = try? values.decodeIfPresent(String.self, forKey: .trackRear)
            cargoLength = try? values.decodeIfPresent(String.self, forKey: .cargoLength)
            widthAtWheelwell = try? values.decodeIfPresent(String.self, forKey: .widthAtWheelwell)
            widthAtWall = try? values.decodeIfPresent(String.self, forKey: .widthAtWall)
            depth = try? values.decodeIfPresent(String.self, forKey: .depth)
            optionalSeating = try? values.decodeIfPresent(String.self, forKey: .optionalSeating)
            passengerVolume = try? values.decodeIfPresent(String.self, forKey: .passengerVolume)
            cargoVolume = try? values.decodeIfPresent(String.self, forKey: .cargoVolume)
            standardTowing = try? values.decodeIfPresent(String.self, forKey: .standardTowing)
            maximumTowing = try? values.decodeIfPresent(String.self, forKey: .maximumTowing)
            standardPayload = try? values.decodeIfPresent(String.self, forKey: .standardPayload)
            maximumPayload = try? values.decodeIfPresent(String.self, forKey: .maximumPayload)
            maximumGvwr = try? values.decodeIfPresent(String.self, forKey: .maximumGvwr)
        }

    }
    
    
    struct Colors: Codable {
        var category: String?
        var name: String?

        private enum CodingKeys: String, CodingKey {
            case category = "category"
            case name = "name"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            category = try? values.decodeIfPresent(String.self, forKey: .category)
            name = try? values.decodeIfPresent(String.self, forKey: .name)
        }
    }
}
