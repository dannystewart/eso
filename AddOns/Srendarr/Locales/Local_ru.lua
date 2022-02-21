local Srendarr = _G['Srendarr']
local L = {}

------------------------------------------------------------------------------------------------------------------
-- Russian (ru) - Thanks to ESOUI.com user KiriX for the translations.
-- Indented or commented lines still require human translation and may not make sense!
------------------------------------------------------------------------------------------------------------------

L.Srendarr  								= "|c67b1e9S|c4779ce\'rendarr|r"
L.Srendarr_Basic							= "S\'rendarr"
L.Usage     								= "|c67b1e9S|c4779ce\'rendarr|r - Иcпoльзoвaниe: /srendarr включить/oтключить вoзмoжнocть пepeдвигaть элeмeнты интepфeйca aддoнa пo экpaну."
L.CastBar									= "Кастбар"
L.Sound_DefaultProc 						= "Srendarr (По умолчанию)"
L.ToggleVisibility							= "Toggle Srendarr видимость"

-- time format
L.Time_Tenths								= "%.1fs"
L.Time_TenthsNS								= "%.1f"
L.Time_Seconds      						= "%dс"
L.Time_SecondsNS							= "%d"
L.Time_Minutes      						= "%dм"
L.Time_Hours        						= "%dч"
L.Time_Days									= "%dд"

-- aura grouping
L.Group_Displayed_Here						= "Показываемые группы"
L.Group_Displayed_None						= "Нет"
L.Group_Player_Short						= "Ваши короткие баффы"
L.Group_Player_Long							= "Ваши длительные баффы"
L.Group_Player_Major						= "Ваши мажорные баффы"
L.Group_Player_Minor						= "Ваши минорные баффы"
L.Group_Player_Toggled						= "Ваши включаемые баффы"
L.Group_Player_Ground						= "Ваши наземные эффекты"
L.Group_Player_Enchant						= "Ваши проки зачарования"
--L.Group_Player_Cooldowns					= "Your Proc Cooldowns"
L.Group_Player_Passive						= "Ваши пассивки"
L.Group_Player_Debuff						= "Ваши дебаффы"
L.Group_Target_Buff							= "Баффы цели"
L.Group_Target_Debuff						= "Дебаффы цели"

L.Group_Prominent							= "Белый список баффов 1"
L.Group_Prominent2							= "Белый список баффов 2"
L.Group_Debuffs								= "Белый список дебаффов 1"
L.Group_Debuffs2							= "Белый список дебаффов 2"
--L.Group_GroupBuffs						= "Group Buff Frames"
--L.Group_RaidBuffs							= "Raid Buff Frames"
--L.Group_GroupDebuffs						= "Group Debuff Frames"
--L.Group_RaidDebuffs						= "Raid Debuff Frames"

-- whitelist & blacklist control
L.Prominent_AuraAddSuccess					= "было добавлено в Белый список баффов 1."
L.Prominent_AuraAddSuccess2					= "было добавлено в Белый список баффов 2."
L.Prominent_AuraAddFail						= "не было найдено и не может быть добавлено."
L.Prominent_AuraAddFailByID					= "неверный abilityID или это ID не временного баффа и не может быть добавлено."
L.Prominent_AuraRemoved						= "было удалено из Белого список баффов 1."
L.Prominent_AuraRemoved2					= "было удалено из Белого список баффов 2."
L.Blacklist_AuraAddSuccess					= "было добавлено в Черный список и больше не будет отображаться."
L.Blacklist_AuraAddFail						= "не было найдено и не может быть добавлено в Черный список."
L.Blacklist_AuraAddFailByID					= "неверный abilityID или это ID не временного баффа и не может быть добавлено в Черный список."
L.Blacklist_AuraRemoved						= "было удалено из Черного списка."
--L.Group_AuraAddSuccess					= "has been added to the Group Buff Whitelist."
--L.Group_AuraAddSuccess2					= "has been added to the Group Debuff Whitelist."
--L.Group_AuraRemoved						= "has been removed from the Group Buff Whitelist."
--L.Group_AuraRemoved2						= "has been removed from the Group Debuff Whitelist."
L.Debuff_AuraAddSuccess						= "было добавлено в Белый список дебаффов 1."
L.Debuff_AuraAddSuccess2					= "было добавлено в Белый список дебаффов 2."
L.Debuff_AuraRemoved						= "было удалено из Белого списка дебаффов 1."
L.Debuff_AuraRemoved2						= "было удалено из Белого списка дебаффов 2."

-- settings: base
L.Show_Example_Auras						= "Пример баффов"
L.Show_Example_Castbar						= "Пример кастбара"

L.SampleAura_PlayerTimed					= "Временные баффы игрока"
L.SampleAura_PlayerToggled					= "Переключаемые баффы игрока"
L.SampleAura_PlayerPassive					= "Пассивки игрока"
L.SampleAura_PlayerDebuff					= "Дебаффы игрока"
L.SampleAura_PlayerGround					= "Наземные эффекты"
L.SampleAura_PlayerMajor					= "Мажорный эффект"
L.SampleAura_PlayerMinor					= "Минорный эффект"
L.SampleAura_TargetBuff						= "Баффы цели"
L.SampleAura_TargetDebuff					= "Дебаффы цели"

L.TabButton1								= "Общие"
L.TabButton2								= "Фильтры"
L.TabButton3								= "Полоска каста"
L.TabButton4								= "Отображение баффов"
L.TabButton5								= "Профили"

L.TabHeader1								= "Общие настройки"
L.TabHeader2								= "Настройки фильтров"
L.TabHeader3								= "Настройки полоски каста"
L.TabHeader5								= "Настройки профиля"
L.TabHeaderDisplay							= "Показать окно настроек"

