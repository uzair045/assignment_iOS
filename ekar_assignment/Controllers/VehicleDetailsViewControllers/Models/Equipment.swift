//
//  Equipment.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on October 18, 2023
//
import Foundation

struct Equipment: Codable {

	var forwdAwd: String?
	var absBrakes: String?
	var adjustableFootPedals: String?
	var airConditioning: String?
	var alloyWheels: String?
	var amFmRadio: String?
	var automaticHeadlights: String?
	var automaticLoadLeveling: String?
	var cargoAreaCover: String?
	var cargoAreaTiedowns: String?
	var cargoNet: String?
	var cassettePlayer: String?
	var cdChanger: String?
	var cdPlayer: String?
	var childSafetyDoorLocks: String?
	var chromeWheels: String?
	var cruiseControl: String?
	var daytimeRunningLights: String?
	var deepTintedGlass: String?
	var driverAirbag: String?
	var driverMultiAdjustablePowerSeat: String?
	var dvdPlayer: String?
	var electrochromicExteriorRearviewMirror: String?
	var electrochromicInteriorRearviewMirror: String?
	var electronicBrakeAssistance: String?
	var electronicParkingAid: String?
	var firstAidKit: String?
	var fogLights: String?
	var frontAirDam: String?
	var frontCooledSeat: String?
	var frontHeatedSeat: String?
	var frontPowerLumbarSupport: String?
	var frontPowerMemorySeat: String?
	var frontSideAirbag: String?
	var frontSideAirbagWithHeadProtection: String?
	var frontSplitBenchSeat: String?
	var fullSizeSpareTire: String?
	var genuineWoodTrim: String?
	var glassRearWindowOnConvertible: String?
	var heatedExteriorMirror: String?
	var heatedSteeringWheel: String?
	var highIntensityDischargeHeadlights: String?
	var intervalWipers: String?
	var keylessEntry: String?
	var leatherSeat: String?
	var leatherSteeringWheel: String?
	var limitedSlipDifferential: String?
	var loadBearingExteriorRack: String?
	var lockingDifferential: String?
	var lockingPickupTruckTailgate: String?
	var manualSunroof: String?
	var navigationAid: String?
	var passengerAirbag: String?
	var passengerMultiAdjustablePowerSeat: String?
	var pickupTruckBedLiner: String?
	var pickupTruckCargoBoxLight: String?
	var powerAdjustableExteriorMirror: String?
	var powerDoorLocks: String?
	var powerSlidingSideVanDoor: String?
	var powerSunroof: String?
	var powerTrunkLid: String?
	var powerWindows: String?
	var rainSensingWipers: String?
	var rearSpoiler: String?
	var rearWindowDefogger: String?
	var rearWiper: String?
	var remoteIgnition: String?
	var removableTop: String?
	var runFlatTires: String?
	var runningBoards: String?
	var secondRowFoldingSeat: String?
	var secondRowHeatedSeat: String?
	var secondRowMultiAdjustablePowerSeat: String?
	var secondRowRemovableSeat: String?
	var secondRowSideAirbag: String?
	var secondRowSideAirbagWithHeadProtection: String?
	var secondRowSoundControls: String?
	var separateDriverFrontPassengerClimateControls: String?
	var sideHeadCurtainAirbag: String?
	var skidPlate: String?
	var slidingRearPickupTruckWindow: String?
	var splashGuards: String?
	var steelWheels: String?
	var steeringWheelMountedControls: String?
	var subwoofer: String?
	var tachometer: String?
	var telematicsSystem: String?
	var telescopicSteeringColumn: String?
	var thirdRowRemovableSeat: String?
	var tiltSteering: String?
	var tiltSteeringColumn: String?
	var tirePressureMonitor: String?
	var towHitchReceiver: String?
	var towingPreparationPackage: String?
	var tractionControl: String?
	var tripComputer: String?
	var trunkAntiTrapDevice: String?
	var vehicleAntiTheft: String?
	var vehicleStabilityControlSystem: String?
	var voiceActivatedTelephone: String?
	var windDeflectorForConvertibles: String?

