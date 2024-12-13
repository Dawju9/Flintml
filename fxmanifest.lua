fx_version 'bodacious'
games {'gta5'}
lua54 'yes'


name 'Gang'
description 'ESX Identity'
author 'Erfan Ebrahimi'
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
dependencies {
	'mysql-async',
	'async',
	'esx_billing',
	'esx_vehicleshop'
}
