
const int Value_Weed = 1;
const int Value_Beet = 8;
const int HP_Beet = 2;
const int Value_SwampHerb = 10;
const int Value_Mana_Herb_01 = 10;
const int Mana_Mana_Herb_01 = 10;
const int Value_Mana_Herb_02 = 20;
const int Mana_Mana_Herb_02 = 15;
const int Value_Mana_Herb_03 = 40;
const int Mana_Mana_Herb_03 = 20;
const int Value_Health_Herb_01 = 20;
const int HP_Health_Herb_01 = 10;
const int Value_Health_Herb_02 = 40;
const int HP_Health_Herb_02 = 20;
const int Value_Health_Herb_03 = 60;
const int HP_Health_Herb_03 = 30;
const int Value_Dex_Herb_01 = 300;
const int Value_Strength_Herb_01 = 500;
const int Value_Speed_Herb_01 = 75;
const int Speed_Boost = 15000;
const int Value_Mushroom_01 = 20;
const int HP_Mushroom_01 = 5;
const int Value_Mushroom_02 = 50;
const int HP_Mushroom_02 = 15;
const int Value_Forestberry = 10;
const int HP_Forestberry = 5;
const int Value_Blueplant = 10;
const int HP_Blueplant = 5;
const int Mana_Blueplant = 5;
const int Value_Planeberry = 10;
const int HP_Planeberry = 5;
const int Value_Temp_Herb = 100;
const int HP_Temp_Herb = 5;
const int Value_Perm_Herb = 600;
const int HP_Perm_Herb = 5;

instance ItPl_Weed(C_Item)
{
	name = "Weeds";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Weed;
	visual = "ItPl_Weed.3ds";
	material = MAT_LEATHER;
	scemeName = "FOOD";
	description = name;
	text[5] = NAME_Value;
	count[5] = Value_Weed;
};

instance ItPl_Beet(C_Item)
{
	name = "Turnip";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Beet;
	visual = "ItPl_Beet.3ds";
	material = MAT_LEATHER;
	on_state[0] = Use_Beet;
	scemeName = "FOOD";
	description = name;
	text[5] = NAME_Value;
	count[5] = Value_Beet;
};


func void Use_Beet()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Beet);
};


instance ItPl_SwampHerb(C_Item)
{
	name = "Swampweed";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_SwampHerb;
	visual = "ItPl_SwampHerb.3ds";
	material = MAT_LEATHER;
	on_state[0] = Use_SwampHerb;
	scemeName = "FOOD";
	description = name;
	text[5] = NAME_Value;
	count[5] = Value_SwampHerb;
};


func void Use_SwampHerb()
{
	if(Npc_IsPlayer(self))
	{
		Wld_PlayEffect("SLOW_TIME",self,self,0,0,0,FALSE);
	};
};


instance ItPl_Mana_Herb_01(C_Item)
{
	name = "Fire Nettle";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Mana_Herb_01;
	visual = "ItPl_Mana_Herb_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_Mana_Herb_01;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_Mana;
	count[1] = Mana_Mana_Herb_01;
	text[5] = NAME_Value;
	count[5] = Value_Mana_Herb_01;
};


func void Use_Mana_Herb_01()
{
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Mana_Herb_01);
};


instance ItPl_Mana_Herb_02(C_Item)
{
	name = "Fireweed";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Mana_Herb_02;
	visual = "ItPl_Mana_Herb_02.3ds";
	material = MAT_LEATHER;
	on_state[0] = Use_Mana_Herb_02;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_Mana;
	count[1] = Mana_Mana_Herb_02;
	text[5] = NAME_Value;
	count[5] = Value_Mana_Herb_02;
};


func void Use_Mana_Herb_02()
{
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Mana_Herb_02);
};


