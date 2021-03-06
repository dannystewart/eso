local strings = {
	SI_BINDING_NAME_TB_TOGGLE_GUI	= "Toggle TraitBuddy",
	TB_KNOWN 						= "Known By",
	TB_BEING_RESEARCHED 			= "Being Researched By",
	TB_COULD_RESEARCH				= "Can Be Researched By",
	TB_YOU_KNOW						= "You know this trait",
	TB_YOU_ARE_RESEARCHING			= "You are researching this trait",
	TB_YOU_COULD_RESEARCH			= "You could research this trait",
	TB_ESOPLUS						= "<<1>> Update character research times",
	TB_ESOPLUS_CHAT					= "<<1>> Your ESO Plus membership has changed, log on to your other characters to update their research times",
	TB_LINK_ACHIEVEMENT				= "Link Achievement",
	TB_MAIL_KNOWN					= "Known <<1>> traits",
	TB_MAIL_UNKNOWN					= "Unknown <<1>> traits",
	TB_MOTIF_ALMOST					= "Almost complete",
	TB_SETS							= "Crafted Sets",
	
	--Options
	TB_OP_RELOAD					= "Needs a UI reload /reloadui",
	TB_OP_HEADING1 					= "Which Tooltips",
	TB_OP_HEADING2 					= "Tooltip Appearance",
	TB_OP_HEADING3					= "Other",
	TB_OP_HEADING4					= "Character Management",
	TB_OP_HEADING5					= "Appearance",
	TB_OP_HEADING6					= "Inventory Icon",
	TB_OP_KNOWN						= "Known by section",
	TB_OP_KNOWN_TT					= "Show the known by section",
	TB_OP_KNOWN_COLOUR				= "Known by section colour",
	TB_OP_KNOWN_COLOUR_TT			= "Colour of the known by section",
	TB_OP_RESEARCHING				= "Being reseached by section",
	TB_OP_RESEARCHING_TT			= "Show the being reseached by section",
	TB_OP_RESEARCHING_COLOUR		= "Being reseached by section colour",
	TB_OP_RESEARCHING_COLOUR_TT		= "Colour of the being reseached by section",
	TB_OP_CANRESEARCH				= "Can be researched by section",
	TB_OP_CANRESEARCH_TT			= "Show the can be researched by section",
	TB_OP_CANRESEARCH_COLOUR		= "Can be researched by section colour",
	TB_OP_CANRESEARCH_COLOUR_TT		= "Colour of the can be researched by section",
	TB_OP_YOUKNOW					= "Summary section",
	TB_OP_YOUKNOW_TT				= "Show the summary section at the bottom of the item",
	TB_OP_BAG						= "Bag",
	TB_OP_BAG_TT					= "Extend the bag tooltip. This is used in a lot of places including inventory and bank",
	TB_OP_LOOT						= "Loot",
	TB_OP_LOOT_TT					= "Extend the loot tooltip",
	TB_OP_MAIL						= "Mail",
	TB_OP_MAIL_TT					= "Extend the mail tooltip",
	TB_OP_BUYBACK					= "Buyback",
	TB_OP_BUYBACK_TT				= "Extend the buyback tooltip",
	TB_OP_TRADE						= "Trade",
	TB_OP_TRADE_TT					= "Extend the trade tooltip",
	TB_OP_TRADINGHOUSE				= "Guild Store",
	TB_OP_TRADINGHOUSE_TT			= "Extend the guild store tooltip",
	TB_OP_CHAT						= "Links in chat",
	TB_OP_CHAT_TT					= "Extend the links in chat tooltip",
	TB_OP_SELECTION					= "Alternative character selection",
	TB_OP_SELECTION_TT				= "Use a dropdown or icons to select your alts",
	TB_OP_QUEST						= "Quest rewards",
	TB_OP_QUEST_TT					= "Extend the quest rewards tooltip",
	TB_OP_CRAFTING					= "Crafting",
	TB_OP_CRAFTING_TT				= "Extend the crafting item creation tooltip",
	TB_OP_INCLUSION					= "Show these characters in TraitBuddy",
	TB_OP_WORN						= "Equipped",
	TB_OP_WORN_TT					= "Extend the equipped items tooltip",
	TB_OP_UI_KNOW_COLOUR			= "Known tick colour",
	TB_OP_UI_KNOW_COLOUR_TT			= "Colour of the known tick",
	TB_OP_UI_RESEARCHING_COLOUR		= "Researching hourglass colour",
	TB_OP_UI_RESEARCHING_COLOUR_TT	= "Colour of the researching hourglass",
	TB_OP_UI_OTHERS_KNOW_COLOUR		= "Others know tick colour",
	TB_OP_UI_OTHERS_KNOW_COLOUR_TT	= "Colour of the others know tick",
	TB_OP_UI_OTHERS_RES_COLOUR		= "Others researching hourglass colour",
	TB_OP_UI_OTHERS_RES_COLOUR_TT	= "Colour of the others researching hourglass",
	TB_OP_UI_NOTKNOWN_COLOUR		= "Not known cross colour",
	TB_OP_UI_NOTKNOWN_COLOUR_TT		= "Colour of the not known cross",
	TB_OP_DELETE_TT					= "Delete <<1>> data for <<2>>",
	TB_OP_ESOPLUS					= "Message when ESO Plus membership changes",
	TB_OP_ESOPLUS_TT				= "ESO Plus membership affects your research times",
	TB_OP_TITLE						= "Show title",
	TB_OP_TITLE_TT					= "Show the item type and trait type on the tooltip",
	TB_OP_LAUNCH1					= "Show launch button on crafting stations",
	TB_OP_LAUNCH2					= "Show launch button on skills screen",
	TB_OP_LAUNCH3					= "Show launch button on guild store screen",
	TB_OP_TIDY						= "Automatically tidy up old character data",
	TB_OP_TIDY_TT					= "Automatically delete TraitBuddy data for characters that no longer exist",
	TB_OP_ADDON1					= "Inventory Insight Addon",
	TB_OP_ADDON1_TT					= "Show a summary using Inventory Insight addon data on the tooltip. If installed. Can be slow.",
	TB_OP_INV_BAG_TT				= "Show icon in bag inventory",
	TB_OP_INV_BANK_TT				= "Show icon in bank inventory",
	TB_OP_INV_OTHER					= "Another character can learn",
	TB_OP_INV_OTHER_TT				= "Icon colour in the inventory when another character could learn the trait or motif",
	TB_OP_COMPLETE					= "Message when research completes",
	TB_OP_COMPLETE_TT				= "Custom TraitBuddy message when a trait is researched on current character",
	TB_OP_IGV_ONTOP					= "Inventory Grid View - Draw icon on top",
	TB_OP_IGV_ONTOP_TT				= "Draw inventory icon on top when using Inventory Grid View addon",
	TB_OP_MOTIFLOC					= "Show motif location",
	TB_OP_MOTIFLOC_TT				= "Show where you can find the motifs on the motif tooltip",
	TB_OP_GAME_ICON					= "Use game icon",
	TB_OP_GAME_ICON_TT				= "Use ESO's research icon added with Clockwork City",
}

if GetString(SI_BINDING_NAME_TB_TOGGLE_GUI):len() == 0 then
	for key,value in pairs(strings) do
		SafeAddVersion(key, 1)
		ZO_CreateStringId(key, value)
	end
end