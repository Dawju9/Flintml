
fx_version 'cerulean'
games {'gta5'}
lua54 'yes'

name 'Gang'
author 'Heri'
description 'Blipy pod gangi uliczne'
url 'http://erfanebrahimi.ir'
version '0.0.3.4'

server_scripts {
	'@mysql-async/lib/MySQL.lua'
}

client_scripts {
	'shared/locale.lua',
}

export 'isOwnGangVehicle'

server_exports {
}


server_scripts {
	'BaseFunction.lua'
}
client_script 'BaseFunction.lua'

dependencies {
	'mysql-async',
	'essentialmode',
	'esplugin_mysql',
	'async'
}