instance ItPl_Mana_Herb_03(C_Item)
{
	name = "Fire Root";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Mana_Herb_03;
	visual = "ItPl_Mana_Herb_03.3ds";
	material = MAT_LEATHER;
	on_state[0] = Use_Mana_Herb_03;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_Mana;
	count[1] = Mana_Mana_Herb_03;
	text[5] = NAME_Value;
	count[5] = Value_Mana_Herb_03;
};


func void Use_Mana_Herb_03()
{
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Mana_Herb_03);
};


instance ItPl_Health_Herb_01(C_Item)
{
	name = "Healing Plant";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Health_Herb_01;
	visual = "ItPl_Health_Herb_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_Health_Herb_01;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Health_Herb_01;
	text[5] = NAME_Value;
	count[5] = Value_Health_Herb_01;
};


func void Use_Health_Herb_01()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Health_Herb_01);
};


instance ItPl_Health_Herb_02(C_Item)
{
	name = "Healing Herb";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Health_Herb_02;
	visual = "ItPl_Health_Herb_02.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_Health_Herb_02;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Health_Herb_02;
	text[5] = NAME_Value;
	count[5] = Value_Health_Herb_02;
};


func void Use_Health_Herb_02()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Health_Herb_02);
};


instance ItPl_Health_Herb_03(C_Item)
{
	name = "Healing Root";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Health_Herb_03;
	visual = "ItPl_Health_Herb_03.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_Health_Herb_03;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Health_Herb_03;
	text[5] = NAME_Value;
	count[5] = Value_Health_Herb_03;
};


func void Use_Health_Herb_03()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Health_Herb_03);
};


instance ItPl_Dex_Herb_01(C_Item)
{
	name = "Goblin Berries";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Dex_Herb_01;
	visual = "ItPl_Dex_Herb_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_Dex_Herb_01;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_Dex;
	count[1] = 1;
	text[5] = NAME_Value;
	count[5] = Value_Dex_Herb_01;
};


func void Use_Dex_Herb_01()
{
	B_RaiseAttribute(self,ATR_DEXTERITY,1);
	Dexterity_Herb_Total_Bonus = Dexterity_Herb_Total_Bonus + 1;
	var string logBonus;
	logBonus = ConcatStrings("I have now gained a total of ", IntToString(Dexterity_Herb_Total_Bonus));
	logBonus = ConcatStrings(logBonus, " dexterity from eating Goblin Berries");
	Log_CreateTopic(Topic_Dexterity,LOG_NOTE);
	B_LogEntry(Topic_Dexterity,logBonus);
};


instance ItPl_Strength_Herb_01(C_Item)
{
	name = "Dragonroot";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Strength_Herb_01;
	visual = "ItPl_Strength_Herb_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_Strength_Herb_01;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_Str;
	count[1] = 1;
	text[5] = NAME_Value;
	count[5] = Value_Strength_Herb_01;
};


func void Use_Strength_Herb_01()
{
	B_RaiseAttribute(self,ATR_STRENGTH,1);
	Strength_Herb_Total_Bonus = Strength_Herb_Total_Bonus + 1;
	var string logBonus;
	logBonus = ConcatStrings("I have now gained a total of ", IntToString(Strength_Herb_Total_Bonus));
	logBonus = ConcatStrings(logBonus, " strength from eating Dragonroot");
	Log_CreateTopic(Topic_Strength,LOG_NOTE);
	B_LogEntry(Topic_Strength,logBonus);
};


instance ItPl_Speed_Herb_01(C_Item)
{
	name = "Snapperweed";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Speed_Herb_01;
	visual = "ItPl_Speed_Herb_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_Speed_Herb_01;
	scemeName = "FOOD";
	text[3] = NAME_Sec_Duration;
	count[3] = Speed_Boost / 1000;
	description = name;
	text[5] = NAME_Value;
	count[5] = Value_Speed_Herb_01;
};


func void Use_Speed_Herb_01()
{
	Mdl_ApplyOverlayMdsTimed(self,"HUMANS_SPRINT.MDS",Speed_Boost);
};


