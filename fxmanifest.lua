fx_version 'cerulean'
games {'gta5'}
lua54 'yes'
 
name 'Gang'
author 'White'
description ' Whit pod gangi uliczne'
url 'http://erfanebrahimi.ir'
version '0.0.3.4'

legacyversion '1.9.1'
shared_script '@es_extended/imports.lua'
server_scripts {
	'locales/en.lua',
	'@oxmysql/lib/MySQL.lua',
	'@es_extended/locale.lua',
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
	'locales/*.lua',
	'locales/en.lua'
	'locales/*.lua',
}
 
export 'isOwnGangVehicle'

server_exports {
}

dependencies {
	'mysql-async',
	'async',
	'esx_billing',
	'esx_vehicleshop'
}
