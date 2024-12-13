Config = {}
Config.Locale = 'en'

show_your_name = false
enable_blips = true
enable_names = true
color_blip = 3 -- blue
sprite_blip = 270

-- name head
scaleY = 0.55
distance_from_head = 1.0
text_font = 0

enable_rank = true
-- Change letters according to your preference
-- d = days
-- m = month
-- y = year
date_format = "%d/%m/%y"

use_script_in_coordinates = false
range_use = 50.0
coordinates = {
    vector3(0.0,0.0,0.0)
}

 
Config.GangNumberRequired = 0
Config.TimerBeforeNewRob    = 600 -- The cooldown timer on a Turf after robbery was completed / canceled, in seconds

Config.MaxDistance    = 20   -- max distance from the robbery, going any longer away from it will to cancel the robbery
Config.GiveDirtyMoney = true -- give black money? If disabled it will give cash instead

Config.DrawDistance               = 10.0 -- How close do you need to be for the markers to be drawn (in GTA units).
Config.MarkerType                 = {Cloakrooms = 20, Armories = 21, BossActions = 22, Vehicles = 36, Helicopters = 34}
Config.MarkerSize                 = {x = 1.5, y = 1.5, z = 0.5}
Config.MarkerColor                = {r = 50, g = 50, b = 204}

Config.EnablePlayerManagement     = true -- Enable if you want society managing.
Config.EnableArmoryManagement     = false
Config.EnableESXIdentity          = true -- Enable if you're using esx_identity.
Config.EnableESXOptionalneeds     = true -- Enable if you're using esx_optionalneeds
Config.EnableLicenses             = true -- Enable if you're using esx_license. 

Config.EnableHandcuffTimer        = true -- Enable handcuff timer? will unrestrain player after the time ends.
Config.HandcuffTimer              = 10 * 60000 -- 10 minutes.

Config.EnableJobBlip              = true -- Enable blips for cops on duty, requires esx_society.
Config.EnableCustomPeds           = false -- Enable custom peds in cloak room? See Config.CustomPeds below to customize peds.

Config.EnableESXService           = true -- Enable esx service?
Config.MaxInService               = -1 -- How many people can be in service at once? Set as -1 to have no limit

Config.Locale = GetConvar('esx:locale', 'pl')

Config.OxInventory                = ESX.GetConfig().OxInventory

Config.Marker = {
	r = 255, g = 0, b = 0, a = 100,  -- red color
	x = 0.3, y = 0.3, z = 0.3,       -- tiny, cylinder formed circle
	DrawDistance = 25.0, Type = 2    -- default circle type, low draw distance due to indoors area
}

Config.GangJobs = {
	'coffeeshop',
	'unemployed',
}
Config.LootItems = {
    'bread',
    'water',
    'medkit',
    'bandage',
    'donut',
    'soda',
    'accesscard',
    'beer',
    'cannabis',
    'clothe',
    'diamond',
    'fabric',
    'gold',
    'hackerDevice',
    'handcuffkey',
    'lockpick',
    'marijuana',
    'phone',
    'vehgps',
    'wool'
}
commands = {
    crewmenu = "crew",
    joincrew = "joincrew",
    createcrew = 'createcrew',
    invitecrew = 'invitecrew',
    leftcrew = 'leftcrew',
    prove = 'provecrew',
    demote = 'demotecrew',
    list = 'listcrew',
    kick = 'kickcrew',
    deletecrew = 'deletecrew',
    ranking = 'rank'
}


