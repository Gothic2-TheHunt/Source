
const int Value_HpEssenz = 50;
const int HP_Essenz = 60;
const int Value_HpExtrakt = 75;
const int HP_Extrakt = 90;
const int Value_HpElixier = 100;
const int HP_Elixier = 120;
const int Value_ManaEssenz = 50;
const int Mana_Essenz = 60;
const int Value_ManaExtrakt = 75;
const int Mana_Extrakt = 90;
const int Value_ManaElixier = 100;
const int Mana_Elixier = 120;
const int Value_StrElixier = 1300;
const int STR_Elixier = 3;
const int Value_DexElixier = 1300;
const int DEX_Elixier = 3;
const int Value_HpMaxElixier = 1200;
const int HPMax_Elixier = 10;
const int Value_LittleHpMaxElixier = 650;
const int HPMax_LittleElixier = 5;
const int Value_ManaMaxElixier = 1100;
const int ManaMax_Elixier = 5;
const int Value_MegaDrink = 1800;
const int STRorDEX_MegaDrink = 15;
const int Value_Speed = 75;
const int Time_Speed = 300000;
const int Value_ManaTrunk = 200;
const int Value_HpTrunk = 150;

instance ItPo_Mana_01(C_Item)
{
	name = NAME_Trank;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_ManaEssenz;
	visual = "ItPo_Mana_01.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Mana_01;
	scemeName = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_MANAPOTION";
	description = "Mana Essence";
	text[1] = NAME_Bonus_Mana;
	count[1] = Mana_Essenz;
	text[5] = NAME_Value;
	count[5] = Value_ManaEssenz;
};


func void UseItPo_Mana_01()
{
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Essenz);
};


instance ItPo_Mana_02(C_Item)
{
	name = NAME_Trank;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_ManaExtrakt;
	visual = "ItPo_Mana_02.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Mana_02;
	scemeName = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_MANAPOTION";
	description = "Mana Extract";
	text[1] = NAME_Bonus_Mana;
	count[1] = Mana_Extrakt;
	text[5] = NAME_Value;
	count[5] = Value_ManaExtrakt;
};


func void UseItPo_Mana_02()
{
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Extrakt);
};


instance ItPo_Mana_03(C_Item)
{
	name = NAME_Trank;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_ManaElixier;
	visual = "ItPo_Mana_03.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Mana_03;
	scemeName = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_MANAPOTION";
	description = "Mana Elixir";
	text[1] = NAME_Bonus_Mana;
	count[1] = Mana_Elixier;
	text[5] = NAME_Value;
	count[5] = Value_ManaElixier;
};


func void UseItPo_Mana_03()
{
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Elixier);
};


instance ItPo_Health_01(C_Item)
{
	name = NAME_Trank;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_HpEssenz;
	visual = "ItPo_Health_01.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Health_01;
	scemeName = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_HEALTHPOTION";
	description = "Essence of Healing";
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Essenz;
	text[5] = NAME_Value;
	count[5] = Value_HpEssenz;
};


func void UseItPo_Health_01()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Essenz);
};


instance ItPo_Health_02(C_Item)
{
	name = NAME_Trank;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_HpExtrakt;
	visual = "ItPo_Health_02.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Health_02;
	scemeName = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_HEALTHPOTION";
	description = "Extract of Healing";
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Extrakt;
	text[5] = NAME_Value;
	count[5] = Value_HpExtrakt;
};


func void UseItPo_Health_02()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Extrakt);
};


instance ItPo_Health_03(C_Item)
{
	name = NAME_Trank;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_HpElixier;
	visual = "ItPo_Health_03.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Health_03;
	scemeName = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_HEALTHPOTION";
	description = "Elixir of Healing";
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Elixier;
	text[5] = NAME_Value;
	count[5] = Value_HpElixier;
};


func void UseItPo_Health_03()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Elixier);
};