-- settings: generic
L.GenericSetting_ClickToViewAuras			= "|cffd100Нажмите, чтобы просмотреть баффы|r"
L.GenericSetting_NameFont					= "Шрифт названия"
L.GenericSetting_NameStyle					= "Цвет и стиль названия"
L.GenericSetting_NameSize					= "Размер текста названия"
L.GenericSetting_TimerFont					= "Шрифт таймера"
L.GenericSetting_TimerStyle					= "Цвет и стиль таймера"
L.GenericSetting_TimerSize					= "Размер текста таймера"
L.GenericSetting_BarWidth					= "Длина полоски"
L.GenericSetting_BarWidthTip				= "Задаёт, какой должна быть длина полоски таймера, когда она отображается."


-- ----------------------------
-- SETTINGS: DROPDOWN ENTRIES
-- ----------------------------
L.DropGroup_1								= "В окне [|cffd1001|r]"
L.DropGroup_2								= "В окне [|cffd1002|r]"
L.DropGroup_3								= "В окне [|cffd1003|r]"
L.DropGroup_4								= "В окне [|cffd1004|r]"
L.DropGroup_5								= "В окне [|cffd1005|r]"
L.DropGroup_6								= "В окне [|cffd1006|r]"
L.DropGroup_7								= "В окне [|cffd1007|r]"
L.DropGroup_8								= "В окне [|cffd1008|r]"
L.DropGroup_9								= "В окне [|cffd1009|r]"
L.DropGroup_10								= "В окне [|cffd10010|r]"
L.DropGroup_None							= "Не отображать"

L.DropStyle_Full							= "Полное отображение"
L.DropStyle_Icon							= "Только иконка"
L.DropStyle_Mini							= "Минимальное отображение"

L.DropGrowth_Up								= "Вверх"
L.DropGrowth_Down							= "Вниз"
L.DropGrowth_Left							= "Влево"
L.DropGrowth_Right							= "Вправо"
L.DropGrowth_CenterLeft						= "Центрированно (Влево)"
L.DropGrowth_CenterRight					= "Центрированно (Вправо)"

L.DropSort_NameAsc							= "Название (По возр.)"
L.DropSort_TimeAsc							= "Оставшееся время (По возр.)"
L.DropSort_CastAsc							= "Время получения (По возр.)"
L.DropSort_NameDesc							= "Название (По убыв.)"
L.DropSort_TimeDesc							= "Оставшееся время (По убыв.)"
L.DropSort_CastDesc							= "Время получения (По убыв.)"

L.DropTimer_Above							= "Над иконкой"
L.DropTimer_Below							= "Под иконкой"
L.DropTimer_Over							= "На иконке"
L.DropTimer_Hidden							= "Скрыто"

L.DropAuraClassBuff							= "Бафф"
L.DropAuraClassDebuff						= "Дебафф"
L.DropAuraClassDefault						= "Не определено"

--L.DropGroupMode1							= "Default"
--L.DropGroupMode2							= "Foundry Tactical Combat"
--L.DropGroupMode3							= "Lui Extended"
--L.DropGroupMode4							= "Bandits User Interface"


-- ------------------------
-- SETTINGS: GENERAL
-- ------------------------
-- general (general options)
L.General_GeneralOptions					= "Общие настройки"
L.General_GeneralOptionsDesc				= "Различные общие настройки, управляющие поведением модификации."
	L.General_UnlockDesc						= "Разблокировка позволяет перетаскивать окна отображения ауры с помощью мыши. Сброс отменяет все изменения положения с момента последней перезагрузки и настройки по умолчанию вернут все окна в их расположение по умолчанию."
L.General_UnlockLock						= "Заблокировать"
L.General_UnlockUnlock						= "Разблокировать"
L.General_UnlockReset						= "Сброс"
	L.General_UnlockDefaults					= "Значения по умолчанию"
	L.General_UnlockDefaultsAgain				= "Подтвердить значения по умолчанию"
L.General_CombatOnly						= "Показывать только в бою"
L.General_CombatOnlyTip						= "При включении, окна баффов будут отображаться только во время боя."
	L.General_PassivesAlways				= "Всегда показывайте пассив"
	L.General_PassivesAlwaysTip				= "Показать пассивную / длинную длительность ауры, даже если не в бою, и выше вариант проверяется."
	L.General_ProminentPassives					= "Разрешить Пассивная Выдающиеся Баффы"
	L.General_ProminentPassivesTip				= "Позволяет добавлять пассивы к заметным кадрам."
L.HideOnDeadTargets							= "Скрыть на мертвых целях"
L.HideOnDeadTargetsTip						= "Задаёт, надо ли скрывать все ауры мертвых целей. (Может скрыть потенциально полезные вещи, например, такие как Repentance.)"
	L.PVPJoinTimer								= "PVP присоединиться к таймеру"
	L.PVPJoinTimerTip							= "Игра блокирует Addon-зарегистрированные события при инициализации PVP. Это количество секунд, которые SRENDARR будет дождаться этого для завершения, что может зависеть от вашего процессора и/или отставания на сервере. Если ауры исчезают при присоединении или уходе PVP, установите это значение выше."
