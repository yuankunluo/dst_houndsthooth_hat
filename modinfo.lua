name 						= "Houndstooth Hat"
description 				= "Use Houndstooth to make a Helmet."
author 						= "ykl"
version 					= "0.1"
forumthread 				= ""
api_version 				= 10
priority 					= 0
dst_compatible 				= true
client_only_mod 			= false
all_clients_require_mod 	= true

icon_atlas 					= "images/modicon.xml"
icon 						= "images/modicon.tex"

server_filter_tags = {
"item",
}

configuration_options =
{
	{
		name = "HAT DUARBILITY",
		label = "Change the Durability",
		options =	{
						{description = "1800hp", data = 1},
						{description = "1050hp", data = 2},
					},
		default = 2,
	},
	name = "HAT ABOSORBATION",
		label = "Change Abosorbation Percetange",
		options =	{
						{description = "Absorb 70% Damage", data = 1},
						{description = "Absorb 95% Damage", data = 2},
					},
		default = 2,
}