instance ItPo_Perm_STR(C_Item)
{
	name = NAME_Trank;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_StrElixier;
	visual = "ItPo_Perm_STR.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Perm_STR;
	scemeName = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = "Elixir of Strength";
	text[1] = NAME_Bonus_Str;
	count[1] = STR_Elixier;
	text[5] = NAME_Value;
	count[5] = Value_StrElixier;
};


func void UseItPo_Perm_STR()
{
	B_RaiseAttribute(self,ATR_STRENGTH,STR_Elixier);
	Strength_Potion_Total_Bonus = Strength_Potion_Total_Bonus + STR_Elixier;
	var string logBonus;
	logBonus = ConcatStrings("I have now gained a total of ", IntToString(Strength_Potion_Total_Bonus));
	logBonus = ConcatStrings(logBonus, " strength from drinking Elixirs of Strength");
	Log_CreateTopic(Topic_Strength,LOG_NOTE);
	B_LogEntry(Topic_Strength,logBonus);
};


instance ItPo_Perm_DEX(C_Item)
{
	name = NAME_Trank;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_DexElixier;
	visual = "ItPo_Perm_DEX.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Perm_DEX;
	scemeName = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = "Elixir of Dexterity";
	text[1] = NAME_Bonus_Dex;
	count[1] = DEX_Elixier;
	text[5] = NAME_Value;
	count[5] = Value_DexElixier;
};


func void UseItPo_Perm_DEX()
{
	B_RaiseAttribute(self,ATR_DEXTERITY,DEX_Elixier);
	Dexterity_Potion_Total_Bonus = Dexterity_Potion_Total_Bonus + DEX_Elixier;
	var string logBonus;
	logBonus = ConcatStrings("I have now gained a total of ", IntToString(Dexterity_Potion_Total_Bonus));
	logBonus = ConcatStrings(logBonus, " dexterity from drinking Elixirs of Dexterity");
	Log_CreateTopic(Topic_Dexterity,LOG_NOTE);
	B_LogEntry(Topic_Dexterity,logBonus);
};

instance ItPo_Perm_Health(C_Item)
{
	name = NAME_Trank;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_HpMaxElixier;
	visual = "ItPo_Perm_Health.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Perm_Health;
	scemeName = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_HEALTHPOTION";
	description = "Elixir of Life";
	text[1] = NAME_Bonus_HpMax;
	count[1] = HPMax_Elixier;
	text[5] = NAME_Value;
	count[5] = Value_HpMaxElixier;
};


func void UseItPo_Perm_Health()
{
	B_RaiseAttribute(self,ATR_HITPOINTS_MAX,HPMax_Elixier);
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HPMax_Elixier);
	Health_Potion_Total_Bonus = Health_Potion_Total_Bonus + HPMax_Elixier;
	var string logBonus;
	logBonus = ConcatStrings("I have now gained a total of ", IntToString(Health_Potion_Total_Bonus));
	logBonus = ConcatStrings(logBonus, " health from drinking Essences/Elixirs of Life");
	Log_CreateTopic(Topic_Health,LOG_NOTE);
	B_LogEntry(Topic_Health,logBonus);
};


instance ItPo_Perm_LittleHealth(C_Item)
{
	name = NAME_Trank;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_LittleHpMaxElixier;
	visual = "ItPo_Perm_Health.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Perm_LittleHealth;
	scemeName = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_HEALTHPOTION";
	description = "Essence of Life";
	text[1] = NAME_Bonus_HpMax;
	count[1] = HPMax_LittleElixier;
	text[5] = NAME_Value;
	count[5] = Value_LittleHpMaxElixier;
};


func void UseItPo_Perm_LittleHealth()
{
	B_RaiseAttribute(self,ATR_HITPOINTS_MAX,HPMax_LittleElixier);
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HPMax_LittleElixier);
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HPMax_Elixier);
	Health_Potion_Total_Bonus = Health_Potion_Total_Bonus + HPMax_LittleElixier;
	var string logBonus;
	logBonus = ConcatStrings("I have now gained a total of ", IntToString(Health_Potion_Total_Bonus));
	logBonus = ConcatStrings(logBonus, " health from drinking Essences/Elixirs of Life");
	Log_CreateTopic(Topic_Health,LOG_NOTE);
	B_LogEntry(Topic_Health,logBonus);
};


