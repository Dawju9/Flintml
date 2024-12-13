fx_version 'cerulean'
games {'gta5'}
lua54 'yes'
 
name 'Gang'
author 'Heri'
description 'Blipy pod gangi uliczne'
url 'http://erfanebrahimi.ir'
version '0.0.3.4'

server_scripts {
	'locales/en.lua',
	'@mysql-async/lib/MySQL.lua',
	'server/main.lua',
	'config.lua',
	'BaseFunction.lua'
}

client_scripts {
	'shared/locale.lua',
	'client/main.lua',
	'config.lua',
	'BaseFunction.lua',
	'locales/en.lua'
}

export 'isOwnGangVehicle'

server_exports {
}

dependencies {
	'mysql-async',
	'async'
}