--L.ShowTenths								= "Tenths of Seconds"
--L.ShowTenthsTip								= "Show tenths next to timers with only seconds remaining. Slider sets at how many seconds remaining below which tenths will begin showing."
--L.ShowSSeconds							= "Show \'s\' Seconds"
--L.ShowSSecondsTip							= "Show the letter \'s\' after timers with only seconds remaining. Timers that show minutes and seconds are not effected by this."
--L.ShowSeconds								= "Show Seconds Remaining"
--L.ShowSecondsTip							= "Show the seconds remaining next to timers that show minutes. Timers that show hours are not effected by this."
L.General_ConsolidateEnabled				= "Объединять мульти-баффы"
L.General_ConsolidateEnabledTip				= "Некоторые способсноти, такие как Restoring Aura Храмовника имеют несколько баффов и с обычной настройкай все они будут отображаться отдельно вы выбранном окне с одинаковым временем и иконкой, что приводит к беспорядку. Эта настройка объединяет их в один бафф."
L.General_PassiveEffectsAsPassive			= "Исцеляющие пассивные Мажорные & Минорные баффы как пассивки"
L.General_PassiveEffectsAsPassiveTip		= "Определяет, будут ли пассивные Мажорые & Минорные баффы сгруппированы и скрыты с другими пассивными баффами игрока, как это задано в настройках \'Ваши пассивки\'.\n\nЕсли выключено, все Мажорные & Минорные баффы будут сгруппированны вне зависимости от того временные они или пассивные."
L.General_AuraFadeout						= "Время исчезновения баффов"
L.General_AuraFadeoutTip					= "Задаёт время, через которое иконка истёкшего баффы должна исчезнуть. Если задать 0, бафф исчезнет, как только истечет его время действия.\n\nВремя указывается в миллисекундах."
L.General_ShortThreshold					= "Порог коротких баффов"
L.General_ShortThresholdTip					= "Задаёт минимальную длительность баффов игрока (в секундах), выше которого баффы будут отнесены к группе \'Длительных баффов\'. Любые баффы с длительностью менее указанного значения будут отнесены к группе \'Коротких баффов\'."
L.General_ProcEnableAnims					= "Анимация прока"
L.General_ProcEnableAnimsTip				= "Включает анимацию на Панели навыков для способностей, которые прокнули и сейчас к ним может быть применено специальное действие. Способности, которые могут прокнут, включают в себя:\n   Crystal Fragments\n   Grim Focus & It\'s Morphs\n   Flame Lash\n   Deadly Cloak"
L.General_ProcEnableAnimsWarn				= "Если вы используете другой аддон для этой модификации или у вас скрыта Панель навыков, анимация может не отображаться."
L.General_ProcPlaySound						= "Звук при проке"
L.General_ProcPlaySoundTip					= "Включает звук, когда способность прокает. Настройка Нет отключит любое звуковое предупреждение о проке."
L.General_ModifyVolume						= "Изменить Proc Объем"
L.General_ModifyVolumeTip					= "Включить использование ниже ползуна объема ProC."
L.General_ProcVolume						= "Proc громкости звука"
L.General_ProcVolumeTip						= "Временно переопределяет громкость звуковых эффектов при воспроизведении звука SRENDARR."
--L.General_GroupAuraMode					= "Group Aura Mode"
--L.General_GroupAuraModeTip				= "Select the support module for the group unit frames you currently use. Default is the game's normal frames."
--L.General_RaidAuraMode					= "Raid Aura Mode"
--L.General_RaidAuraModeTip					= "Select the support module for the raid unit frames you currently use. Default is the game's normal frames."

-- general (display groups)
L.General_ControlHeader						= "Управление баффами - Группы отображения"
L.General_ControlBaseTip					= "Задаёт окно, в котором будет отображаться выбранная группа баффов, или скрывает её вообще."
L.General_ControlShortTip					= "Эта группа баффов содержит все ваши баффы с длительностью ниже значения, указанного в настройке \'Порог коротких баффов\'."
L.General_ControlLongTip 					= "Эта группа баффов содержит все ваши баффы с длительностью выше значения, указанного в настройке \'Порог коротких баффов\'."
L.General_ControlMajorTip					= "Эта группа баффов содержит все действующие на вас активные Мажорные эффекты (напр. Major Sorcery), определённые Мажорные эффекты относятся к группе дебаффов."
L.General_ControlMinorTip					= "Эта группа баффов содержит все действующие на вас активные Минорные эффекты (напр. Minor Sorcery), определённые Минорыне эффекты относятся к группе дебаффов."
L.General_ControlToggledTip					= "Эта группа баффов содержит все ваши активные включаемые (на постоянно) баффы."
L.General_ControlGroundTip					= "Эта группа баффов содержит все скастованные вами наземные эффекты."
L.General_ControlEnchantTip					= "Эта группа баффов содержит все действующие на вас активные эффекты зачарований (напр. Hardening, Berserker)."
L.General_ControlGearTip					= "Эта группа баффов содержит все обычно не видимые проки вашей экипировки, которые активны на вас (напр. Bloodspawn)."
--L.General_ControlCooldownTip				= "This Aura Group tracks the internal reuse cooldown of your Gear Procs."
L.General_ControlPassiveTip					= "Эта группа баффов содержит все ваши активные пассивные эффекты, за исключением тех, что находятся в специальном фильтре."
L.General_ControlDebuffTip					= "Эта группа баффов содержит все вражеские дебаффы, действующие на вас и наложенные мобами, другими игроками или механикой игры."
L.General_ControlTargetBuffTip				= "Эта группа баффов содержит все баффы, действующие на вашу цель, вне зависимости от их длительности, пассивности или переключаемости, за исключением тех, что находятся в специальном фильтре."
L.General_ControlTargetDebuffTip 			= "Эта группа баффов содержит все дебаффы, действующие на вашу цель. Из-за игрового ограничения, отображаются только дебаффы, наложенные на цель вами, хотя есть и редкие исключения."
L.General_ControlProminentTip				= "Эта специальная группа баффов содержит все ваши баффы и наземные эффекты, которые были помещены в белый список, чтобы отображаться здесь вместо их оригинальной группы."
L.General_ControlProminentDebuffTip			= "Эта специальная группа баффов содержит все дебаффы цели, которые были помещены в белый список, чтобы отображаться здесь вместо их оригинальной группы."

