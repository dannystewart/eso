RA_Strings = {
    ["en"] = {
        SETTINGS = {
            GENERAL_HEADER = "General Options",
            COLORS_HEADER = "Color Options",
            HIDDEN_HEADER = "Hide Icon Options",
            CHARACTER_HEADER = "Tracked Character Options",

            ICON_LABEL = "Research icon",
            ICON_TOOLTIP = "Choose which icon to display as your research assistant.",

            ICON_SIZE = "Icon size",
            ICON_SIZE_TOOLTIP = "Choose the size of the research icon",

            ICON_OFFSET = "Icon position",
            ICON_OFFSET_TOOLTIP = "Choose the position of the research icon on the X-axis of inventories",
            SEPARATE_LW_LABEL = "Separate leatherworking from tailoring?",
            SEPARATE_LW_TOOLTIP = "Do you want to track medium armor and light armor research for separate characters?",

            SEPARATE_SMITH_LABEL = "Separate weaponsmithing from blacksmithing?",
            SEPARATE_SMITH_TOOLTIP = "Do you want to track weaponsmithing and armorsmithing research for separate characters?",

            RESEARCHABLE_LABEL = "Researchable trait color",
            RESEARCHABLE_TOOLTIP = "What color should the research assistant icon be if the trait is researchable?",

            DUPLICATE_LABEL = "Duplicate researchable trait color",
            DUPLICATE_TOOLTIP = "What color should the research assistant icon be if the item is researchable but there is a better candidate for research?",

            RESEARCHED_LABEL = "Already researched color",
            RESEARCHED_TOOLTIP = "What color should the research assistant icon be if the item is already researched?",

            ORNATE_LABEL = "Ornate item color",
            ORNATE_TOOLTIP = "What color should the icon be for an ornate item?",

            INTRICATE_LABEL = "Intricate item color",
            INTRICATE_TOOLTIP = "What color should the icon be for an intricate item?",

            SHOW_RESEARCHED_LABEL = "Show researched icon?",
            SHOW_RESEARCHED_TOOLTIP = "Should the icon show up for traits that you know?",

            SHOW_TRAITLESS_LABEL = "Show researched icon on traitless?",
            SHOW_TRAITLESS_TOOLTIP = "Should the icon show up for traitless equipment?",

            SHOW_ORNATE_LABEL = "Always show Ornate?",
            SHOW_ORNATE_TOOLTIP = "Should Ornate be shown for untracked skills?",

            SHOW_INTRICATE_LABEL = "Always show Intricate?",
            SHOW_INTRICATE_TOOLTIP = "Should Intricate be shown for untracked skills?",

            SHOW_TOOLTIPS_LABEL = "Show icon tooltips?",
            SHOW_TOOLTIPS_TOOLTIP = "Should tooltips tell you what they are? (recommended OFF)",

            SHOW_IN_GRID_LABEL = "Show in Grid View?",
            SHOW_IN_GRID_TOOLTIP = "Should the research assistant icon show up with Inventory Grid View toggled on? (Ignore this if you don't use Inventory Grid View)",

            WS_CHAR_LABEL = "Weaponsmithing Character",
            WS_CHAR_TOOLTIP = "Which character is your weaponsmithing character?\n\'-\' means: None",

            BS_CHAR_LABEL = "Blacksmithing Character",
            BS_CHAR_TOOLTIP = "Which character is your blacksmithing character?\n\'-\' means: None",

            LW_CHAR_LABEL = "Leatherworking Character",
            LW_CHAR_TOOLTIP = "Which character is your leatherworking character?\n\'-\' means: None",

            CL_CHAR_LABEL = "Clothier Character",
            CL_CHAR_TOOLTIP = "Which character is your clothier character?\n\'-\' means: None",

            WW_CHAR_LABEL = "Woodworking Character",
            WW_CHAR_TOOLTIP = "Which character is your woodworking character?\n\'-\' means: None",

            JC_CHAR_LABEL = "Jewelry crafting Character",
            JC_CHAR_TOOLTIP = "Which character is your jewelry crafting character?\n\'-\' means: None",

            USE_ACCOUNTWIDE_RESEARCH_CHARS      = "Account-wide same research characters",
            USE_ACCOUNTWIDE_RESEARCH_CHARS_TT   = "Attention: Change of this option will reload the UI directly!\n\nWith this option enabled all your characters of the current acocunt will use the same research characters for each crafting type (default setting).\nWith this option disabled you can specify different research characters for each crafting type at each of your characters.",
            ALLOW_NO_CHARACTER_CHOSEN_FOR_RESEARCH      = "No warning w/o research character selected",
            ALLOW_NO_CHARACTER_CHOSEN_FOR_RESEARCH_TT   = "Do not sbow a warning dialog if you have chosen no character for research of any crafting type.",
            USE_CURRENT_LOGGED_IN_CHAR_FOR_RESEARCH     = "Use logged in char for all researches",
            USE_CURRENT_LOGGED_IN_CHAR_FOR_RESEARCH_TT  = "Use the currently logged in character for all researches and crafting types.\n\nOnly works if the 'account-wide same research characters' setting is disabled!",

            PROTECTION                  = "Protection",
            SKIP_ZOS_MARKED             = "Skip ZOs marked",
            SKIP_ZOS_MARKED_TOOLTIP     = "Skip items at the researchable scans and Research Assistant markers if the item is marked with the ZOs lock icon.",
            SKIP_FCOIS_MARKED           = "Skip FCOItemSaver marked",
            SKIP_FCOIS_MARKED_TOOLTIP   = "Skip items at the researchable scans and Research Assistant markers if the item is marked with the FCOIS icons.\nExclusion: The research marker icon of FCOIS is allowed!",
            SKIP_SETS                   = "Skip set items",
            SKIP_SETS_TOOLTIP           = "Skip items which belong to a set and do not mark them with any ResearchAssistant",
            SKIP_SETS_ONLY_MAX_LEVEL    = "Skip sets: Max level only",
            SKIP_SETS_ONLY_MAX_LEVEL_TOOLTIP = "Skip the set items with the maximum level and CPs only, and mark lower levels for research.",

            ERROR_CONFIGURE_ADDON = "Please configure the addon, choose a research character in the settings!",
            ERROR_LOGIN_ALL_CHARS = "Login all your characters to read their research data.",

            HIDE_VANILLA_UI_RESEARCHABLE_TEXTURE = "Hide ZOs vanilla UI researchable texture",
            HIDE_VANILLA_UI_RESEARCHABLE_TEXTURE_TOOLTIP = "Hide the ZOs vanilla UI researchable texture at the inventory rows",

            SHOW_ICON_EVEN_IF_PROTECTED = "Show research icon if protected",
            SHOW_ICON_EVEN_IF_PROTECTED_TOOLTIP = "Always show the research icon, even though the item is protected. This way you are able to see the icon and it's tooltips. Research Assistants does not count these protected items as researchable!\n\nThis icon will respect the other settings like e.g. \'Show researched icon?\': If this is disabled and the item's trait was researched already the research assistant icon wont show!",
            SHOW_ICON_EVEN_IF_PROTECTED_EXCLUDE_NON_TRACKED = "Exclude non tracked",
            SHOW_ICON_EVEN_IF_PROTECTED_EXCLUDE_NON_TRACKED_TOOLTIP = "Do not show the protected icon if the crafting is not tracked",

            SETTINGS_HEADER_TOOLTIPS = GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKSUBCATEGORIES1306),
            SHOW_TYPE_IN_TOOLTIP = "Show type in tooltip",
            SHOW_TYPE_IN_TOOLTIP_TOOLTIP = "Show the armor/weapon type in the tooltip text",
            SHOW_ARMORWEIGHT_IN_TOOLTIP = "Show armor weight in tooltip",
            SHOW_ARMORWEIGHT_IN_TOOLTIP_TOOLTIP = "Show the armor weight (light, medium, heavy) in the tooltip text",
            SETTINGS_HEADER_VANILLAUI = "Vanilla UI",
        },
        TOOLTIPS = {
            knownBy = " \'%s\', known by:\n",
            protected = "-|cFF0000PROTECTED|r-",
            ornate = GetString(SI_ITEMTRAITTYPE10),
            intricate = GetString(SI_ITEMTRAITTYPE9),
            duplicate = "[Researcher: %s]\nDuplicate%s",
            canResearch = "[Researcher: %s]\nUnknown%s",
            alreadyResearched = "[Researcher: %s]\n"..GetString(SI_TRADINGHOUSEFEATURECATEGORY3).."%s",
            notScannedWithNeededCharYet = "|cFF0000ERROR|r: Researcher [\'%s\'] was not logged in yet!",
            notTrackedCharName = "|cFFFFFF-Not tracked-|r",
        },
        armorLight = GetString(SI_VISUALARMORTYPE1),
        armorMedium = GetString(SI_VISUALARMORTYPE2),
        armorHeavy = GetString(SI_VISUALARMORTYPE3),

        weaponAxe = GetString(SI_WEAPONTYPE1),
        weaponHammer = GetString(SI_WEAPONTYPE2),
        weaponSword = GetString(SI_WEAPONTYPE3),
        weapon2hdSword = "2hd " .. GetString(SI_WEAPONTYPE4),
        weapon2hdAxe = "2hd " .. GetString(SI_WEAPONTYPE5),
        weapon2hdHammer = "2hd " .. GetString(SI_WEAPONTYPE6),
        weaponBow = GetString(SI_WEAPONTYPE8),
        weaponHealingStaff = GetString(SI_WEAPONTYPE9),
        weaponDagger = GetString(SI_WEAPONTYPE11),
        weaponFireStaff = GetString(SI_WEAPONTYPE12),
        weaponFrostStaff = GetString(SI_WEAPONTYPE13),
        weaponShield = GetString(SI_WEAPONTYPE14),
        weaponLightningStaff = GetString(SI_WEAPONTYPE15),

        equipHead = GetString(SI_EQUIPTYPE1),
        equipNeck = GetString(SI_EQUIPTYPE2),
        equipChest = GetString(SI_EQUIPTYPE3),
        equipShoulders = GetString(SI_EQUIPTYPE4),
        equipWaist = GetString(SI_EQUIPTYPE8),
        equipLegs = GetString(SI_EQUIPTYPE9),
        equipFeet = GetString(SI_EQUIPTYPE10),
        equipRing = GetString(SI_EQUIPTYPE12),
        equipHand = GetString(SI_EQUIPTYPE13),
    },
    ["de"] = {
        SETTINGS = {
            GENERAL_HEADER = "Allgemeine Einstellungen",
            COLORS_HEADER = "Farben",
            HIDDEN_HEADER = "Icon-Anzeige",
            CHARACTER_HEADER = "Handwerker-Charakter",

            ICON_LABEL = "Analyse-Icon",
            ICON_TOOLTIP = "Das Icon, das bei analysierbaren Gegenst??nden angezeigt wird",

            ICON_SIZE = "Icon Gr????e",
            ICON_SIZE_TOOLTIP = "W??hle die Gr????e des Analyse Icons",

            ICON_OFFSET = "Icon Position",
            ICON_OFFSET_TOOLTIP = "W??hle die Position des Analyse Icons auf der X-Achse der Inventare",
            SEPARATE_LW_LABEL = "Leder- und Stoffschneiderei trennen",
            SEPARATE_LW_TOOLTIP = "Sollen Leder- und Stoffschneiderei f??r zwei verschiedene Charakter verfolgt werden?",

            SEPARATE_SMITH_LABEL = "Waffen- und R??stungsschmiedekunst trennen",
            SEPARATE_SMITH_TOOLTIP = "Sollen Waffen- und R??stungsschmiedekunst f??r zwei verschiedene Charakter verfolgt werden?",

            RESEARCHABLE_LABEL = "Analysierbare Gegenst??nde",
            RESEARCHABLE_TOOLTIP = "Welche Farbe soll das Icon haben wenn ein Gegenstand analysierbar ist?",

            DUPLICATE_LABEL = "Doppelte Gegenst??nde",
            DUPLICATE_TOOLTIP = "Welche Farbe soll das Icon haben wenn ein Gegenstand analysierbar ist, aber ein besserer Kandidat f??r das Analysieren vorhanden ist?",

            RESEARCHED_LABEL = "Bekannte Gegenst??nde",
            RESEARCHED_TOOLTIP = "Welche Farbe soll das Icon haben wenn die Eigenschaft eines Gegenstands bereits analysiert wurde?",

            ORNATE_LABEL = "Hoher Verkaufspreis",
            ORNATE_TOOLTIP = "Welche Farbe soll das Icon haben wenn ein Gegenst??nde einen hohen Verkaufspreis erzielt?",

            INTRICATE_LABEL = "Gegenst??nde mit Inspiration",
            INTRICATE_TOOLTIP = "Welche Farbe soll das Icon haben wenn ein Gegenstand beim Verwerten extra Erfahrung gew??hrt?",

            SHOW_RESEARCHED_LABEL = "Analysierte Gegenst??nde",
            SHOW_RESEARCHED_TOOLTIP = "Sollen Icons f??r Gegenst??nde angezeigt werden, die bereits analysiert wurden?",

            SHOW_TRAITLESS_LABEL = "Gegenst??nde ohne Eigenschaften",
            SHOW_TRAITLESS_TOOLTIP = "Sollen Icons f??r Gegenst??nde angezeigt werden, die keine Eigenschaften besitzen?",

            SHOW_ORNATE_LABEL = "Hoher Verkaufspreis",
            SHOW_ORNATE_TOOLTIP = "Sollen Icons f??r Gegenst??nde mit hohem Verkaufspreis trotz deaktivierten Berufen angezeigt werden?",

            SHOW_INTRICATE_LABEL = "Inspiration",
            SHOW_INTRICATE_TOOLTIP = "Sollen Icons f??r Gegenst??nde, die beim Verwerten zus??tzliche Inspiration gew??hren, trotz deaktivierten Berufen angezeigt werden?",

            SHOW_TOOLTIPS_LABEL = "Tooltips verwenden",
            SHOW_TOOLTIPS_TOOLTIP = "Sollen erkl??rende Tooltips an den Icons angezeigt werden?",

            SHOW_IN_GRID_LABEL = "Inventory Grid View Plugin",
            SHOW_IN_GRID_TOOLTIP = "Sollen Icons auch bei Verwendung des Inventory Grid View Addons angezeigt werden?",

            WS_CHAR_LABEL = "Waffenschmiedekunst",
            WS_CHAR_TOOLTIP = "Welcher Charakter soll f??r die Waffenschmiedekunst verwendet werden?\n\'-\' bedeutet: Keiner",

            BS_CHAR_LABEL = "Schmiedekunst",
            BS_CHAR_TOOLTIP = "Welcher Charakter soll f??r die Schmiedekunst verwendet werden?\n\'-\' bedeutet: Keiner",

            CL_CHAR_LABEL = "Schneiderei",
            CL_CHAR_TOOLTIP = "Welcher Charakter soll f??r die Schneiderei verwendet werden?\n\'-\' bedeutet: Keiner",

            LW_CHAR_LABEL = "Lederschneiderei",
            LW_CHAR_TOOLTIP = "Welcher Charakter soll f??r die Lederschneiderei verwendet werden?\n\'-\' bedeutet: Keiner",

            WW_CHAR_LABEL = "Schreinerei",
            WW_CHAR_TOOLTIP = "Welcher Charakter soll f??r die Schreinerei verwendet werden?\n\'-\' bedeutet: Keiner",

            JC_CHAR_LABEL = "Schmuck Handwerk",
            JC_CHAR_TOOLTIP = "Welcher Charakter soll f??r das Schmuck Handwerk verwendet werden?\n\'-\' bedeutet: Keiner",

            USE_ACCOUNTWIDE_RESEARCH_CHARS      = "Account-weit Analyse Charaktere identisch",
            USE_ACCOUNTWIDE_RESEARCH_CHARS_TT   = "ACHTUNG: Ver??ndern dieser Option l??dt die Benutzeroberfl??che sofort neu!\n\nIst diese Option aktiviert so werden f??r diesen Account dieselben Analyse Charaktere f??r alle Handwerke benutzt (Standard Einstellung).\nDeaktivierst du diese Option so kannst du je Charakter deines Accounts unterschiedliche Analyse Charaktere je Handwerk festlegen.",
            USE_CURRENT_LOGGED_IN_CHAR_FOR_RESEARCH     = "Nutze eingeloggten User f??r alle Analysen",
            USE_CURRENT_LOGGED_IN_CHAR_FOR_RESEARCH_TT  = "Nutzt den aktuell eingeloggten Benutzer f??r alle Analysen aller Handwerke.\n\nFunktioniert nur wenn die 'Account-weit Analyse Charaktere identisch' Einstellung aus ist!",

            PROTECTION                  = "Schutz",
            SKIP_ZOS_MARKED             = "ZOs markierte ausschlie??en",
            SKIP_ZOS_MARKED_TOOLTIP     = "Schlie??t durch ZOs markierte (Schlo?? Symbol) Gegenst??nde von den Research Assistant Scan und Markierungen aus.",
            SKIP_FCOIS_MARKED           = "FCOItemSaver markierte ausschlie??en",
            SKIP_FCOIS_MARKED_TOOLTIP   = "Schlie??t durch FCOItemSaver markierte Gegenst??nde von den Research Assistant Scan und Markierungen aus.\nAu??name: Mit dem Analyse Symbol markierte werden ber??cksichtigt!",
            SKIP_SETS                   = "Set Gegenst??nde ausschlie??en",
            SKIP_SETS_TOOLTIP           = "Set Gegenst??nde mit keiner ResearchAssistant Markierung versehen.",
            SKIP_SETS_ONLY_MAX_LEVEL    = "Sets: Nur maximum Level",
            SKIP_SETS_ONLY_MAX_LEVEL_TOOLTIP = "Set Gegenst??nde werden nur dann nicht zur Analyse markiert, wenn diese das maximale Level & CPs besitzen. Niedrigere Level werden markiert.",

            ERROR_CONFIGURE_ADDON = "Bitte konfiguriere das AddOn, w??hle einen Analyse Charakter in den Einstellungen!",
            ERROR_LOGIN_ALL_CHARS = "Logge alle Charaktere ein, um ihre Analyse Daten einzulesen.",
            ALLOW_NO_CHARACTER_CHOSEN_FOR_RESEARCH      = "Keine Warnung ohne Analyse Char. gew??hlt",
            ALLOW_NO_CHARACTER_CHOSEN_FOR_RESEARCH_TT   = "Zeige keine Warnung beim Einloggen an, wenn nicht wenigstens ein Analyse Charakter f??r ein Handwerk ausgew??hlt wurde.",

            HIDE_VANILLA_UI_RESEARCHABLE_TEXTURE = "Verstecke ZOs analysierbar Symbol",
            HIDE_VANILLA_UI_RESEARCHABLE_TEXTURE_TOOLTIP = "Verstecke das ZOs Vanilla UI analysierbar Symbol in den Inventar Zeilen",

            SHOW_ICON_EVEN_IF_PROTECTED = "Analyse Symbol trotz Schutz anzeigen",
            SHOW_ICON_EVEN_IF_PROTECTED_TOOLTIP = "Das Analyse Symbol wird in der Inventarzeile immer angezeigt, auch wenn der Gegenstand gesch??tzt wird. Dadurch kann man z.B. den Tooltip auch weiterhin sehen. Der Gegenstand wird jedoch innerhalb von Research Assistant als \'gesch??tzt\' vermerkt und damit bei Analysen nicht ber??cksichtigt.\n\nDieses Symbol respektiert die anderen Einstellungen wie z.B. \'Analysierte Gegenst??nde\': D.h. wenn diese Einstellung deaktiviert ist und die Eigenschaft am Gegenstand bereits analysiert wurde, dann wird auch kein Symbol angezeigt!",
            SHOW_ICON_EVEN_IF_PROTECTED_EXCLUDE_NON_TRACKED = "Ausnahme: Nicht ??berwacht",
            SHOW_ICON_EVEN_IF_PROTECTED_EXCLUDE_NON_TRACKED_TOOLTIP = "Zeige kein Analyse Symbol wenn das Handwerk nicht ??berwacht wird",

            SETTINGS_HEADER_TOOLTIPS = GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKSUBCATEGORIES1306),
            SHOW_TYPE_IN_TOOLTIP = "Zeige Typ im Tooltip",
            SHOW_TYPE_IN_TOOLTIP_TOOLTIP = "Zeige den R??stungs-/Waffen-Typ im Tooltip Text an",
            SHOW_ARMORWEIGHT_IN_TOOLTIP = "Zeige R??stungs-Art im Tooltip",
            SHOW_ARMORWEIGHT_IN_TOOLTIP_TOOLTIP = "Zeige die R??stungs-Art (Leight, Mittel, Schwer) im Tooltip",
            SETTINGS_HEADER_VANILLAUI = "Vanilla UI",
        },
        TOOLTIPS = {
            knownBy = " \'%s\', bekannt bei:\n",
            protected = "-|cFF0000BESCH??TZT|r-",
            ornate = GetString(SI_ITEMTRAITTYPE10),
            intricate = GetString(SI_ITEMTRAITTYPE9),
            duplicate = "[Analysierer: %s]\nDoppelt%s",
            canResearch = "[Analysierer: %s]\nUnbekannt%s",
            alreadyResearched = "[Analysierer: %s]\n"..GetString(SI_TRADINGHOUSEFEATURECATEGORY3).."%s",
            notScannedWithNeededCharYet = "|cFF0000FEHLER|r: Analysierer [\'%s\'] wurde noch nicht eingeloggt!",
            notTrackedCharName = "|cFFFFFF-Nicht ??berwacht-|r",
        }
    },
    ["fr"] = {
        SETTINGS = {
            GENERAL_HEADER = "Options G??n??rales",
            COLORS_HEADER = "Options pour les couleurs",
            HIDDEN_HEADER = "Options d'ic??nes",
            CHARACTER_HEADER = "L\'artisanat des personnages",

            ICON_LABEL = "Style des icones",
            ICON_TOOLTIP = "Choisir l\'apparence de l\'icone de l\'Assistant de Recherche.",

            ICON_SIZE = "Taille de l'ic??ne",
            ICON_SIZE_TOOLTIP = "Choisissez la taille de l'ic??ne de recherche",

            ICON_OFFSET = "Position de l'ic??ne",
            ICON_OFFSET_TOOLTIP = "Choisissez la position de l'ic??ne de recherche sur l'axe X des inventaires",
            RESEARCHABLE_LABEL = "Couleur pour la recherche",
            RESEARCHABLE_TOOLTIP = "Choisir la couleur de l\'icone qui s\'affiche lorsque le trait n\'est pas encore connu.",

            SEPARATE_LW_LABEL = "S\195\169parer artisan du cuir et couturier",
            SEPARATE_LW_TOOLTIP = "Voulez-vous scanner les recherches d'armures moyennes et d'armures l\195\169g\195\168res pour des personnages diff\195\169rents?",

            SEPARATE_SMITH_LABEL = "S\195\169parer armes et armures lourdes",
            SEPARATE_SMITH_TOOLTIP = "Voulez-vous scanner les recherches d'armes et d'armures lourdes pour des personnages diff\195\169rents?",

            DUPLICATE_LABEL = "Couleur pour les doublons",
            DUPLICATE_TOOLTIP = "Choisir la couleur de l\'icone qui s\'affiche lorsque le trait n\'est pas encore connu mais que vous poss\195\169dez un meilleur candidat \195\160 la recherche (vous poss\195\169dez un autre objet, de moins bonne qualit\195\169, avec le m\195\170me trait).",

            RESEARCHED_LABEL = "Couleur des traits connus",
            RESEARCHED_TOOLTIP = "Choisir la couleur de l\'icone qui s\'affiche lorsque le trait est d\195\169j\195\160 connu.",

            ORNATE_LABEL = "Couleur du trait Orn\195\169",
            ORNATE_TOOLTIP = "Choisir la couleur de l\'icone qui s\'affiche pour les objets poss\195\169dant le trait \"Orn\195\169\".",

            INTRICATE_LABEL = "Couleur du trait Complexe",
            INTRICATE_TOOLTIP = "Choisir la couleur de l\'icone qui s\'affiche pour les objets poss\195\169dant le trait \"Complexe\".",

            SHOW_RESEARCHED_LABEL = "Afficher si d\195\169j\195\160 connu",
            SHOW_RESEARCHED_TOOLTIP = "Afficher l\'icone de l\'Assistant de Recherche si le trait est d\195\169j\195\160 connu.",

            SHOW_TRAITLESS_LABEL = "Icone sur les items sans traits",
            SHOW_TRAITLESS_TOOLTIP = "Afficher un icone sur les ??quipements sans traits?",

            SHOW_ORNATE_LABEL = "Toujours afficher le trait Orn\195\169",
            SHOW_ORNATE_TOOLTIP = "Afficher l\'icone de recherche pour les objets poss\195\169dant le trait \"Orn\195\169\".",

            SHOW_INTRICATE_LABEL = "Toujours afficher le trait Complexe",
            SHOW_INTRICATE_TOOLTIP = "Afficher l\'icone de recherche pour les objets poss\195\169dant le trait \"Complexe\".",

            SHOW_TOOLTIPS_LABEL = "Afficher l\'infobulle des icones",
            SHOW_TOOLTIPS_TOOLTIP = "Afficher une bulle d\'aide lorsque vous passez le curseur de la souris sur les icones de l\'Assistant de Recherche.",

            SHOW_IN_GRID_LABEL = "Afficher avec Grid View?",
            SHOW_IN_GRID_TOOLTIP = "Afficher avec Inventory Grid View Add-on?",

            WS_CHAR_LABEL = "Fabricant d\'armes",
            WS_CHAR_TOOLTIP = "Quel personnage est fabricant d\'armes?\n\'-\' signifie: Aucun",

            BS_CHAR_LABEL = "Fabricant d\'armures",
            BS_CHAR_TOOLTIP = "Quel personnage est fabricant d\'armures?\n\'-\' signifie: Aucun",

            CL_CHAR_LABEL = "Couturier",
            CL_CHAR_TOOLTIP = "Quel personnage est Couturier?\n\'-\' signifie: Aucun",

            LW_CHAR_LABEL = "Artisan du cuir",
            LW_CHAR_TOOLTIP = "Quel personnage est Artisan du cuir?\n\'-\' signifie: Aucun",

            WW_CHAR_LABEL = "Eb??niste",
            WW_CHAR_TOOLTIP = "Quel personnage est ??b??niste?\n\'-\' signifie: Aucun",

            JC_CHAR_LABEL = "Fabrication de bijoux",
            JC_CHAR_TOOLTIP = "Quel personnage est bijoutier?\n\'-\' signifie: Aucun",

            USE_ACCOUNTWIDE_RESEARCH_CHARS      = "Account-wide same research characters",
            USE_ACCOUNTWIDE_RESEARCH_CHARS_TT   = "Attention: Change of this option will reload the UI directly!\n\nWith this option enabled all your characters of the current acocunt will use the same research characters for each crafting type (default setting).\nWith this option disabled you can specify different research characters for each crafting type at each of your characters.",

            PROTECTION                  = "Protection",
            SKIP_ZOS_MARKED             = "Skip ZOs marked",
            SKIP_ZOS_MARKED_TOOLTIP     = "Skip items at the researchable scans and Research Assistant markers if the item is marked with the ZOs lock icon.",
            SKIP_FCOIS_MARKED           = "Skip FCOItemSaver marked",
            SKIP_FCOIS_MARKED_TOOLTIP   = "Skip items at the researchable scans and Research Assistant markers if the item is marked with the FCOIS icons.\nExclusion: The research marker icon of FCOIS is allowed!",

            ERROR_CONFIGURE_ADDON = "Veuillez configurer l'addon, choisissez un personnage de recherche dans les param??tres!",
            ERROR_LOGIN_ALL_CHARS = "Connectez-vous ?? tous vos personnages pour lire leurs donn??es de recherche.",
        },
        TOOLTIPS = {
            knownBy = " \'%s\', connu par:\n",
            protected = "-|cFF0000PROT??G??|r-",
            ornate = GetString(SI_ITEMTRAITTYPE10),
            intricate = GetString(SI_ITEMTRAITTYPE9),
            duplicate = "[Chercheur: %s]\nEn double%s",
            canResearch = "[Chercheur: %s]\nInconnu%s",
            alreadyResearched = "[Chercheur: %s]\n"..GetString(SI_TRADINGHOUSEFEATURECATEGORY3).."%s",
            notScannedWithNeededCharYet = "|cFF0000ERROR|r: Chercheur [\'%s\'] n'??tait pas encore connect??!",
            notTracked = "Non suivi%s",
            notTrackedCharName = "|cFFFFFF-Non suivi-|r",
        }
    },
    ["es"] = {
        SETTINGS = {
            GENERAL_HEADER = "Opciones generales",
            COLORS_HEADER = "Par??metros de color",
            HIDDEN_HEADER = "No mostrar par??metros de icono",
            CHARACTER_HEADER = "Par??metros del personaje",

            ICON_LABEL = "Estilo de icono",
            ICON_TOOLTIP = "Elige el icono que quieres mostrar para los objetos investigables.",

            ICON_SIZE = "Tama??o de ??cono",
            ICON_SIZE_TOOLTIP = "Elige el tama??o del icono de investigaci??n",

            ICON_OFFSET = "Posici??n del icono",
            ICON_OFFSET_TOOLTIP = "Elige la posici??n del icono de investigaci??n en el eje X de los inventarios.",
            SEPARATE_LW_LABEL = "Separar sastrer??a y peleter??a",
            SEPARATE_LW_TOOLTIP = "En caso de querer investigar armadura ligera y media por separado con personajes diferentes",

            SEPARATE_SMITH_LABEL = "Separar herrer??a de armas y armaduras",
            SEPARATE_SMITH_TOOLTIP = "En caso de querer investigar armas y armadura pesada por separado con personajes diferentes",

            RESEARCHABLE_LABEL = "Color para la investigaci??n",
            RESEARCHABLE_TOOLTIP = "Elige el color del icono para los objetos cuyo rasgo no conoces",

            DUPLICATE_LABEL = "Color para objetos duplicados",
            DUPLICATE_TOOLTIP = "Elige el color del icono para los objetos cuyo rasgo no conoces pero ya posees otro candidato mejor para la investigaci??n (objeto de menor calidad con el mismo rasgo)",

            RESEARCHED_LABEL = "Color para rasgos conocidos",
            RESEARCHED_TOOLTIP = "Elige el color del icono para los objetos cuyo rasgo ya conoces",

            ORNATE_LABEL = "Color para objetos ornamentados",
            ORNATE_TOOLTIP = "Elige el color del icono para los objetos con el rasgo ornamentado",

            INTRICATE_LABEL = "Color para objetos intrincados",
            INTRICATE_TOOLTIP = "Elige el color del icono para los objetos con el rasgo intrincado",

            SHOW_RESEARCHED_LABEL = "Mostrar investigados",
            SHOW_RESEARCHED_TOOLTIP = "Mostrar el icono para los objetos cuyo rasgo ya conoces",

            SHOW_TRAITLESS_LABEL = "Mostrar sin rasgo",
            SHOW_TRAITLESS_TOOLTIP = "Mostrar el icono para los objetos sin rasgo",

            SHOW_ORNATE_LABEL = "Mostrar ornamentado",
            SHOW_ORNATE_TOOLTIP = "Siempre mostrar el icono para los objetos ornamentados",

            SHOW_INTRICATE_LABEL = "Mostrar intrincado",
            SHOW_INTRICATE_TOOLTIP = "Siempre mostrar el icono para los objetos intrincados",

            SHOW_TOOLTIPS_LABEL = "Mostrar ayuda",
            SHOW_TOOLTIPS_TOOLTIP = "Muestra una ventana de informaci??n al pasar el cursor sobre el icono de Research Assistant del objeto (recomendado desactivar)",

            SHOW_IN_GRID_LABEL = "Mostrar con Grid View",
            SHOW_IN_GRID_TOOLTIP = "Mostrar los iconos de Research Assistant con el addon Inventory Grid View (ignorar si no usas dicho addon)",

            WS_CHAR_LABEL = "Herrero de armas",
            WS_CHAR_TOOLTIP = "Elige tu personaje fabricante de armas de metal.\n\'-\' significa: Ninguno",

            BS_CHAR_LABEL = "Herrero de armaduras pesadas",
            BS_CHAR_TOOLTIP = "Elige tu personaje fabricante de armaduras pesadas.\n\'-\' significa: Ninguno",

            LW_CHAR_LABEL = "Peletero",
            LW_CHAR_TOOLTIP = "Elige tu personaje fabricante de armaduras medias.\n\'-\' significa: Ninguno",

            CL_CHAR_LABEL = "Sastre",
            CL_CHAR_TOOLTIP = "Elige tu personaje fabricante de armaduras ligeras.\n\'-\' significa: Ninguno",

            WW_CHAR_LABEL = "Carpintero",
            WW_CHAR_TOOLTIP = "Elige tu personaje fabricante de escudos y armas de madera.\n\'-\' significa: Ninguno",

            JC_CHAR_LABEL = "Elaboraci??n de joyas",
            JC_CHAR_TOOLTIP = "Elige tu personaje fabricante de joyer??a.\n\'-\' significa: Ninguno",

            ERROR_CONFIGURE_ADDON = "??Configura el AddOn, elige un personaje de investigaci??n en la configuraci??n!",
            ERROR_LOGIN_ALL_CHARS = "Inicia sesi??n con todos tus personajes para leer sus datos de investigaci??n.",
        },
        TOOLTIPS = {
            knownBy = " \'%s\', conocido por:\n",
            protected = "-|cFF0000PROTEGIDO|r-",
            ornate = "Ornamentado",
            intricate = "Intrincado",
            duplicate = "[Investigador: %s]\nDuplicado%s",
            canResearch = "[Investigador: %s]\nDesconocido%s",
            alreadyResearched = "[Investigador: %s]\nRasgo%s",
            notScannedWithNeededCharYet = "|cFF0000ERROR|r: ??El investigador [\'%s\'] a??n no hab??a iniciado sesi??n!",
            notTracked = "No rastreado%s",
            notTrackedCharName = "|cFFFFFF-No rastreado-|r",
        }
    },
    ["jp"] = {
        SETTINGS = {
            GENERAL_HEADER = "General Options",
            COLORS_HEADER = "Color Options",
            HIDDEN_HEADER = "Hide Icon Options",
            CHARACTER_HEADER = "Tracked Character Options",

            ICON_LABEL = "Research icon",
            ICON_TOOLTIP = "Choose which icon to display as your research assistant.",

            ICON_SIZE = "Icon size",
            ICON_SIZE_TOOLTIP = "Choose the size of the research icon",

            ICON_OFFSET = "Icon position",
            ICON_OFFSET_TOOLTIP = "Choose the position of the research icon on the X-axis of inventories",
            SEPARATE_LW_LABEL = "Separate leatherworking from tailoring?",
            SEPARATE_LW_TOOLTIP = "Do you want to track medium armor and light armor research for separate characters?",

            SEPARATE_SMITH_LABEL = "Separate weaponsmithing from blacksmithing?",
            SEPARATE_SMITH_TOOLTIP = "Do you want to track weaponsmithing and armorsmithing research for separate characters?",

            RESEARCHABLE_LABEL = "Researchable trait color",
            RESEARCHABLE_TOOLTIP = "What color should the research assistant icon be if the trait is researchable?",

            DUPLICATE_LABEL = "Duplicate researchable trait color",
            DUPLICATE_TOOLTIP = "What color should the research assistant icon be if the item is researchable but there is a better candidate for research?",

            RESEARCHED_LABEL = "Already researched color",
            RESEARCHED_TOOLTIP = "What color should the research assistant icon be if the item is already researched?",

            ORNATE_LABEL = "Ornate item color",
            ORNATE_TOOLTIP = "What color should the icon be for an ornate item?",

            INTRICATE_LABEL = "Intricate item color",
            INTRICATE_TOOLTIP = "What color should the icon be for an intricate item?",

            SHOW_RESEARCHED_LABEL = "Show researched icon?",
            SHOW_RESEARCHED_TOOLTIP = "Should the icon show up for traits that you know?",

            SHOW_TRAITLESS_LABEL = "Show researched icon on traitless?",
            SHOW_TRAITLESS_TOOLTIP = "Should the icon show up for traitless equipment?",

            SHOW_ORNATE_LABEL = "Always show Ornate?",
            SHOW_ORNATE_TOOLTIP = "Should Ornate be shown for untracked skills?",

            SHOW_INTRICATE_LABEL = "Always show Intricate?",
            SHOW_INTRICATE_TOOLTIP = "Should Intricate be shown for untracked skills?",

            SHOW_TOOLTIPS_LABEL = "Show icon tooltips?",
            SHOW_TOOLTIPS_TOOLTIP = "Should tooltips tell you what they are? (recommended OFF)",

            SHOW_IN_GRID_LABEL = "Show in Grid View?",
            SHOW_IN_GRID_TOOLTIP = "Should the research assistant icon show up with Inventory Grid View toggled on? (Ignore this if you don't use Inventory Grid View)",

            WS_CHAR_LABEL = "Weaponsmithing Character",
            WS_CHAR_TOOLTIP = "Which character is your weaponsmithing character?\n\'-\' means: None",

            BS_CHAR_LABEL = "Blacksmithing Character",
            BS_CHAR_TOOLTIP = "Which character is your blacksmithing character?\n\'-\' means: None",

            LW_CHAR_LABEL = "Leatherworking Character",
            LW_CHAR_TOOLTIP = "Which character is your leatherworking character?\n\'-\' means: None",

            CL_CHAR_LABEL = "Clothier Character",
            CL_CHAR_TOOLTIP = "Which character is your clothier character?\n\'-\' means: None",

            WW_CHAR_LABEL = "Woodworking Character",
            WW_CHAR_TOOLTIP = "Which character is your woodworking character?\n\'-\' means: None",

            JC_CHAR_LABEL = "Jewelry crafting Character",
            JC_CHAR_TOOLTIP = "Which character is your jewelry crafting character?\n\'-\' means: None",

            USE_ACCOUNTWIDE_RESEARCH_CHARS      = "Account-wide same research characters",
            USE_ACCOUNTWIDE_RESEARCH_CHARS_TT   = "Attention: Change of this option will reload the UI directly!\n\nWith this option enabled all your characters of the current acocunt will use the same research characters for each crafting type (default setting).\nWith this option disabled you can specify different research characters for each crafting type at each of your characters.",

            PROTECTION                  = "Protection",
            SKIP_ZOS_MARKED             = "Skip ZOs marked",
            SKIP_ZOS_MARKED_TOOLTIP     = "Skip items at the researchable scans and Research Assistant markers if the item is marked with the ZOs lock icon.",
            SKIP_FCOIS_MARKED           = "Skip FCOItemSaver marked",
            SKIP_FCOIS_MARKED_TOOLTIP   = "Skip items at the researchable scans and Research Assistant markers if the item is marked with the FCOIS icons.\nExclusion: The research marker icon of FCOIS is allowed!",

            ERROR_CONFIGURE_ADDON = "Please configure the addon, choose a research character in the settings!",
            ERROR_LOGIN_ALL_CHARS = "Login all your characters to read their research data.",
        },
        TOOLTIPS = {
            knownBy = " \'%s\',???????????????????????????:\n",
            protected = "-|cFF0000??????|r-",
            ornate = GetString(SI_ITEMTRAITTYPE10),
            intricate = GetString(SI_ITEMTRAITTYPE9),
            duplicate = "[?????????: %s]\n??????%s",
            canResearch = "[?????????: %s]\n?????????%s",
            alreadyResearched = "[?????????: %s]\n"..GetString(SI_TRADINGHOUSEFEATURECATEGORY3).."%s",
            notScannedWithNeededCharYet = "|cFF0000ERROR|r: ????????? [\'%s\'] ???????????????????????????????????????!",
            notTracked = "????????????????????????%s",
            notTrackedCharName = "|cFFFFFF-????????????????????????-|r",
        }
    },
    ["ru"] = {
        SETTINGS = {
            GENERAL_HEADER = "General Options",
            COLORS_HEADER = "Color Options",
            HIDDEN_HEADER = "Hide Icon Options",
            CHARACTER_HEADER = "Tracked Character Options",

            ICON_LABEL = "Research icon",
            ICON_TOOLTIP = "Choose which icon to display as your research assistant.",

            ICON_SIZE = "Icon size",
            ICON_SIZE_TOOLTIP = "Choose the size of the research icon",

            ICON_OFFSET = "Icon position",
            ICON_OFFSET_TOOLTIP = "Choose the position of the research icon on the X-axis of inventories",
            SEPARATE_LW_LABEL = "Separate leatherworking from tailoring?",
            SEPARATE_LW_TOOLTIP = "Do you want to track medium armor and light armor research for separate characters?",

            SEPARATE_SMITH_LABEL = "Separate weaponsmithing from blacksmithing?",
            SEPARATE_SMITH_TOOLTIP = "Do you want to track weaponsmithing and armorsmithing research for separate characters?",

            RESEARCHABLE_LABEL = "Researchable trait color",
            RESEARCHABLE_TOOLTIP = "What color should the research assistant icon be if the trait is researchable?",

            DUPLICATE_LABEL = "Duplicate researchable trait color",
            DUPLICATE_TOOLTIP = "What color should the research assistant icon be if the item is researchable but there is a better candidate for research?",

            RESEARCHED_LABEL = "Already researched color",
            RESEARCHED_TOOLTIP = "What color should the research assistant icon be if the item is already researched?",

            ORNATE_LABEL = "Ornate item color",
            ORNATE_TOOLTIP = "What color should the icon be for an ornate item?",

            INTRICATE_LABEL = "Intricate item color",
            INTRICATE_TOOLTIP = "What color should the icon be for an intricate item?",

            SHOW_RESEARCHED_LABEL = "Show researched icon?",
            SHOW_RESEARCHED_TOOLTIP = "Should the icon show up for traits that you know?",

            SHOW_TRAITLESS_LABEL = "Show researched icon on traitless?",
            SHOW_TRAITLESS_TOOLTIP = "Should the icon show up for traitless equipment?",

            SHOW_ORNATE_LABEL = "Always show Ornate?",
            SHOW_ORNATE_TOOLTIP = "Should Ornate be shown for untracked skills?",

            SHOW_INTRICATE_LABEL = "Always show Intricate?",
            SHOW_INTRICATE_TOOLTIP = "Should Intricate be shown for untracked skills?",

            SHOW_TOOLTIPS_LABEL = "Show icon tooltips?",
            SHOW_TOOLTIPS_TOOLTIP = "Should tooltips tell you what they are? (recommended OFF)",

            SHOW_IN_GRID_LABEL = "Show in Grid View?",
            SHOW_IN_GRID_TOOLTIP = "Should the research assistant icon show up with Inventory Grid View toggled on? (Ignore this if you don't use Inventory Grid View)",

            WS_CHAR_LABEL = "Weaponsmithing Character",
            WS_CHAR_TOOLTIP = "Which character is your weaponsmithing character?\n\'-\' means: None",

            BS_CHAR_LABEL = "Blacksmithing Character",
            BS_CHAR_TOOLTIP = "Which character is your blacksmithing character?\n\'-\' means: None",

            LW_CHAR_LABEL = "Leatherworking Character",
            LW_CHAR_TOOLTIP = "Which character is your leatherworking character?\n\'-\' means: None",

            CL_CHAR_LABEL = "Clothier Character",
            CL_CHAR_TOOLTIP = "Which character is your clothier character?\n\'-\' means: None",

            WW_CHAR_LABEL = "Woodworking Character",
            WW_CHAR_TOOLTIP = "Which character is your woodworking character?\n\'-\' means: None",

            JC_CHAR_LABEL = "Jewelry crafting Character",
            JC_CHAR_TOOLTIP = "Which character is your jewelry crafting character?\n\'-\' means: None",

            USE_ACCOUNTWIDE_RESEARCH_CHARS      = "Account-wide same research characters",
            USE_ACCOUNTWIDE_RESEARCH_CHARS_TT   = "Attention: Change of this option will reload the UI directly!\n\nWith this option enabled all your characters of the current acocunt will use the same research characters for each crafting type (default setting).\nWith this option disabled you can specify different research characters for each crafting type at each of your characters.",
            ALLOW_NO_CHARACTER_CHOSEN_FOR_RESEARCH      = "No warning w/o research character selected",
            ALLOW_NO_CHARACTER_CHOSEN_FOR_RESEARCH_TT   = "Do not sbow a warning dialog if you have chosen no character for research of any crafting type.",
            USE_CURRENT_LOGGED_IN_CHAR_FOR_RESEARCH     = "Use logged in char for all researches",
            USE_CURRENT_LOGGED_IN_CHAR_FOR_RESEARCH_TT  = "Use the currently logged in character for all researches and crafting types.\n\nOnly works if the 'account-wide same research characters' setting is disabled!",

            PROTECTION                  = "Protection",
            SKIP_ZOS_MARKED             = "Skip ZOs marked",
            SKIP_ZOS_MARKED_TOOLTIP     = "Skip items at the researchable scans and Research Assistant markers if the item is marked with the ZOs lock icon.",
            SKIP_FCOIS_MARKED           = "Skip FCOItemSaver marked",
            SKIP_FCOIS_MARKED_TOOLTIP   = "Skip items at the researchable scans and Research Assistant markers if the item is marked with the FCOIS icons.\nExclusion: The research marker icon of FCOIS is allowed!",
            SKIP_SETS                   = "Skip set items",
            SKIP_SETS_TOOLTIP           = "Skip items which belong to a set and do not mark them with any ResearchAssistant",
            SKIP_SETS_ONLY_MAX_LEVEL    = "Skip sets: Max level only",
            SKIP_SETS_ONLY_MAX_LEVEL_TOOLTIP = "Skip the set items with the maximum level and CPs only, and mark lower levels for research.",

            ERROR_CONFIGURE_ADDON = "Please configure the addon, choose a research character in the settings!",
            ERROR_LOGIN_ALL_CHARS = "Login all your characters to read their research data.",

            HIDE_VANILLA_UI_RESEARCHABLE_TEXTURE = "Hide ZOs vanilla UI researchable texture",
            HIDE_VANILLA_UI_RESEARCHABLE_TEXTURE_TOOLTIP = "Hide the ZOs vanilla UI researchable texture at the inventory rows",

            SHOW_ICON_EVEN_IF_PROTECTED = "Show research icon if protected",
            SHOW_ICON_EVEN_IF_PROTECTED_TOOLTIP = "Always show the research icon, even though the item is protected. This way you are able to see the icon and it's tooltips. Research Assistants does not count these protected items as researchable!\n\nThis icon will respect the other settings like e.g. \'Show researched icon?\': If this is disabled and the item's trait was researched already the research assistant icon wont show!",
            SHOW_ICON_EVEN_IF_PROTECTED_EXCLUDE_NON_TRACKED = "Exclude non tracked",
            SHOW_ICON_EVEN_IF_PROTECTED_EXCLUDE_NON_TRACKED_TOOLTIP = "Do not show the protected icon if the crafting is not tracked",

            SETTINGS_HEADER_TOOLTIPS = GetString(SI_CUSTOMERSERVICESUBMITFEEDBACKSUBCATEGORIES1306),
            SHOW_TYPE_IN_TOOLTIP = "Show type in tooltip",
            SHOW_TYPE_IN_TOOLTIP_TOOLTIP = "Show the armor/weapon type in the tooltip text",
            SHOW_ARMORWEIGHT_IN_TOOLTIP = "Show armor weight in tooltip",
            SHOW_ARMORWEIGHT_IN_TOOLTIP_TOOLTIP = "Show the armor weight (light, medium, heavy) in the tooltip text",
            SETTINGS_HEADER_VANILLAUI = "Vanilla UI",
        },
        TOOLTIPS = {
            knownBy = " \'%s\', ????????????????:\n",
            protected = "-|cFF0000??????????????|r-",
            ornate = GetString(SI_ITEMTRAITTYPE10),
            intricate = GetString(SI_ITEMTRAITTYPE9),
            duplicate = "[??????????????????: %s]\n??????????????????????%s",
            canResearch = "[??????????????????: %s]\n??????????????????????%s",
            alreadyResearched = "[??????????????????: %s]\n????????????????????????%s",
            notScannedWithNeededCharYet = "|cFF0000????????????|r: ?????????????????? [\'%s\'] ?????? ???? ??????????????????!",
            notTrackedCharName = "|cFFFFFF-???? ??????????????????????????-|r",
        }
    }
}