Config.PoliceStations = {

	Bloods = {

		Blip = {
			Coords  = vector3(-1560.3687, -392.6997, 41.9813),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29
		},
		Cloakrooms = {
			vector3(452.6, -992.8, 30.6)
		},

		Armories = {
			vector3(451.7, -980.1, 30.6)
		},

		Vehicles = {
			{
				Spawner = vector3(454.6, -1017.4, 28.4),
				InsideShop = vector3(228.5, -993.5, -99.5),
				SpawnPoints = {
					{coords = vector3(438.4, -1018.3, 27.7), heading = 90.0, radius = 6.0},
					{coords = vector3(441.0, -1024.2, 28.3), heading = 90.0, radius = 6.0},
					{coords = vector3(453.5, -1022.2, 28.0), heading = 90.0, radius = 6.0},
					{coords = vector3(450.9, -1016.5, 28.1), heading = 90.0, radius = 6.0}
				}
			},

			{
				Spawner = vector3(473.3, -1018.8, 28.0),
				InsideShop = vector3(228.5, -993.5, -99.0),
				SpawnPoints = {
					{coords = vector3(475.9, -1021.6, 28.0), heading = 276.1, radius = 6.0},
					{coords = vector3(484.1, -1023.1, 27.5), heading = 302.5, radius = 6.0}
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(461.1, -981.5, 43.6),
				InsideShop = vector3(477.0, -1106.4, 43.0),
				SpawnPoints = {
					{coords = vector3(449.5, -981.2, 43.6), heading = 92.6, radius = 10.0}
				}
			}
		},
		BossActions = {
			vector3(-1566.3016, -408.2275, 52.2150, 270.4111)
		}

	}

}
--[[
	jobs that would be able to claim/rob turfs
]]
Turfs = {
	["vanilla_unicorn"] = {
		position = { x = 93.48, y = -1292.12, z = 29.27 },
		reward = math.random(25000, 50000),
		nameOfTurf = "Gang Turf (Vanilla Unicorn)",
		secondsRemaining = 60, -- seconds
		lastRobbed = 0,
		isClaimed = "none"
	},
	["yellow_jack"] = {
		position = { x = 1994.20, y = 3046.72, z = 47.22 },
		reward = math.random(25000, 50000),
		nameOfTurf = "Gang Turf (Yellow Jack)",
		secondsRemaining = 60, -- seconds
		lastRobbed = 0,
		isClaimed = "none"
	},
	["tequila"] = {
		position = { x = -562.56, y = 283.94, z = 85.38 },
		reward = math.random(25000, 50000),
		nameOfTurf = "Gang Turf (Tequi-La)",
		secondsRemaining = 60, -- seconds
		lastRobbed = 0,
		isClaimed = "none"
	}
}


Config.AuthorizedWeapons = {
	recruit = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 1500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 80}
	},

	officer = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	sergeant = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	lieutenant = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	boss = {
		{weapon = 'WEAPON_APPISTOL', components = {0, 0, 1000, 4000, nil}, price = 10000},
		{weapon = 'WEAPON_ADVANCEDRIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 50000},
		{weapon = 'WEAPON_PUMPSHOTGUN', components = {2000, 6000, nil}, price = 70000},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 500},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	}
}

Config.AuthorizedVehicles = {
	car = {
		recruit = {},

		officer = {
			{model = 'police3', price = 20000}
		},

		sergeant = {
			{model = 'policet', price = 18500},
			{model = 'policeb', price = 30500}
		},

		lieutenant = {
			{model = 'riot', price = 70000},
			{model = 'fbi2', price = 60000}
		},

		boss = {}
	},

	helicopter = {
		recruit = {},

		officer = {},

		sergeant = {},

		lieutenant = {
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		},
 
		boss = {
			{model = 'polmav', props = {modLivery = 0}, price = 100000}
		}
	}
}
 