instance ItPl_Mushroom_01(C_Item)
{
	name = "Dark Mushroom";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Mushroom_01;
	visual = "ItPl_Mushroom_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_Mushroom_01;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Mushroom_01;
	text[5] = NAME_Value;
	count[5] = Value_Mushroom_01;
};


func void Use_Mushroom_01()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Mushroom_01);
	if(Npc_IsPlayer(self))
	{
		Dunkelpilz_Bonus = Dunkelpilz_Bonus + 1;
		if(Dunkelpilz_Bonus == 50)
		{
			B_RaiseAttribute(self,ATR_MANA_MAX,5);
			Npc_ChangeAttribute(self,ATR_MANA,5);
			Dunkelpilz_Total_Bonus = Dunkelpilz_Total_Bonus + 5;
			var string logBonus;
			logBonus = ConcatStrings("I have now gained a total of ", IntToString(Dunkelpilz_Total_Bonus));
			logBonus = ConcatStrings(logBonus, " mana from eating Dark mushrooms");
			Log_CreateTopic(Topic_Mana,LOG_NOTE);
			B_LogEntry(Topic_Mana,logBonus);
			Snd_Play("LevelUp");
			Dunkelpilz_Bonus = 0;
		};
	};
};


instance ItPl_Mushroom_02(C_Item)
{
	name = "Digger Meat";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Mushroom_02;
	visual = "ItPl_Mushroom_02.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_Mushroom_02;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Mushroom_02;
	text[5] = NAME_Value;
	count[5] = Value_Mushroom_02;
};


func void Use_Mushroom_02()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Mushroom_02);
};


instance ItPl_Blueplant(C_Item)
{
	name = "Blue Elder";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Blueplant;
	visual = "ItPl_Blueplant.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_Blueplant;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Blueplant;
	text[2] = NAME_Bonus_Mana;
	count[2] = Mana_Blueplant;
	text[5] = NAME_Value;
	count[5] = Value_Blueplant;
};


func void Use_Blueplant()
{
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Blueplant);
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Blueplant);
};


instance ItPl_Forestberry(C_Item)
{
	name = "Woodland Berry";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Forestberry;
	visual = "ItPl_Forestberry.3DS";
	material = MAT_LEATHER;
	scemeName = "FOOD";
	on_state[0] = Use_Forestberry;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Forestberry;
	text[5] = NAME_Value;
	count[5] = Value_Forestberry;
};


func void Use_Forestberry()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Forestberry);
};


instance ItPl_Planeberry(C_Item)
{
	name = "Meadow Berry";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Planeberry;
	visual = "ItPl_Planeberry.3DS";
	material = MAT_LEATHER;
	scemeName = "FOOD";
	on_state[0] = Use_Planeberry;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Planeberry;
	text[5] = NAME_Value;
	count[5] = Value_Planeberry;
};


func void Use_Planeberry()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Planeberry);
};


instance ItPl_Temp_Herb(C_Item)
{
	name = "Meadow Knotweed";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI | ITEM_MISSION;
	value = Value_Temp_Herb;
	visual = "ItPl_Temp_Herb.3ds";
	material = MAT_LEATHER;
	scemeName = "FOOD";
	on_state[0] = Use_Temp_Herb;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Temp_Herb;
	text[5] = NAME_Value;
	count[5] = Value_Temp_Herb;
};


func void Use_Temp_Herb()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Temp_Herb);
};


instance ItPl_Perm_Herb(C_Item)
{
	name = "King's Sorrel";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI | ITEM_MISSION;
	value = Value_Perm_Herb;
	visual = "ItPl_Perm_Herb.3ds";
	material = MAT_LEATHER;
	scemeName = "FOOD";
	on_state[0] = Use_Perm_Herb;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Perm_Herb;
	text[5] = NAME_Value;
	count[5] = Value_Perm_Herb;
};


func void Use_Perm_Herb()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Perm_Herb);
};