-- general (debug)
L.General_DebugOptions						= "Настройки отладки"
L.General_DebugOptionsDesc					= "Помозь в отслеживании пропущенных или неверных баффов!"
L.General_DisplayAbilityID					= "Отображать AbilityID баффы"
L.General_DisplayAbilityIDTip				= "Задаёт, отображать ли abilityID для всех баффов. Это может быть полезно, чтобы найти ID баффа, которую вы хотите добавить в черный список, чтобы не отображать или добавить в Белый список баффов.\n\nЭта настройка также может быть полезна для исправление некорректно отображающихся баффов, отправив в отзыве автору аддона её ID."
L.General_ShowCombatEvents					= "Показывать все события боя"
L.General_ShowCombatEventsTip				= "Когда включено, AbilityID и название всех полученных эффектов (баффов и дебаффов) или произведённых игроков, будут показаны в чате, сразу с информацией об источнике и ресурсе, и код результата события (получены, потерянные и т. Д.).\n\nДля предотвращения переполнения чата и облегчения просмотра, каждая способнотси будет показала лишь один раз до перезагрузки. В ЛЮБОМ СЛУЧАЕ, вы можете набрать /sdbclear в любой момент, чтобы сбросить кэш.\n\nПредупреждение: Включение этой опции уменьшает производительность игры в больших группах. Включить только при необходимости для тестирования."
L.General_AllowManualDebug					= "Ручная правка отладки"
L.General_AllowManualDebugTip				= "Когда включено, вы можеет набрать /sdbadd XXXXXX или /sdbremove XXXXXX чтобы добавить/убрать конкретный ID из фильтра флуда. Кроме того, набрав /sdbignore XXXXXX всегда позволят входной идентификатор пройти через фильтр наводнения. Набор /sdbclear всё также будет сбрасывать фильтр."
L.General_DisableSpamControl				= "Отключить контроль флуда"
L.General_DisableSpamControlTip				= "Когда отключено, фильтр событий боя будет выводить одинаковые события каждый раз, когда они происходят без необходимости набирать /sdbclear или перезагрузки, чтобы очистить базу данных."
L.General_VerboseDebug						= "Побробный Дебаг"
L.General_VerboseDebugTip					= "Показывает данные, блокированные от получения в EVENT_COMBAT_EVENT и путь к иконке способности для каждого ID (будет заполняться ваш лог чата)."
L.General_OnlyPlayerDebug					= "Только события игрока"
L.General_OnlyPlayerDebugTip				= "Только показывайте отладки боевых событий, которые являются результатом действий игроков."
L.General_ShowNoNames						= "Безымянные эффекты"
L.General_ShowNoNamesTip					= "Когда включено, фильтр событий боя будет показывать ID события даже если у него нет названия."
L.General_SavedVarUpdate					= "[Srendarr] Предупреждение: сохраненный формат переменной преобразуется в идентификатор. Настройки теперь будут сохраняться при переименовании персонажей. Перезагрузите пользовательский интерфейс (/reloadui) для завершения."
L.General_ShowSetIds						= "Показывать идентификаторы набора при оснащении"
L.General_ShowSetIdsTip						= "При включении показывает имя и setID всех экипированных наборов передач при замене любого предмета."


-- ------------------------
-- SETTINGS: FILTERS
-- ------------------------
L.FilterHeader								= "Списики фильтров и переключатели"
L.Filter_Desc								= "Здесь вы можете добавить в черный и белый списки баффы или дебаффы, чтобы сделать их особыми и заставить отображаться их в собственном окне, или переключить фильтры, чтобы показать или скрыть различные типы эффектов."
L.Filter_RemoveSelected						= "Удалить выбранное"
L.Filter_ListAddWarn						= "При добавлении баффы по названию требуется просканировать все баффы, чтобы найти внутренний номер ID способности. Это может привести к некоторому зависанию игры на момент сканирования."
L.FilterToggle_Desc							= "Для этих фильтров, включение одного из них запрещает отображение конерктной категории (эффекты, помещённый в белый список, игнорируются этими фильтрами)."

L.Filter_PlayerHeader						= "Фильтр баффов игрока"
L.Filter_TargetHeader						= "Фильтр баффов цели"
L.Filter_OnlyPlayerDebuffs					= "Только дебаффы игрока"
L.Filter_OnlyPlayerDebuffsTip				= "Запрещает отображать на цели все дебаффы, которые были наложены НЕ самим игроком."

-- filters (blacklist auras)
L.Filter_BlacklistHeader					= "Черный список баффов"
L.Filter_BlacklistDesc						= "Определённые баффы могут быть помещены в Черный список, чтобы никогда не отображались ни в одном окне отслеживания баффов. Внимание: Это не блокирует баффы, вручную добавленные в групповой Белый список."
L.Filter_BlacklistAdd						= "Добавить бафф в Черный список"
L.Filter_BlacklistAddTip					= "Бафф, который вы хотите добавить в Черный список, должен иметь точно такое название, которое у нго есть в игре, или вы можете ввести внутренний abilityID (если знаете), чтобы заблокировать конкретный бафф.\n\nНажмите Enter для добавления баффа в Черный список."
L.Filter_BlacklistList						= "Черный список баффов"
L.Filter_BlacklistListTip					= "Список всех баффов, добавленных в Черный список. Чтобы удалить какой-либо бафф из Черного списка, выберите его из списка и нажмите кнопку Удалить ниже."

