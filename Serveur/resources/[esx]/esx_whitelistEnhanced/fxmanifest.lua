fx_version 'adamant'

game 'gta5'

description 'ESX Whitelist Enhanced'

version '1.3.0'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/en.lua',
	'locales/fi.lua',
	'locales/fr.lua',
	'locales/it.lua',
	'locales/pl.lua',
	'config.lua',
	'server/main.lua'
}

client_script 'client/main.lua'

dependencies {
	'es_extended',
	'mysql-async'
}