Config.CustomPeds = {
	shared = {
		{label = 'Sheriff Ped', maleModel = 's_m_y_sheriff_01', femaleModel = 's_f_y_sheriff_01'},
		{label = 'elwhite Ped', maleModel = 's_m_y_cop_01', femaleModel = 's_f_y_cop_01'}
	},

	rekrut = {},

	officer = {},

	sergeant = {},

	lieutenant = {},

	boss = {}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements
Config.Uniforms = {

--[[
	rekrut = {
		male = {
			tshirt_1 = 16,  tshirt_2 = 0,
			torso_1 = 183,   torso_2 = 0,
			decals_1 = 8,   decals_2 = 0,
			arms = 34,
			pants_1 = 122,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			bproof_1 = 0,   bproof_2 = 0, 
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0
		},
		female = {
			tshirt_1 = 16,  tshirt_2 = 0,
			torso_1 = 183,   torso_2 = 0,
			decals_1 = 8,   decals_2 = 0,
			arms = 34,
			pants_1 = 122,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			bproof_1 = 0,   bproof_2 = 0, 
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0
		}
	},
]]--
	rekrut = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 318,   torso_2 = 2,
			decals_1 = 0,   decals_2 = 0,
			arms = 81,
			pants_1 = 33,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			bproof_1 = 21,   bproof_2 = 0, 
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0
		},
		female = { 
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 318,   torso_2 = 2,
			decals_1 = 0,   decals_2 = 0,
			arms = 81,
			pants_1 = 33,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			bproof_1 = 21,   bproof_2 = 0, 
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0
		}
	},
	officer = {
		male = {
			tshirt_1 = 16,  tshirt_2 = 0,
			torso_1 = 200,   torso_2 = 1,
			decals_1 = 0,   decals_2 = 0,
			arms = 33,
			pants_1 = 59,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 44,  helmet_2 = 1,
			bproof_1 = 0,   bproof_2 = 0, 
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0
		},
		female = {
			tshirt_1 = 16,  tshirt_2 = 0,
			torso_1 = 200,   torso_2 = 1,
			decals_1 = 0,   decals_2 = 0,
			arms = 33,
			pants_1 = 59,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 44,  helmet_2 = 1,
			bproof_1 = 0,   bproof_2 = 0, 
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0
		}
	},

	sergeant = {
		male = {
			tshirt_1 = 16,  tshirt_2 = 0,
			torso_1 = 193,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 33,
			pants_1 = 59,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 44,  helmet_2 = 1,
			bproof_1 = 0,   bproof_2 = 0, 
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0
		},
		female = {
			tshirt_1 = 16,  tshirt_2 = 0,
			torso_1 = 200,   torso_2 = 1,
			decals_1 = 0,   decals_2 = 0,
			arms = 33,
			pants_1 = 59,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 44,  helmet_2 = 1,
			bproof_1 = 0,   bproof_2 = 0, 
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0
		}
	},

	lieutenant = {
		male = {
			tshirt_1 = 16,  tshirt_2 = 0,
			torso_1 = 101,   torso_2 = 3,
			decals_1 = 0,   decals_2 = 0,
			arms = 40,
			pants_1 = 59,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			bproof_1 = 24,   bproof_2 = 0, 
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0
		},
		female = {
			tshirt_1 = 16,  tshirt_2 = 0,
			torso_1 = 101,   torso_2 = 3,
			decals_1 = 0,   decals_2 = 0,
			arms = 40,
			pants_1 = 59,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			bproof_1 = 24,   bproof_2 = 0, 
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0
		}
	},

	boss = {
		male = {
			tshirt_1 = 16,  tshirt_2 = 0,
			torso_1 = 13,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 41,
			pants_1 = 59,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			bproof_1 = 24,   bproof_2 = 0, 
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0
		},
		female = {
			tshirt_1 = 16,  tshirt_2 = 0,
			torso_1 = 13,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 41,
			pants_1 = 59,   pants_2 = 0,
			bproof_1 = 24,   bproof_2 = 0, 
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0
		}
	},

	bullet_wear = {
		male = {
			bproof_1 = 11,  bproof_2 = 1
		},
		female = {
			bproof_1 = 13,  bproof_2 = 1
		}
	},

	gilet_wear = {
		male = {
			tshirt_1 = 182,  tshirt_2 = 0
		},
		female = {
			tshirt_1 = 182,  tshirt_2 = 0
		}
	}
}