-- filters (prominent auras)
L.Filter_ProminentHeader					= "Баффы белого списка"
L.Filter_ProminentDesc						= "Ваши баффы, а также наземные эффекты, могут быть помещены в белый список баффов. Это позволяет выделить их в отдельное окно, чтобы было легче отслеживать критически важные эффекты."
L.Filter_ProminentAdd						= "Добавить бафф в белый список"
L.Filter_ProminentAddTip					= "Бафф или наземный эффект, который вы хотите добавить в белый список, должен иметь точно такое название, которое у него есть в игре, или вы можете ввести внутренний abilityID (если знаете).\n\nНажмите Enter, чтобы добавить бафф в белый список, и помните, только баффы со временем действия могут быть добавлены, пассивные и переключаемые способности будут проигнорированы."
L.Filter_ProminentList1						= "Белый список баффов 1"
L.Filter_ProminentList2						= "Белый список баффов 2"
L.Filter_ProminentListTip					= "Список всех баффов, добавленных в белый список. Чтобы удалить какой-либо бафф, выберите его из списка и нажмите кнопку Удалить ниже."

-- filters (prominent debuffs)
L.Filter_DebuffHeader						= "Белый список дебаффов"
L.Filter_DebuffDesc							= "Дебаффы могут быть помещены в белый список баффов. Это позволяет выделить их в отдельное окно, чтобы было легче отслеживать критически важные эффекты."
L.Filter_DebuffAdd							= "Добавить дебафф в белый список"
L.Filter_DebuffAddTip						= "ВНИМАНИЕ: Если добавить не дебафф, это не даст никакого эффекта. Используйте белый список баффов для этого.\n\nДебафф, который вы хотите который вы хотите добавить в белый список, должен иметь точно такое название, которое у него есть в игре, или вы можете ввести внутренний abilityID (если знаете).\n\nНажмите Enter, чтобы добавить дебафф в белый список, и помните, только дебаффы со временем действия могут быть добавлены, пассивные и переключаемые способности будут проигнорированы."
L.Filter_DebuffList1						= "Белый список дебаффов 1"
L.Filter_DebuffList2						= "Белый список дебаффов 2"
L.Filter_DebuffListTip						= "Список всех дебаффов, добавленных в белый список. Чтобы удалить какой-либо дебафф, выберите его из списка и нажмите кнопку Удалить ниже."
L.Filter_OnlyPlayerProminentDebuffs1		= "Только выбранные дебаффы игрока 1"
L.Filter_OnlyPlayerProminentDebuffs2		= "Только выбранные дебаффы игрока 2"
L.Filter_OnlyPlayerProminentDebuffsTip		= "Предотвращает отображение в данном окне дебаффов, наложенных на цель другими игроками, отображая только дебаффы от самого игрока. Отдельно от настроек фильтров цели."
L.Filter_DuplicateDebuffs					= "Разрешить дублирование дебаффов"
L.Filter_DuplicateDebuffsTip				= "Когда включено, дебаффы цели, отображаемые в окне выбранных дебаффов будут таже отображаться и в стандартном окне дебаффов (если настроено)"

-- filters (group frame buffs)
--L.Filter_GroupBuffHeader					= "Group Buff Assignments"
--L.Filter_GroupBuffDesc					= "This list determines what buffs will show next to each player\'s group or raid frame."
--L.Filter_GroupBuffAdd						= "Add Whitelist Group Buff"
--L.Filter_GroupBuffAddTip					= "To add a buff aura to track on group frames you must enter its name exactly as it appears ingame, or you may enter the numerical abilityID (if known).\n\nPress enter to add the input aura to the list."
--L.Filter_GroupBuffList					= "Current Group Buff Whitelist"
--L.Filter_GroupBuffListTip					= "List of all buffs set to appear on group frames. To remove existing auras, select it from the list and use the Remove button below."
--L.Filter_GroupBuffsByDuration				= "Exclude Buffs by Duration"
--L.Filter_GroupBuffsByDurationTip			= "Only show group buffs with a duration shorter than selected below (in seconds)."
--L.Filter_GroupBuffThreshold				= "Buff Duration Threshold"
--L.Filter_GroupBuffWhitelistOff			= "Use as Buff Blacklist"
--L.Filter_GroupBuffWhitelistOffTip			= "Turn the Group Buff Whitelist into a Blacklist and display ALL auras with a duration EXCEPT those input here."
	L.Filter_GroupBuffOnlyPlayer				= "Баффы только для групп игроков"
	L.Filter_GroupBuffOnlyPlayerTip				= "Показывать только групповые бафы, которые были наложены игроком или одним из его питомцев."
--L.Filter_GroupBuffsEnabled				= "Enable Group Buffs"
--L.Filter_GroupBuffsEnabledTip				= "If disabled then group buffs will not show at all."

