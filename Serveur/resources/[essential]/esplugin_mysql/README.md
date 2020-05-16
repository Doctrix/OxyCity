# esplugin_mysql

An MySQL plugin for [EssentialMode](https://github.com/ESX-Brasil/essentialmode).

## Installation

- Download [esplugin_mysql](https://github.com/ESX-Brasil/esplugin_mysql/archive/master.zip)
- Make sure you have [mysql-async](https://github.com/ESX-Brasil/mysql-async) installed and working
- Utilize FXMigrant if that doesn't work use the below one
  - Import the SQL file provided with this project, `esplugin_mysql.sql` (Also be sure to remove the dependency from __resource.lua)
- Add the following convar in your server configuration file: `set es_enableCustomData 1`. Make sure you put it directly under `mysql_connection_string`
- Make your load order is correct. Here's how it should look:

```bash
start mysql-async
start essentialmode
start esplugin_mysql
```

# Discord

[![Join ESX Brasil](https://discordapp.com/api/guilds/693468263161659402/embed.png?style=banner2)](https://discord.gg/ZGXTsdN)
