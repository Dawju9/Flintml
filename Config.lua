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

translate = {
    TR_CREATE_CREW = "You have successfully created a Crew.",
    TR_CANOT_NAME = "There is another Crew with this name.",
    TR_CANOT_CREATE = "You are already in a Crew.",
    TR_CANOT_CREATE2 = "You can use /exitcrew to exit the Crew and /deletecrew to delete the Crew.",
    TR_NOT_PERMISSION = "You do not have sufficient permissions for this action or you do not have a Crew.",
    TR_NOT_FOUND = "Player not found.",
    TR_HAS_CREW = "The player is already in a Crew",
    TR_RECEIVE_INVITE = "You have received a Crew invitation.",
    TR_RECEIVE_INVITE2 = "You can join the Crew using the /joincrew command.",
    TR_SEND_INVITE = "Invitation sent.",
    TR_HAS_CREW2 = "You already have a Crew.",
    TR_NOT_HAS = "You are not in any Crew.",
    TR_EXIT = 'You left the Crew.',
    TR_DONT_EXIT = "You cannot leave a Crew you are the leader of.",
    TR_DONT_EXIT2 = "If you want to delete the crew use the /deletecrew command.",
    TR_NOTIFY_DELETE = "The crew you are a member of has been deleted.",
    TR_NOT_PART = "The player is not part of your crew.", 
    TR_RECEIVE_PROVE = "Player rankup.",
    TR_RECEIVE_PROVE2 = "You got a promotion!",
    TR_RECEIVE_DEMOTE = "Player rank lowered.",
    TR_RECEIVE_DEMOTE2 = "Your rank has been lowered.",
    TR_KICK = "Player has been kicked from the crew.",
    TR_KICK2 = "You have been kicked out of your crew.",

    TR_CREWNAME = "Crew Name",
    TR_KILLS = "Kills",
    TR_CREATEDAT = "Creation date",
    TR_RANKMEMBERS = "Number of members",

    TR_NOT_COORDINATE = "You are not in the right place to use this.",

    TR_CREATE = "Create",
    TR_CREATE2 = "Create a new Crew.",
    TR_JOIN = "Join",
    TR_JOIN2 = "Join a Crew.",
    TR_INVITE = "Invitation",
    TR_INVITE2 = "Invite a member to your team.",
    TR_LEAVE = "Leave",
    TR_LEAVE2 = "Leave Crew.",
    TR_PROMOTE = "Rank Up",
    TR_PROMOTE2 = "Raise a member's rankup.",
    TR_DEMOTE = "Rank Down",
    TR_DEMOTE2 = "Rank Down a member.",
    TR_LIST = "List",
    TR_LIST2 = "Show Crew members.",
    TR_KICK_MENU = "Kick from Crew",
    TR_KICK_MENU2 = "Kick a member from the Crew.",
    TR_RANK = "Ranks",
    TR_RANK2 = "Crew rank."
}

Config.Marker = {
	r = 255, g = 0, b = 0, a = 100,  -- red color
	x = 0.3, y = 0.3, z = 0.3,       -- tiny, cylinder formed circle
	DrawDistance = 25.0, Type = 2    -- default circle type, low draw distance due to indoors area
}

Config.GangNumberRequired = 0
Config.TimerBeforeNewRob    = 600 -- The cooldown timer on a Turf after robbery was completed / canceled, in seconds

Config.MaxDistance    = 20   -- max distance from the robbery, going any longer away from it will to cancel the robbery
Config.GiveDirtyMoney = true -- give black money? If disabled it will give cash instead

--[[
	jobs that would be able to claim/rob turfs
]]
Config.GangJobs = {
	'coffeeshop',
	'unemployed',
}

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