-- filters (group frame debuffs)
--L.Filter_GroupDebuffHeader				= "Group Debuff Assignments"
--L.Filter_GroupDebuffDesc					= "This list determines what debuffs will show next to each player\'s group or raid frame."
--L.Filter_GroupDebuffAdd					= "Add Whitelist Group Debuff"
--L.Filter_GroupDebuffAddTip				= "To add a debuff aura to track on group frames you must enter its name exactly as it appears ingame, or you may enter the numerical abilityID (if known).\n\nPress enter to add the input aura to the list."
--L.Filter_GroupDebuffList					= "Current Group Debuff Whitelist"
--L.Filter_GroupDebuffListTip				= "List of all debuffs set to appear on group frames. To remove existing auras, select it from the list and use the Remove button below."
--L.Filter_GroupDebuffsByDuration			= "Exclude Debuffs by Duration"
--L.Filter_GroupDebuffsByDurationTip		= "Only show group debuffs with a duration shorter than selected below (in seconds)."
--L.Filter_GroupDebuffThreshold				= "Debuff Duration Threshold"
--L.Filter_GroupDebuffWhitelistOff			= "Use as Debuff Blacklist"
--L.Filter_GroupDebuffWhitelistOffTip		= "Turn the Group Debuff Whitelist into a Blacklist and display ALL auras with a duration EXCEPT those input here."
--L.Filter_GroupDebuffsEnabled				= "Enable Group Debuffs"
--L.Filter_GroupDebuffsEnabledTip			= "If disabled then group debuffs will not show at all."

-- filters (unit options)
L.Filter_ESOPlus							= "Фильтр ESO Plus"
L.Filter_ESOPlusPlayerTip					= "Задаёт, следует ли блокировать отображение статуса ESO Plus на вас."
L.Filter_ESOPlusTargetTip					= "Задаёт, следует ли блокировать отображение статуса ESO Plus на вашей цели."

L.Filter_Block								= "Фильтр блока"
L.Filter_BlockPlayerTip						= "Задаёт, следует ли блокировать отображение баффа Блока, когда вы блокируете."
L.Filter_BlockTargetTip						= "Задаёт, следует ли блокировать отображение баффа Блока, когда ваш противник блокирует."
L.Filter_MundusBoon							= "Фильтр камней Мундуса"
L.Filter_MundusBoonPlayerTip				= "Задаёт, следует ли блокировать отображение бонусов камней Мундуса на вашем персонаже."
L.Filter_MundusBoonTargetTip				= "Задаёт, следует ли блокировать отображение бонусов камней Мундуса на вашей цели."
L.Filter_Cyrodiil							= "Фильтр бонусов Сиродила"
L.Filter_CyrodiilPlayerTip					= "Задаёт, следует ли блокировать отображение баффов кампании Сиродила на вашем персонаже."
L.Filter_CyrodiilTargetTip					= "Задаёт, следует ли блокировать отображение баффов кампании Сиродила на вашей цели."
L.Filter_Disguise							= "Фильтр маскировки"
L.Filter_DisguisePlayerTip					= "Задаёт, следует ли блокировать отображение баффа активной маскировки на вашем персонаже."
L.Filter_DisguiseTargeTtip					= "Задаёт, следует ли блокировать отображение баффа активной маскировки на вашей цели."
L.Filter_MajorEffects						= "Фильтр Мажорных эффектов"
L.Filter_MajorEffectsTargetTip				= "Задаёт, следует ли блокировать отображение Мажорных эффектов (напр. Major Maim, Major Sorcery) на вашей цели."
L.Filter_MinorEffects						= "Фильтр Минорных эффектов"
L.Filter_MinorEffectsTargetTip				= "Задаёт, следует ли блокировать отображение Минорных эффектов (напр. Minor Maim, Minor Sorcery) на вашей цели."
L.Filter_SoulSummons						= "Фильтр перезарядки Soul Summons"
L.Filter_SoulSummonsPlayerTip				= "Задаёт, следует ли блокировать отображение перезарядки \'баффа\' Soul Summons на вашем персонаже."
L.Filter_SoulSummonsTargetTip				= "Задаёт, следует ли блокировать отображение перезарядки \'баффа\' Soul Summons на вашей цели."
L.Filter_VampLycan							= "Фильтр эффектов Вампира & Оборотня"
L.Filter_VampLycanPlayerTip					= "Задаёт, следует ли блокировать отображение баффов Вампиризма и Ликантропии на вашем персонаже."
L.Filter_VampLycanTargetTip					= "Задаёт, следует ли блокировать отображение баффов Вампиризма и Ликантропии на вашей цели."
L.Filter_VampLycanBite						= "Перезарядка укусов Вампира & Оборотня"
L.Filter_VampLycanBitePlayerTip				= "Задаёт, следует ли блокировать отображение времени перезарядки укуса Вампира и Оборотня на вашем персонаже."
L.Filter_VampLycanBiteTargetTip				= "Задаёт, следует ли блокировать отображение времени перезарядки укуса Вампира и Оборотня на вашей цели."


-- ------------------------
-- SETTINGS: CAST BAR
-- ------------------------
L.CastBar_Enable							= "Включить кастбар"
L.CastBar_EnableTip							= "Задаёт, следует включить перемещаемую полоску каста, отображающую прогресс применения способности, которая имеет время на применение или применяется в течение определённого времени."
L.CastBar_Alpha								= "Прозрачность"
L.CastBar_AlphaTip							= "Задаёт прозрачность полоски каста. Значение 100 сделает полоску полностью НЕпрозрачной."
L.CastBar_Scale								= "Размер"
L.CastBar_ScaleTip							= "Задаёт размер полоски каста в процентах. Значение 100 - размер по умолчанию."

-- cast bar (name)
L.CastBar_NameHeader						= "Название применяемой способности"
L.CastBar_NameShow							= "Показывать название способности"

-- cast bar (timer)
L.CastBar_TimerHeader						= "Время применения"
L.CastBar_TimerShow							= "Показывать время применения способности"