	private enum CodingKeys: String, CodingKey {
		case forwdAwd = "4wd_awd"
		case absBrakes = "abs_brakes"
		case adjustableFootPedals = "adjustable_foot_pedals"
		case airConditioning = "air_conditioning"
		case alloyWheels = "alloy_wheels"
		case amFmRadio = "am_fm_radio"
		case automaticHeadlights = "automatic_headlights"
		case automaticLoadLeveling = "automatic_load_leveling"
		case cargoAreaCover = "cargo_area_cover"
		case cargoAreaTiedowns = "cargo_area_tiedowns"
		case cargoNet = "cargo_net"
		case cassettePlayer = "cassette_player"
		case cdChanger = "cd_changer"
		case cdPlayer = "cd_player"
		case childSafetyDoorLocks = "child_safety_door_locks"
		case chromeWheels = "chrome_wheels"
		case cruiseControl = "cruise_control"
		case daytimeRunningLights = "daytime_running_lights"
		case deepTintedGlass = "deep_tinted_glass"
		case driverAirbag = "driver_airbag"
		case driverMultiAdjustablePowerSeat = "driver_multi_adjustable_power_seat"
		case dvdPlayer = "dvd_player"
		case electrochromicExteriorRearviewMirror = "electrochromic_exterior_rearview_mirror"
		case electrochromicInteriorRearviewMirror = "electrochromic_interior_rearview_mirror"
		case electronicBrakeAssistance = "electronic_brake_assistance"
		case electronicParkingAid = "electronic_parking_aid"
		case firstAidKit = "first_aid_kit"
		case fogLights = "fog_lights"
		case frontAirDam = "front_air_dam"
		case frontCooledSeat = "front_cooled_seat"
		case frontHeatedSeat = "front_heated_seat"
		case frontPowerLumbarSupport = "front_power_lumbar_support"
		case frontPowerMemorySeat = "front_power_memory_seat"
		case frontSideAirbag = "front_side_airbag"
		case frontSideAirbagWithHeadProtection = "front_side_airbag_with_head_protection"
		case frontSplitBenchSeat = "front_split_bench_seat"
		case fullSizeSpareTire = "full_size_spare_tire"
		case genuineWoodTrim = "genuine_wood_trim"
		case glassRearWindowOnConvertible = "glass_rear_window_on_convertible"
		case heatedExteriorMirror = "heated_exterior_mirror"
		case heatedSteeringWheel = "heated_steering_wheel"
		case highIntensityDischargeHeadlights = "high_intensity_discharge_headlights"
		case intervalWipers = "interval_wipers"
		case keylessEntry = "keyless_entry"
		case leatherSeat = "leather_seat"
		case leatherSteeringWheel = "leather_steering_wheel"
		case limitedSlipDifferential = "limited_slip_differential"
		case loadBearingExteriorRack = "load_bearing_exterior_rack"
		case lockingDifferential = "locking_differential"
		case lockingPickupTruckTailgate = "locking_pickup_truck_tailgate"
		case manualSunroof = "manual_sunroof"
		case navigationAid = "navigation_aid"
		case passengerAirbag = "passenger_airbag"
		case passengerMultiAdjustablePowerSeat = "passenger_multi_adjustable_power_seat"
		case pickupTruckBedLiner = "pickup_truck_bed_liner"
		case pickupTruckCargoBoxLight = "pickup_truck_cargo_box_light"
		case powerAdjustableExteriorMirror = "power_adjustable_exterior_mirror"
		case powerDoorLocks = "power_door_locks"
		case powerSlidingSideVanDoor = "power_sliding_side_van_door"
		case powerSunroof = "power_sunroof"
		case powerTrunkLid = "power_trunk_lid"
		case powerWindows = "power_windows"
		case rainSensingWipers = "rain_sensing_wipers"
		case rearSpoiler = "rear_spoiler"
		case rearWindowDefogger = "rear_window_defogger"
		case rearWiper = "rear_wiper"
		case remoteIgnition = "remote_ignition"
		case removableTop = "removable_top"
		case runFlatTires = "run_flat_tires"
		case runningBoards = "running_boards"
		case secondRowFoldingSeat = "second_row_folding_seat"
		case secondRowHeatedSeat = "second_row_heated_seat"
		case secondRowMultiAdjustablePowerSeat = "second_row_multi_adjustable_power_seat"
		case secondRowRemovableSeat = "second_row_removable_seat"
		case secondRowSideAirbag = "second_row_side_airbag"
		case secondRowSideAirbagWithHeadProtection = "second_row_side_airbag_with_head_protection"
		case secondRowSoundControls = "second_row_sound_controls"
		case separateDriverFrontPassengerClimateControls = "separate_driver_front_passenger_climate_controls"
		case sideHeadCurtainAirbag = "side_head_curtain_airbag"
		case skidPlate = "skid_plate"
		case slidingRearPickupTruckWindow = "sliding_rear_pickup_truck_window"
		case splashGuards = "splash_guards"
		case steelWheels = "steel_wheels"
		case steeringWheelMountedControls = "steering_wheel_mounted_controls"
		case subwoofer = "subwoofer"
		case tachometer = "tachometer"
		case telematicsSystem = "telematics_system"
		case telescopicSteeringColumn = "telescopic_steering_column"
		case thirdRowRemovableSeat = "third_row_removable_seat"
		case tiltSteering = "tilt_steering"
		case tiltSteeringColumn = "tilt_steering_column"
		case tirePressureMonitor = "tire_pressure_monitor"
		case towHitchReceiver = "tow_hitch_receiver"
		case towingPreparationPackage = "towing_preparation_package"
		case tractionControl = "traction_control"
		case tripComputer = "trip_computer"
		case trunkAntiTrapDevice = "trunk_anti_trap_device"
		case vehicleAntiTheft = "vehicle_anti_theft"
		case vehicleStabilityControlSystem = "vehicle_stability_control_system"
		case voiceActivatedTelephone = "voice_activated_telephone"
		case windDeflectorForConvertibles = "wind_deflector_for_convertibles"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
        forwdAwd = try? values.decodeIfPresent(String.self, forKey: .forwdAwd)
		absBrakes = try? values.decodeIfPresent(String.self, forKey: .absBrakes)
		adjustableFootPedals = try? values.decodeIfPresent(String.self, forKey: .adjustableFootPedals)
		airConditioning = try? values.decodeIfPresent(String.self, forKey: .airConditioning)
		alloyWheels = try? values.decodeIfPresent(String.self, forKey: .alloyWheels)
		amFmRadio = try? values.decodeIfPresent(String.self, forKey: .amFmRadio)
		automaticHeadlights = try? values.decodeIfPresent(String.self, forKey: .automaticHeadlights)
		automaticLoadLeveling = try? values.decodeIfPresent(String.self, forKey: .automaticLoadLeveling)
		cargoAreaCover = try? values.decodeIfPresent(String.self, forKey: .cargoAreaCover)
		cargoAreaTiedowns = try? values.decodeIfPresent(String.self, forKey: .cargoAreaTiedowns)
		cargoNet = try? values.decodeIfPresent(String.self, forKey: .cargoNet)
		cassettePlayer = try? values.decodeIfPresent(String.self, forKey: .cassettePlayer)
		cdChanger = try? values.decodeIfPresent(String.self, forKey: .cdChanger)
		cdPlayer = try? values.decodeIfPresent(String.self, forKey: .cdPlayer)
		childSafetyDoorLocks = try? values.decodeIfPresent(String.self, forKey: .childSafetyDoorLocks)
		chromeWheels = try? values.decodeIfPresent(String.self, forKey: .chromeWheels)
		cruiseControl = try? values.decodeIfPresent(String.self, forKey: .cruiseControl)
		daytimeRunningLights = try? values.decodeIfPresent(String.self, forKey: .daytimeRunningLights)
		deepTintedGlass = try? values.decodeIfPresent(String.self, forKey: .deepTintedGlass)
		driverAirbag = try? values.decodeIfPresent(String.self, forKey: .driverAirbag)
		driverMultiAdjustablePowerSeat = try? values.decodeIfPresent(String.self, forKey: .driverMultiAdjustablePowerSeat)
		dvdPlayer = try? values.decodeIfPresent(String.self, forKey: .dvdPlayer)
		electrochromicExteriorRearviewMirror = try? values.decodeIfPresent(String.self, forKey: .electrochromicExteriorRearviewMirror)
		electrochromicInteriorRearviewMirror = try? values.decodeIfPresent(String.self, forKey: .electrochromicInteriorRearviewMirror)
		electronicBrakeAssistance = try? values.decodeIfPresent(String.self, forKey: .electronicBrakeAssistance)
		electronicParkingAid = try? values.decodeIfPresent(String.self, forKey: .electronicParkingAid)
		firstAidKit = try? values.decodeIfPresent(String.self, forKey: .firstAidKit)
		fogLights = try? values.decodeIfPresent(String.self, forKey: .fogLights)
		frontAirDam = try? values.decodeIfPresent(String.self, forKey: .frontAirDam)
		frontCooledSeat = try? values.decodeIfPresent(String.self, forKey: .frontCooledSeat)
		frontHeatedSeat = try? values.decodeIfPresent(String.self, forKey: .frontHeatedSeat)
		frontPowerLumbarSupport = try? values.decodeIfPresent(String.self, forKey: .frontPowerLumbarSupport)
		frontPowerMemorySeat = try? values.decodeIfPresent(String.self, forKey: .frontPowerMemorySeat)
		frontSideAirbag = try? values.decodeIfPresent(String.self, forKey: .frontSideAirbag)
		frontSideAirbagWithHeadProtection = try? values.decodeIfPresent(String.self, forKey: .frontSideAirbagWithHeadProtection)
		frontSplitBenchSeat = try? values.decodeIfPresent(String.self, forKey: .frontSplitBenchSeat)
		fullSizeSpareTire = try? values.decodeIfPresent(String.self, forKey: .fullSizeSpareTire)
		genuineWoodTrim = try? values.decodeIfPresent(String.self, forKey: .genuineWoodTrim)
		glassRearWindowOnConvertible = try? values.decodeIfPresent(String.self, forKey: .glassRearWindowOnConvertible)
		heatedExteriorMirror = try? values.decodeIfPresent(String.self, forKey: .heatedExteriorMirror)
		heatedSteeringWheel = try? values.decodeIfPresent(String.self, forKey: .heatedSteeringWheel)
		highIntensityDischargeHeadlights = try? values.decodeIfPresent(String.self, forKey: .highIntensityDischargeHeadlights)
		intervalWipers = try? values.decodeIfPresent(String.self, forKey: .intervalWipers)
		keylessEntry = try? values.decodeIfPresent(String.self, forKey: .keylessEntry)
		leatherSeat = try? values.decodeIfPresent(String.self, forKey: .leatherSeat)
		leatherSteeringWheel = try? values.decodeIfPresent(String.self, forKey: .leatherSteeringWheel)
		limitedSlipDifferential = try? values.decodeIfPresent(String.self, forKey: .limitedSlipDifferential)
		loadBearingExteriorRack = try? values.decodeIfPresent(String.self, forKey: .loadBearingExteriorRack)
		lockingDifferential = try? values.decodeIfPresent(String.self, forKey: .lockingDifferential)
		lockingPickupTruckTailgate = try? values.decodeIfPresent(String.self, forKey: .lockingPickupTruckTailgate)
		manualSunroof = try? values.decodeIfPresent(String.self, forKey: .manualSunroof)
		navigationAid = try? values.decodeIfPresent(String.self, forKey: .navigationAid)
		passengerAirbag = try? values.decodeIfPresent(String.self, forKey: .passengerAirbag)
		passengerMultiAdjustablePowerSeat = try? values.decodeIfPresent(String.self, forKey: .passengerMultiAdjustablePowerSeat)
		pickupTruckBedLiner = try? values.decodeIfPresent(String.self, forKey: .pickupTruckBedLiner)
		pickupTruckCargoBoxLight = try? values.decodeIfPresent(String.self, forKey: .pickupTruckCargoBoxLight)
		powerAdjustableExteriorMirror = try? values.decodeIfPresent(String.self, forKey: .powerAdjustableExteriorMirror)
		powerDoorLocks = try? values.decodeIfPresent(String.self, forKey: .powerDoorLocks)
		powerSlidingSideVanDoor = try? values.decodeIfPresent(String.self, forKey: .powerSlidingSideVanDoor)
		powerSunroof = try? values.decodeIfPresent(String.self, forKey: .powerSunroof)
		powerTrunkLid = try? values.decodeIfPresent(String.self, forKey: .powerTrunkLid)
		powerWindows = try? values.decodeIfPresent(String.self, forKey: .powerWindows)
		rainSensingWipers = try? values.decodeIfPresent(String.self, forKey: .rainSensingWipers)
		rearSpoiler = try? values.decodeIfPresent(String.self, forKey: .rearSpoiler)
		rearWindowDefogger = try? values.decodeIfPresent(String.self, forKey: .rearWindowDefogger)
		rearWiper = try? values.decodeIfPresent(String.self, forKey: .rearWiper)
		remoteIgnition = try? values.decodeIfPresent(String.self, forKey: .remoteIgnition)
		removableTop = try? values.decodeIfPresent(String.self, forKey: .removableTop)
		runFlatTires = try? values.decodeIfPresent(String.self, forKey: .runFlatTires)
		runningBoards = try? values.decodeIfPresent(String.self, forKey: .runningBoards)
		secondRowFoldingSeat = try? values.decodeIfPresent(String.self, forKey: .secondRowFoldingSeat)
		secondRowHeatedSeat = try? values.decodeIfPresent(String.self, forKey: .secondRowHeatedSeat)
		secondRowMultiAdjustablePowerSeat = try? values.decodeIfPresent(String.self, forKey: .secondRowMultiAdjustablePowerSeat)
		secondRowRemovableSeat = try? values.decodeIfPresent(String.self, forKey: .secondRowRemovableSeat)
		secondRowSideAirbag = try? values.decodeIfPresent(String.self, forKey: .secondRowSideAirbag)
		secondRowSideAirbagWithHeadProtection = try? values.decodeIfPresent(String.self, forKey: .secondRowSideAirbagWithHeadProtection)
		secondRowSoundControls = try? values.decodeIfPresent(String.self, forKey: .secondRowSoundControls)
		separateDriverFrontPassengerClimateControls = try? values.decodeIfPresent(String.self, forKey: .separateDriverFrontPassengerClimateControls)
		sideHeadCurtainAirbag = try? values.decodeIfPresent(String.self, forKey: .sideHeadCurtainAirbag)
		skidPlate = try? values.decodeIfPresent(String.self, forKey: .skidPlate)
		slidingRearPickupTruckWindow = try? values.decodeIfPresent(String.self, forKey: .slidingRearPickupTruckWindow)
		splashGuards = try? values.decodeIfPresent(String.self, forKey: .splashGuards)
		steelWheels = try? values.decodeIfPresent(String.self, forKey: .steelWheels)
		steeringWheelMountedControls = try? values.decodeIfPresent(String.self, forKey: .steeringWheelMountedControls)
		subwoofer = try? values.decodeIfPresent(String.self, forKey: .subwoofer)
		tachometer = try? values.decodeIfPresent(String.self, forKey: .tachometer)
		telematicsSystem = try? values.decodeIfPresent(String.self, forKey: .telematicsSystem)
		telescopicSteeringColumn = try? values.decodeIfPresent(String.self, forKey: .telescopicSteeringColumn)
		thirdRowRemovableSeat = try? values.decodeIfPresent(String.self, forKey: .thirdRowRemovableSeat)
		tiltSteering = try? values.decodeIfPresent(String.self, forKey: .tiltSteering)
		tiltSteeringColumn = try? values.decodeIfPresent(String.self, forKey: .tiltSteeringColumn)
		tirePressureMonitor = try? values.decodeIfPresent(String.self, forKey: .tirePressureMonitor)
		towHitchReceiver = try? values.decodeIfPresent(String.self, forKey: .towHitchReceiver)
		towingPreparationPackage = try? values.decodeIfPresent(String.self, forKey: .towingPreparationPackage)
		tractionControl = try? values.decodeIfPresent(String.self, forKey: .tractionControl)
		tripComputer = try? values.decodeIfPresent(String.self, forKey: .tripComputer)
		trunkAntiTrapDevice = try? values.decodeIfPresent(String.self, forKey: .trunkAntiTrapDevice)
		vehicleAntiTheft = try? values.decodeIfPresent(String.self, forKey: .vehicleAntiTheft)
		vehicleStabilityControlSystem = try? values.decodeIfPresent(String.self, forKey: .vehicleStabilityControlSystem)
		voiceActivatedTelephone = try? values.decodeIfPresent(String.self, forKey: .voiceActivatedTelephone)
		windDeflectorForConvertibles = try? values.decodeIfPresent(String.self, forKey: .windDeflectorForConvertibles)
	}

}
