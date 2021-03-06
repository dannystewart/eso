local strings = {
	SI_BINDING_NAME_TB_TOGGLE_GUI	= "Fenêtre de trait",
	TB_KNOWN						= "Connu par",
	TB_BEING_RESEARCHED				= "En cours de recherche par",
	TB_COULD_RESEARCH				= "Peut être recherché par",
	TB_YOU_KNOW						= "Le personnage connaît ce trait",
	TB_YOU_ARE_RESEARCHING			= "Le personnage recherche ce trait",
	TB_YOU_COULD_RESEARCH			= "Le personnage peut rechercher ce trait",
	TB_ESOPLUS						= "<<1>> Mise à jour des temps de recherche du personnage.",
	TB_ESOPLUS_CHAT					= "<<1>> L'adhésion à ESO+ a changé. Se connecter aux autres personnages pour mettre à jour leurs temps de recherches.",
	TB_LINK_ACHIEVEMENT				= "Lien de succès",
	TB_MAIL_KNOWN					= "<<1>> traits connus",
	TB_MAIL_UNKNOWN					= "<<1>> traits inconnus",
	TB_MOTIF_ALMOST					= "Presque achevé",
	TB_SETS							= "Sets d'artisanat",

	--Options
	TB_OP_RELOAD					= "Ce paramètre nécessite un rechargement de l'interface utilisateur pour être appliqué",
	TB_OP_HEADING1					= "Affichage des infobulles",
	TB_OP_HEADING2					= "Apparence des infobulles",
	TB_OP_HEADING3					= "Divers",
	TB_OP_HEADING4					= "Gestion des personnages",
	TB_OP_HEADING5					= "Apparence des marqueurs",
	TB_OP_HEADING6					= "Affichage des icônes de trait",
	TB_OP_KNOWN						= "Afficher les traits connus",
	TB_OP_KNOWN_TT					= "Affiche les traits connus dans l'infobulle.",
	TB_OP_KNOWN_COLOUR				= "Couleur des traits connus",
	TB_OP_KNOWN_COLOUR_TT			= "Détermine la couleur d'affichage des traits connus.",
	TB_OP_RESEARCHING				= "Afficher les traits en cours de recherche",
	TB_OP_RESEARCHING_TT			= "Affiche les traits en cours de recherche  par le personnage dans l'infobulle.",
	TB_OP_RESEARCHING_COLOUR		= "Couleur des traits en cours de recherche",
	TB_OP_RESEARCHING_COLOUR_TT		= "Détermine la couleur d'affichage des traits en cours de recherche par le personnage.",
	TB_OP_CANRESEARCH				= "Afficher les traits inconnus",
	TB_OP_CANRESEARCH_TT			= "Affiche les traits pouvant être recherchés par le personnage dans l'infobulle.",
	TB_OP_CANRESEARCH_COLOUR		= "Couleur des traits inconnus",
	TB_OP_CANRESEARCH_COLOUR_TT		= "Détermine la couleur d'affichage des traits pouvant être recherchés.",
	TB_OP_YOUKNOW					= "Afficher le résumé",
	TB_OP_YOUKNOW_TT				= "Affiche une ligne récapitulative en bas de la section de recherche de trait de l'infobulle.",
	TB_OP_BAG						= "Inventaire",
	TB_OP_BAG_TT					= "Active les informations de traits dans l'infobulle des fenêtres d'inventaire et de banque.",
	TB_OP_LOOT						= "Butin",
	TB_OP_LOOT_TT					= "Active les informations de traits dans l'infobulle de la fenêtre de butin.",
	TB_OP_MAIL						= "Courrier",
	TB_OP_MAIL_TT					= "Active les informations de traits dans l'infobulle de la fenêtre de courrier.",
	TB_OP_BUYBACK					= "Rachat",
	TB_OP_BUYBACK_TT				= "Active les informations de traits dans l'infobulle de la fenêtre de rachat.",
	TB_OP_TRADE						= "Commerce",
	TB_OP_TRADE_TT					= "Active les informations de traits dans l'infobulle de la fenêtre de commerce.",
	TB_OP_TRADINGHOUSE				= "Magasin de guilde",
	TB_OP_TRADINGHOUSE_TT			= "Active les informations de traits dans l'infobulle de la fenêtre de magasin de guilde.",
	TB_OP_CHAT						= "Discussion rapide",
	TB_OP_CHAT_TT					= "Active les informations de traits dans l'infobulle de la fenêtre de discussion rapide.",
	TB_OP_SELECTION					= "Activer la sélection alternative des personnages",
	TB_OP_SELECTION_TT				= "Permet d'utiliser  des icônes plutôt que le menu déroulant pour sélectionner les autres personnages du compte.",
	TB_OP_QUEST						= "Récompenses de quête",
	TB_OP_QUEST_TT					= "Active les informations de traits dans l'infobulle de la fenêtre de récompenses de quête.",
	TB_OP_CRAFTING					= "Artisanat",
	TB_OP_CRAFTING_TT				= "Active les informations de traits dans l'infobulle de la fenêtre d'artisanat.",
	TB_OP_INCLUSION					= "Détermine quels sont les personnages gérés par l'extension.",
	TB_OP_WORN						= "Équipement",
	TB_OP_WORN_TT					= "Active les informations de traits dans l'infobulle de la fenêtre d'équipement.",
	TB_OP_UI_KNOW_COLOUR			= "Couleur de la coche de trait connu",
	TB_OP_UI_KNOW_COLOUR_TT			= "Détermine la couleur utilisée pour l'affichage de la coche de trait connu.",
	TB_OP_UI_RESEARCHING_COLOUR		= "Couleur du sablier de trait en cours de recherche",
	TB_OP_UI_RESEARCHING_COLOUR_TT	= "Détermine la couleur utilisée pour l'affichage du sablier de trait en cours de recherche.",
	TB_OP_UI_OTHERS_KNOW_COLOUR		= "Couleur de la coche de trait connu par d'autres",
	TB_OP_UI_OTHERS_KNOW_COLOUR_TT	= "Détermine la couleur utilisée pour l'affichage de la coche de trait connu par d'autres personnages.",
	TB_OP_UI_OTHERS_RES_COLOUR		= "Couleur du sablier de trait recherché par d'autres",
	TB_OP_UI_OTHERS_RES_COLOUR_TT	= "Détermine la couleur utilisée pour l'affichage du sablier de trait en cours de recherche par d'autres personnages.",
	TB_OP_UI_NOTKNOWN_COLOUR		= "Couleur de la croix de trait inconnu",
	TB_OP_UI_NOTKNOWN_COLOUR_TT		= "Détermine la couleur utilisée pour l'affichage de la croix de trait inconnu.",
	TB_OP_DELETE_TT					= "Supprimer les données <<1>> pour <<2>>",
	TB_OP_ESOPLUS					= "Activer l'alerte d'expiration de l'abonnement à ESO+",
	TB_OP_ESOPLUS_TT				= "Affiche une alerte lorsque l'adhésion à ESO+ expire car cela affecte les temps de recherche.",
	TB_OP_TITLE						= "Afficher le trait",
	TB_OP_TITLE_TT					= "Affiche le type de l'objet et son trait dans l'infobulle.",
	TB_OP_LAUNCH1					= "Afficher le raccourci dans les stations d'artisanat",
	TB_OP_LAUNCH2					= "Afficher le raccourci dans l'écran de compétences",
	TB_OP_LAUNCH3					= "Afficher le raccourci dans le magasin de guilde",
	TB_OP_TIDY						= "Supprimer les données des anciens personnages",
	TB_OP_TIDY_TT					= "Supprime automatiquement les données des personnages qui ont été effacés du compte.",
	TB_OP_ADDON1					= "Utiliser l'extension Inventory Insight",
	TB_OP_ADDON1_TT					= "Affiche un résumé qui utilise les données fournies par l'extension Inventory Insight. Peut provoquer des ralentissements.",
	TB_OP_INV_BAG_TT				= "Affiche l'icône dans l'inventaire.",
	TB_OP_INV_BANK_TT				= "Affiche l'icône dans l'inventaire de banque.",
	TB_OP_INV_OTHER					= "Couleur de l'icône de trait inconnu par un autre",
	TB_OP_INV_OTHER_TT				= "Détermine  la couleur de l'icône utilisée lorsque le trait peut être étudié par un autre personnage.",
	TB_OP_COMPLETE					= "Activer l'alerte de recherche terminée",
	TB_OP_COMPLETE_TT				= "Affiche un message personnalisé lorsque la recherche d'un trait se termine.",
	TB_OP_IGV_ONTOP					= "Positionner l'icône en haut en vue grille",
	TB_OP_IGV_ONTOP_TT				= "Positionne l'icône d'inventaire au-dessus de l'objet en vue grille lorsque l'extension Inventory Grid View est installée.",
	TB_OP_MOTIFLOC					= "Montrer emplacement de motif",
	TB_OP_MOTIFLOC_TT				= "Afficher où vous pouvez trouver les motifs sur l'info-bulle de motif",
	TB_OP_GAME_ICON					= "Utiliser l'icône du jeu",
	TB_OP_GAME_ICON_TT				= "Utiliser l'icône de recherche de l'ESO ajoutée avec Clockwork City",
}

if GetString(SI_BINDING_NAME_TB_TOGGLE_GUI):len() == 0 then
	for key,value in pairs(strings) do
		SafeAddVersion(key, 1)
		ZO_CreateStringId(key, value)
	end
end