-- cast bar (bar)
L.CastBar_BarHeader							= "Тамер полоски применения"
L.CastBar_BarReverse						= "Обратить направление отсчёта"
L.CastBar_BarReverseTip						= "Задаёт, следует ли обратить направление отсчёта таймера применения слева на право. В этом случае, применяемые способности заполняются в противоположном направлении."
L.CastBar_BarGloss							= "Блеск полоски"
L.CastBar_BarGlossTip						= "Задаёт, должна ли полоска каста блестеть, когда она появляется."
L.CastBar_BarColor							= "Цвет полоски"
L.CastBar_BarColorTip						= "Задаёт цвет полоски каста. Левый цвет определяет цвет начала полоски (откуда начинается отсчёт), а второй определяет цвет конца полоски (когда отсчёт почти истекает)."


-- ------------------------
-- SETTINGS: DISPLAY FRAMES
-- ------------------------
L.DisplayFrame_Alpha						= "Прозрачность окна"
L.DisplayFrame_AlphaTip						= "Задаёт прозрачность окна. Значение 100 сделает окно полностью НЕпрозрачным."
L.DisplayFrame_Scale						= "Размер окна"
L.DisplayFrame_ScaleTip						= "Задаёт размер окна баффов в процентах. Значение 100 - размер по умолчанию."

-- display frames (aura)
L.DisplayFrame_AuraHeader					= "Отображение баффов"
L.DisplayFrame_Style						= "Стиль баффов"
L.DisplayFrame_StyleTip						= "Задаёт стиль, в котором будут отображаться баффы в этом окне.\n\n|cffd100Полное отображение|r - Показывает название и иконку способности, полоску таймера и текст.\n\n|cffd100Только иконка|r - Показывает только иконку способности и текст таймера, для данного стиля представлено больше настроек для направления появления новых баффов, чем для других.\n\n|cffd100Минимальное отображение|r - Показывает толкьо название способности и небольшую полоску таймера."
L.DisplayFrame_AuraCooldown					= "Показывать таймер"
L.DisplayFrame_AuraCooldownTip				= "Показывает анимацию таймера на иконке баффа. Это также позволяет легче отличить баффы от других способностей, чем при отображении по умолчанию."
L.DisplayFrame_CooldownTimed				= "Цвет: Временные баффы & дебаффы"
--L.DisplayFrame_CooldownTimedB				= "Color: Timed Buffs"
--L.DisplayFrame_CooldownTimedD				= "Color: Timed Debuffs"
L.DisplayFrame_CooldownTimedTip				= "Задаёт цвет полоски анимации таймера на иконке баффов с длительность. Левый цвет определяет цвет таймера баффов, а правый - дебаффов."
--L.DisplayFrame_CooldownTimedBTip			= "Set the icon timer animation color for buffs with a set duration."
--L.DisplayFrame_CooldownTimedDTip			= "Set the icon timer animation color for debuffs with a set duration."
L.DisplayFrame_Growth						= "Направление появления баффов"
L.DisplayFrame_GrowthTip					= "Задаёт направление для появления новых баффов от отправной точки. Для центрированной настройки баффы будут появляться по сторонам поочерёдно от отправной точки, начиная со стороны, указанной в префиксе вправо|влево.\n\nБаффы могут появляться вверх или вниз только если отображаются в |cffd100Полном|r или |cffd100Минимальном|r стиле."
L.DisplayFrame_Padding						= "Расстояние между баффами"
L.DisplayFrame_PaddingTip					= "Задаёт интервал промежутка между каждым баффом."
L.DisplayFrame_Sort							= "Порядок сортировки баффов"
L.DisplayFrame_SortTip						= "Задаёт, в каком порядке будут отсортированы баффы. Напрмиер, по названию, оставшемуся времени или по порядку их получения; для любого из этих параметров может быть установлен дополнительный параметр по возрастанию или убыванию.\n\nПри сортировке по оставшемуся времени, любые пассивные или переключаемые способности будут отсортированы по имени и будут отображаться у отправной точки (по возрастанию), или максимально удалённо от отправной точки (по убыванию), а временные способности будут идти перед (или после) них."
L.DisplayFrame_Highlight					= "Подсветка иконки баффов"
L.DisplayFrame_HighlightTip					= "Задаёт, следует ли подсвечивать иконку переключаемых баффов, чтобы помочь отличить их от пассивных баффов.\n\nНе доступно в |cffd100Минимальном|r стиле, поскольку в нем не отображаются иконки."
L.DisplayFrame_Tooltips						= "Название баффов в подсказке"
L.DisplayFrame_TooltipsTip					= "Задаёт, следует ли выводить подсказку с названием баффа при наведении курсора на иконку в стиле |cffd100Только иконка|r."
L.DisplayFrame_TooltipsWarn					= "Подсказки должны быть временно отключены для перемещения окон отображения, или они будут мешать перемещению."
L.DisplayFrame_AuraClassOverride			= "Определение типа ауры"
L.DisplayFrame_AuraClassOverrideTip			= "Позволяет вам указать адоону Srendarr к какому типу относится та или иная аура (переключаемые и пассивные игнорируются) - баффам или дебаффам, вне зависимости от их настоящего типа.\n\nПолезно при добавлении дебаффов и AOE в одно окно, и чтобы они выглядели в едином стиле."

-- display frames (group)
L.DisplayFrame_GRX							= "Горизонтальный сдвиг"
L.DisplayFrame_GRXTip						= "Задаёт положение иконок баффов для фрэймов группы/рейда, влево и вправо."
L.DisplayFrame_GRY							= "Вертикальный сдвиг"
L.DisplayFrame_GRYTip						= "Задаёт положение иконок баффов для фрэймов группы/рейда, вверх и вниз."

-- display frames (name)
L.DisplayFrame_NameHeader					= "Название способности"

