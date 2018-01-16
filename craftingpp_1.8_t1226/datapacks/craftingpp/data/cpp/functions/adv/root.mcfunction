#gamerule commandBlockOutput false
#gamerule sendCommandFeedback false
#gamerule logAdminCommands false
tellraw @s {"translate":"cpp.info.init.1"}
tellraw @s {"translate":"cpp.info.init.2"}
tellraw @s {"translate":"cpp.info.init.3","clickEvent":{"action":"open_url","value":"https://craftingpp.neocities.org"}}
tellraw @s {"translate":"cpp.info.init.4","clickEvent":{"action":"open_url","value":"http://www.mcbbs.net/home.php?mod=spacecp&ac=pm&touid=975525"}}
tellraw @s {"translate":"cpp.info.init.5"}
tellraw @s {"translate":"cpp.info.obtain_title","with":[{"selector":"@s"},"§a萌新"]}
team join cppAdvRoot @s