instance ItPo_Perm_Mana(C_Item)
{
	name = NAME_Trank;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_ManaMaxElixier;
	visual = "ItPo_Perm_Mana.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Perm_Mana;
	scemeName = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_MANAPOTION";
	description = "Elixir of Spirit";
	text[1] = NAME_Bonus_ManaMax;
	count[1] = ManaMax_Elixier;
	text[5] = NAME_Value;
	count[5] = Value_ManaMaxElixier;
};


func void UseItPo_Perm_Mana()
{
	B_RaiseAttribute(self,ATR_MANA_MAX,ManaMax_Elixier);
	Npc_ChangeAttribute(self,ATR_MANA,ManaMax_Elixier);
	Mana_Potion_Total_Bonus = Mana_Potion_Total_Bonus + ManaMax_Elixier;
	var string logBonus;
	logBonus = ConcatStrings("I have now gained a total of ", IntToString(Mana_Potion_Total_Bonus));
	logBonus = ConcatStrings(logBonus, " mana from drinking Essences/Elixirs of Spirit");
	Log_CreateTopic(Topic_Mana,LOG_NOTE);
	B_LogEntry(Topic_Mana,logBonus);
};


instance ItPo_Speed(C_Item)
{
	name = NAME_Trank;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_Speed;
	visual = "ItPo_Speed.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Speed;
	scemeName = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = "Speed Potion";
	text[1] = "Temporarily boosts speed.";
	text[3] = NAME_Duration;
	count[3] = Time_Speed / 60000;
	text[5] = NAME_Value;
	count[5] = value;
};


func void UseItPo_Speed()
{
	Mdl_ApplyOverlayMdsTimed(self,"HUMANS_SPRINT.MDS",Time_Speed);
};


instance ItPo_MegaDrink(C_Item)
{
	name = "Embarla Firgasto";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_MegaDrink;
	visual = "ItPo_Perm_Mana.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_MegaDrink;
	scemeName = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = name;
	text[3] = "Effects unknown.";
	text[5] = NAME_Value;
	count[5] = value;
};


func void UseItPo_MegaDrink()
{
	if(self.attribute[ATR_STRENGTH] < self.attribute[ATR_DEXTERITY])
	{
		B_RaiseAttribute(self,ATR_DEXTERITY,STRorDEX_MegaDrink);
		Embarla_Firgasto_Dexterity_Total_Bonus = Embarla_Firgasto_Dexterity_Total_Bonus + STRorDEX_MegaDrink;
		var string logBonus;
		logBonus = ConcatStrings("I have now gained a total of ", IntToString(Embarla_Firgasto_Dexterity_Total_Bonus));
		logBonus = ConcatStrings(logBonus, " dexterity from drinking Embarla Firgasto");
		Log_CreateTopic(Topic_Dexterity,LOG_NOTE);
		B_LogEntry(Topic_Dexterity,logBonus);
	}
	else
	{
		B_RaiseAttribute(self,ATR_STRENGTH,STRorDEX_MegaDrink);
		Embarla_Firgasto_Strength_Total_Bonus = Embarla_Firgasto_Strength_Total_Bonus + STRorDEX_MegaDrink;
		var string logBonus;
		logBonus = ConcatStrings("I have now gained a total of ", IntToString(Embarla_Firgasto_Strength_Total_Bonus));
		logBonus = ConcatStrings(logBonus, " strength from drinking Embarla Firgasto");
		Log_CreateTopic(Topic_Strength,LOG_NOTE);
		B_LogEntry(Topic_Strength,logBonus);
	};
	Npc_ChangeAttribute(self,ATR_MANA,-ATR_MANA);
	Snd_Play("DEM_Warn");
};