-- display frames (timer)
L.DisplayFrame_TimerHeader					= "Таймер"
L.DisplayFrame_TimerLocation				= "Положение таймера"
L.DisplayFrame_TimerLocationTip				= "Задаёт положение таймера для каждого баффа по отношению к его иконке. Настройка Скрыто уберёт отображение таймера для всех баффов в этом окне.\n\nДля каждого стиля доступны только определённые настройки."
L.DisplayFrame_TimerHMS						= "Миунты, если время > 1 часа"
L.DisplayFrame_TimerHMSTip					= "Задаёт, стоит ли отображать оставшиеся минуты, даже если время действия баффа больше 1 часа."

-- display frames (bar)
L.DisplayFrame_BarHeader					= "Полоска таймера"
L.DisplayFrame_HideFullBar					= "Скрыть полоску при полном отображении"
L.DisplayFrame_HideFullBarTip				= "Показывает только текстовое название баффа в режиме полного отображения."
L.DisplayFrame_BarReverse					= "Обратить направление отсчета"
L.DisplayFrame_BarReverseTip				= "Задаёт, стоит ли обратить направление отсчёта полоски таймера, чтобы изменить его в обратном направлении. В |cffd100Полном|r стиле эта настройка также задаёт положение иконки баффа справа от полоски, вместо положения слева по умолчанию."
L.DisplayFrame_BarGloss						= "Блеск полоски"
L.DisplayFrame_BarGlossTip					= "Задаёт, должна ли полоска таймера блестеть при появлении."
L.DisplayFrame_BarBuffTimed					= "Цвет: Временные баффы"
L.DisplayFrame_BarBuffTimedTip				= "Задаёт цвет полоски таймера баффов, имеющих определённую длительность. Левый цвет определяет цвет начала полоски (откуда начинается отсчёт), а второй определяет цвет конца полоски (когда отсчёт почти истекает)."
L.DisplayFrame_BarBuffPassive				= "Цвет: Пассивные баффы"
L.DisplayFrame_BarBuffPassiveTip			= "Задаёт цвет полоски таймера пассивных баффов, не имеющих длительности. Левый цвет определяет цвет начала полоски (откуда начинается отсчёт), а второй определяет цвет конца полоски (когда отсчёт почти истекает)."
L.DisplayFrame_BarDebuffTimed				= "Цвет: Временные дебаффы"
L.DisplayFrame_BarDebuffTimedTip			= "Задаёт цвет полоски таймера дебаффов, имеющих определённую длительность. Левый цвет определяет цвет начала полоски (откуда начинается отсчёт), а второй определяет цвет конца полоски (когда отсчёт почти истекает)."
L.DisplayFrame_BarDebuffPassive				= "Цвет: Пассивные дебаффы"
L.DisplayFrame_BarDebuffPassiveTip			= "Задаёт цвет полоски таймера пассивных дебаффов, не имеющих длительности. Левый цвет определяет цвет начала полоски (откуда начинается отсчёт), а второй определяет цвет конца полоски (когда отсчёт почти истекает)."
L.DisplayFrame_BarToggled					= "Цвет: Переключаемые баффов"
L.DisplayFrame_BarToggledTip				= "Задаёт цвет полоски таймера переключаемых баффов, не имеющих длительности. Левый цвет определяет цвет начала полоски (откуда начинается отсчёт), а второй определяет цвет конца полоски (когда отсчёт почти истекает)."


-- ------------------------
-- SETTINGS: PROFILES
-- ------------------------
L.Profile_Desc								= "Здесь можно управлять профилями настроек, включая настройку, позволяющую распространить настройки профиля и все текущие настройки для ВСЕХ персонажей на аккаунте. Из-за постоянство данных настроек, управление профилями сначала должно быть включено чекбоксе наверху этой панели."
L.Profile_UseGlobal							= "Настройки на аккаунт"
L.Profile_AccountWide						="Аккаунт широкий"
L.Profile_UseGlobalWarn						= "Переключение между локальным и глобальным профилями вызовет перезагрузку интерфейса."
L.Profile_Copy								= "Профиль для копирования"
L.Profile_CopyTip							= "Выберите профиль, настройки которого будут скопированы в текущий активный профиль. Активный профиль - это профиль текущего персонажа или глобальный профиль, если включено распространение настроек на весь аккаунт. Настройки текущего профиля будут немедленно перезаписаны.\n\nЭто действие не может быть отменено!"
L.Profile_CopyButton						= "Копировать профиль"
L.Profile_CopyButtonWarn					= "Копирование профиля вызовет перезагрузку интерфейса."
L.Profile_CopyCannotCopy					= "Невозможно скопировать выбранный профиль. Попробуйте снова или выберите другой профиль."
L.Profile_Delete							= "Профиль для удаления"
L.Profile_DeleteTip							= "Выберите профиль, настройки которого должны быть удалены из базы. Если этот персонаж позже войдёт в игре и вы не используете глобальный профиль на аккаунт, для него будут созданы новые настройки по умолчанию.\n\nУдаление профиля не может быть отменено!"
L.Profile_DeleteButton						= "Удалить профиль"
L.Profile_Guard								= "Включить управление профилями"


-- ------------------------
-- Gear Cooldown Alt Names
-- ------------------------
L.YoungWasp									= "Молодая оса"
L.MolagKenaHit1								= " 1-й хит"
L.VolatileAOE								= "Неустойчивая фамильярная способность"


if (GetCVar('language.2') == "ru") then -- overwrite GetLocale for new language
    for k, v in pairs(Srendarr:GetLocale()) do
        if (not L[k]) then -- no translation for this string, use default
            L[k] = v
        end
    end

    function Srendarr:GetLocale() -- set new locale return
        return L
    end
end
