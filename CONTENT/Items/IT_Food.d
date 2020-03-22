
const int Value_Apple = 10;
const int HP_Apple = 3;
const int Value_Cheese = 30;
const int HP_Cheese = 15;
const int Value_Bacon = 50;
const int HP_Bacon = 20;
const int Value_Bread = 20;
const int HP_Bread = 10;
const int Value_Fish = 15;
const int HP_Fish = 5;
const int Value_Rawmeat = 4;
const int HP_RawMeat = 6;
const int Value_Meat = 8;
const int HP_Meat = 12;
const int Value_Stew = 12;
const int HP_Stew = 20;
const int Value_FishSoup = 20;
const int HP_FishSoup = 10;
const int Value_Sausage = 30;
const int HP_Sausage = 12;
const int Value_Honey = 30;
const int HP_Honey = 15;
const int Value_Water = 10;
const int HP_Water = 8;
const int Value_Beer = 15;
const int Value_Coragon_Beer = 250;
const int HP_Beer = 3;
const int Mana_Beer = 1;
const int Value_Booze = 20;
const int HP_Booze = 3;
const int Mana_Booze = 6;
const int Value_Wine = 25;
const int Value_VinoWine = 300;
const int HP_Wine = 4;
const int Mana_Wine = 8;
const int HP_VinoWine = 2;
const int Mana_VinoWine = 2;
const int Value_Milk = 30;
const int HP_Milk = 7;
const int Mana_Milk = 7;

instance ItFo_Apple(C_Item)
{
	name = "Apple";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Apple;
	visual = "ItFo_Apple.3DS";
	material = MAT_LEATHER;
	scemeName = "FOOD";
	on_state[0] = Use_Apple;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Apple;
	text[3] = "A fresh apple,";
	text[4] = "firm and juicy.";
	text[5] = NAME_Value;
	count[5] = Value_Apple;
};


func void Use_Apple()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Apple);
	if(Npc_IsPlayer(self))
	{
		Apple_Bonus = Apple_Bonus + 1;
		if(Apple_Bonus == 7)
		{
			Print(PRINT_Eat1);
		};
		if(Apple_Bonus == 15)
		{
			Print(PRINT_Eat2);
		};
		if(Apple_Bonus == 25)
		{
			Print(PRINT_Eat3);
			B_RaiseAttribute(self,ATR_STRENGTH,1);
			Apple_Total_Bonus = Apple_Total_Bonus + 1;
			var string logBonus;
			logBonus = ConcatStrings("I have now gained a total of ", IntToString(Apple_Total_Bonus));
			logBonus = ConcatStrings(logBonus, " strength from eating Apples");
			Log_CreateTopic(Topic_Strength,LOG_NOTE);
			B_LogEntry(Topic_Strength,logBonus);
			Snd_Play("LevelUp");
			Apple_Bonus = 0;
		};
	};
};


instance ItFo_Cheese(C_Item)
{
	name = "Cheese";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Cheese;
	visual = "ItFo_Cheese.3DS";
	material = MAT_LEATHER;
	scemeName = "FOODHUGE";
	on_state[0] = Use_Cheese;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Cheese;
	text[5] = NAME_Value;
	count[5] = Value_Cheese;
};


func void Use_Cheese()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Cheese);
	if(Npc_IsPlayer(self))
	{
		Cheese_Bonus = Cheese_Bonus + 1;
		if(Cheese_Bonus == 10)
		{
			Print(PRINT_Eat4);
		};
		if(Cheese_Bonus == 16)
		{
			B_RaiseAttribute(self,ATR_DEXTERITY,1);
			Cheese_Total_Bonus = Cheese_Total_Bonus + 1;
			var string logBonus;
			logBonus = ConcatStrings("I have now gained a total of ", IntToString(Cheese_Total_Bonus));
			logBonus = ConcatStrings(logBonus, " dexterity from eating Cheese");
			Log_CreateTopic(Topic_Dexterity,LOG_NOTE);
			B_LogEntry(Topic_Dexterity,logBonus);
			Snd_Play("LevelUp");
			Cheese_Bonus = 0;
		};
	};
};


instance ItFo_Bacon(C_Item)
{
	name = "Ham";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Bacon;
	visual = "ItFo_Bacon.3ds";
	material = MAT_LEATHER;
	scemeName = "FOODHUGE";
	on_state[0] = Use_Bacon;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Bacon;
	text[5] = NAME_Value;
	count[5] = Value_Bacon;
};


func void Use_Bacon()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Bacon);
	if(Npc_IsPlayer(self))
	{
		Bacon_Bonus = Bacon_Bonus + 1;
		if(Bacon_Bonus == 14)
		{
			B_RaiseAttribute(self,ATR_HITPOINTS_MAX,3);
			Bacon_Total_Bonus = Bacon_Total_Bonus + 3;
			var string logBonus;
			logBonus = ConcatStrings("I have now gained a total of ", IntToString(Bacon_Total_Bonus));
			logBonus = ConcatStrings(logBonus, " health from eating Ham");
			Log_CreateTopic(Topic_Health,LOG_NOTE);
			B_LogEntry(Topic_Health,logBonus);
			Snd_Play("LevelUp");
			Bacon_Bonus = 0;
		};
	};
};


instance ItFo_Bread(C_Item)
{
	name = "Bread";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Bread;
	visual = "ItFo_Bread.3DS";
	material = MAT_LEATHER;
	scemeName = "FOODHUGE";
	on_state[0] = Use_Bread;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Bread;
	text[5] = NAME_Value;
	count[5] = Value_Bread;
};


func void Use_Bread()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Bread);
	if(Npc_IsPlayer(self))
	{
		Bread_Bonus = Bread_Bonus + 1;
		if(Bread_Bonus == 18)
		{
			B_RaiseAttribute(self,ATR_HITPOINTS_MAX,1);
			Bread_Total_Bonus = Bread_Total_Bonus + 1;
			var string logBonus;
			logBonus = ConcatStrings("I have now gained a total of ", IntToString(Bread_Total_Bonus));
			logBonus = ConcatStrings(logBonus, " health from eating Bread");
			Log_CreateTopic(Topic_Health,LOG_NOTE);
			B_LogEntry(Topic_Health,logBonus);
			Snd_Play("LevelUp");
			Bread_Bonus = 0;
		};
	};
};


instance ItFo_Fish(C_Item)
{
	name = "Fish";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Fish;
	visual = "ItFo_Fish.3DS";
	material = MAT_LEATHER;
	scemeName = "FOODHUGE";
	on_state[0] = Use_Fish;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Fish;
	text[5] = NAME_Value;
	count[5] = Value_Fish;
};


func void Use_Fish()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Fish);
};


instance ItFoMuttonRaw(C_Item)
{
	name = "Raw Meat";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Rawmeat;
	visual = "ItFoMuttonRaw.3DS";
	material = MAT_LEATHER;
	scemeName = "MEAT";
	on_state[0] = Use_RawMeat;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_RawMeat;
	text[5] = NAME_Value;
	count[5] = Value_Rawmeat;
};


func void Use_RawMeat()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_RawMeat);
};


instance ItFoMutton(C_Item)
{
	name = "Fried Meat";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Meat;
	visual = "ItFoMutton.3DS";
	material = MAT_LEATHER;
	scemeName = "MEAT";
	on_state[0] = Use_Meat;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Meat;
	text[5] = NAME_Value;
	count[5] = Value_Meat;
};


func void Use_Meat()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Meat);
};


instance ItFo_Stew(C_Item)
{
	name = "Stew";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Stew;
	visual = "ItFo_Stew.3ds";
	material = MAT_WOOD;
	scemeName = "RICE";
	on_state[0] = Use_Stew;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Stew;
	text[5] = NAME_Value;
	count[5] = Value_Stew;
};


func void Use_Stew()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Stew);
	if(Npc_IsPlayer(self))
	{
		Stew_Bonus = Stew_Bonus + 1;
		if(Stew_Bonus == 20)
		{
			B_RaiseAttribute(self,ATR_HITPOINTS_MAX,2);
			Stew_Total_Bonus = Stew_Total_Bonus + 2;
			var string logBonus;
			logBonus = ConcatStrings("I have now gained a total of ", IntToString(Stew_Total_Bonus));
			logBonus = ConcatStrings(logBonus, " health from eating Stew");
			Log_CreateTopic(Topic_Health,LOG_NOTE);
			B_LogEntry(Topic_Health,logBonus);
			Snd_Play("LevelUp");
			Stew_Bonus = 0;
		};
	};
};


instance ItFo_XPStew(C_Item)
{
	name = "Thekla's Stew";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Stew;
	visual = "ItFo_Stew.3ds";
	material = MAT_WOOD;
	scemeName = "RICE";
	on_state[0] = Use_XPStew;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Stew;
	text[2] = NAME_Bonus_Str;
	count[2] = 1;
	text[5] = NAME_Value;
	count[5] = Value_Stew;
};


func void Use_XPStew()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Stew);
	Snd_Play("LevelUp");
	B_RaiseAttribute(self,ATR_STRENGTH,1);
	Thekla_Total_Bonus = Thekla_Total_Bonus + 1;
	var string logBonus;
	logBonus = ConcatStrings("I have now gained a total of ", IntToString(Thekla_Total_Bonus));
	logBonus = ConcatStrings(logBonus, " strength from eating Thekla's stew");
	Log_CreateTopic(Topic_Strength,LOG_NOTE);
	B_LogEntry(Topic_Strength,logBonus);
};


instance ItFo_CoragonsBeer(C_Item)
{
	name = "Beer";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Coragon_Beer;
	visual = "ItFo_Beer.3DS";
	material = MAT_GLAS;
	scemeName = "POTIONFAST";
	on_state[0] = Use_CoragonsBeerBeer;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Beer;
	text[2] = NAME_Bonus_Mana;
	count[2] = Mana_Beer;
	text[4] = "Coragon's Special Beer";
	text[5] = NAME_Value;
	count[5] = Value_Coragon_Beer;
};


func void Use_CoragonsBeerBeer()
{
	B_RaiseAttribute(self,ATR_MANA_MAX,Mana_Beer);
	B_RaiseAttribute(self,ATR_HITPOINTS_MAX,HP_Beer);
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Beer);
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Beer);
	Coragon_Health_Total_Bonus = Coragon_Health_Total_Bonus + HP_Beer;
	Coragon_Mana_Total_Bonus = Coragon_Mana_Total_Bonus + Mana_Beer;
	var string logBonus;
	logBonus = ConcatStrings("I have now gained a total of ", IntToString(Coragon_Health_Total_Bonus));
	logBonus = ConcatStrings(logBonus, " health from drinking Coragon's beer");
	Log_CreateTopic(Topic_Health,LOG_NOTE);
	B_LogEntry(Topic_Health,logBonus);
	var string logBonus2;
	logBonus2 = ConcatStrings("I have now gained a total of ", IntToString(Coragon_Mana_Total_Bonus));
	logBonus2 = ConcatStrings(logBonus2, " mana from drinking Coragon's beer");
	Log_CreateTopic(Topic_Mana,LOG_NOTE);
	B_LogEntry(Topic_Mana,logBonus2);
};


instance ItFo_FishSoup(C_Item)
{
	name = "Fish Soup";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_FishSoup;
	visual = "ItFo_FishSoup.3ds";
	material = MAT_WOOD;
	scemeName = "RICE";
	on_state[0] = Use_FishSoup;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_FishSoup;
	text[5] = NAME_Value;
	count[5] = Value_FishSoup;
};


func void Use_FishSoup()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_FishSoup);
	if(Npc_IsPlayer(self))
	{
		FishSoup_Bonus = FishSoup_Bonus + 1;
		if(FishSoup_Bonus == 20)
		{
			B_RaiseAttribute(self,ATR_HITPOINTS_MAX,1);
			FishSoup_Total_Bonus = FishSoup_Total_Bonus + 1;
			var string logBonus;
			logBonus = ConcatStrings("I have now gained a total of ", IntToString(FishSoup_Total_Bonus));
			logBonus = ConcatStrings(logBonus, " health from eating Fish soup");
			Log_CreateTopic(Topic_Health,LOG_NOTE);
			B_LogEntry(Topic_Health,logBonus);
			Snd_Play("LevelUp");
			FishSoup_Bonus = 0;
		};
	};
};


instance ItFo_Sausage(C_Item)
{
	name = "Sausage";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Sausage;
	visual = "ItFo_Sausage.3DS";
	material = MAT_LEATHER;
	scemeName = "FOODHUGE";
	on_state[0] = Use_Sausage;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Sausage;
	text[5] = NAME_Value;
	count[5] = Value_Sausage;
};


func void Use_Sausage()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Sausage);
	if(Npc_IsPlayer(self))
	{
		Sausage_Bonus = Sausage_Bonus + 1;
		if(Sausage_Bonus == 13)
		{
			B_RaiseAttribute(self,ATR_HITPOINTS_MAX,2);
			Sausage_Total_Bonus = Sausage_Total_Bonus + 2;
			var string logBonus;
			logBonus = ConcatStrings("I have now gained a total of ", IntToString(Sausage_Total_Bonus));
			logBonus = ConcatStrings(logBonus, " health from eating Sausage");
			Log_CreateTopic(Topic_Health,LOG_NOTE);
			B_LogEntry(Topic_Health,logBonus);
			Snd_Play("LevelUp");
			Sausage_Bonus = 0;
		};
	};
};


instance ItFo_Honey(C_Item)
{
	name = "Honey";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Honey;
	visual = "ItFo_Honey.3DS";
	material = MAT_STONE;
	scemeName = "FOODHUGE";
	on_state[0] = Use_Honey;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Honey;
	text[5] = NAME_Value;
	count[5] = Value_Honey;
};


func void Use_Honey()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Honey);
	if(Npc_IsPlayer(self))
	{
		Honey_Bonus = Honey_Bonus + 1;
		if(Honey_Bonus == 16)
		{
			B_RaiseAttribute(self,ATR_HITPOINTS_MAX,3);
			Honey_Total_Bonus = Honey_Total_Bonus + 3;
			var string logBonus;
			logBonus = ConcatStrings("I have now gained a total of ", IntToString(Honey_Total_Bonus));
			logBonus = ConcatStrings(logBonus, " health from eating Honey");
			Log_CreateTopic(Topic_Health,LOG_NOTE);
			B_LogEntry(Topic_Health,logBonus);
			Snd_Play("LevelUp");
			Honey_Bonus = 0;
		};
	};
};


instance ItFo_Water(C_Item)
{
	name = "Water";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Water;
	visual = "ItFo_Water.3ds";
	material = MAT_GLAS;
	scemeName = "POTION";
	on_state[0] = Use_Water;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Water;
	text[5] = NAME_Value;
	count[5] = Value_Water;
};


func void Use_Water()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Water);
};


instance ItFo_Beer(C_Item)
{
	name = "Beer";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Beer;
	visual = "ItFo_Beer.3DS";
	material = MAT_GLAS;
	scemeName = "POTIONFAST";
	on_state[0] = Use_Beer;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Beer;
	text[2] = NAME_Bonus_Mana;
	count[2] = Mana_Beer;
	text[4] = "Dark Paladin";
	text[5] = NAME_Value;
	count[5] = Value_Beer;
};


func void Use_Beer()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Beer);
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Beer);
};


instance ItFo_Booze(C_Item)
{
	name = "Gin";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Booze;
	visual = "ItFo_Booze.3DS";
	material = MAT_GLAS;
	scemeName = "POTION";
	on_state[0] = Use_Booze;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Booze;
	text[2] = NAME_Bonus_Mana;
	count[2] = Mana_Booze;
	text[5] = NAME_Value;
	count[5] = Value_Booze;
};


func void Use_Booze()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Booze);
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Booze);
	if(Npc_IsPlayer(self))
	{
		Gin_Bonus = Gin_Bonus + 1;
		if(Gin_Bonus == 19)
		{
			B_RaiseAttribute(self,ATR_MANA_MAX,1);
			Gin_Total_Bonus = Gin_Total_Bonus + 1;
			var string logBonus;
			logBonus = ConcatStrings("I have now gained a total of ", IntToString(Gin_Total_Bonus));
			logBonus = ConcatStrings(logBonus, " mana from drinking Gin");
			Log_CreateTopic(Topic_Mana,LOG_NOTE);
			B_LogEntry(Topic_Mana,logBonus);
			Snd_Play("LevelUp");
			Gin_Bonus = 0;
		};
	};
};


instance ItFo_Wine(C_Item)
{
	name = "Wine";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Wine;
	visual = "ItFo_Wine.3DS";
	material = MAT_GLAS;
	scemeName = "POTION";
	on_state[0] = Use_Wine;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Wine;
	text[2] = NAME_Bonus_Mana;
	count[2] = Mana_Wine;
	text[5] = NAME_Value;
	count[5] = Value_Wine;
};


func void Use_Wine()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Wine);
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Wine);
	if(Npc_IsPlayer(self))
	{
		Wine_Bonus = Wine_Bonus + 1;
		if(Wine_Bonus == 22)
		{
			B_RaiseAttribute(self,ATR_MANA_MAX,2);
			Wine_Total_Bonus = Wine_Total_Bonus + 2;
			var string logBonus;
			logBonus = ConcatStrings("I have now gained a total of ", IntToString(Wine_Total_Bonus));
			logBonus = ConcatStrings(logBonus, " mana from drinking Wine");
			Log_CreateTopic(Topic_Mana,LOG_NOTE);
			B_LogEntry(Topic_Mana,logBonus);
			Snd_Play("LevelUp");
			Wine_Bonus = 0;
		};
	};
};

instance ItFo_VinoWine(C_Item)
{
	name = "Southern Wine";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_VinoWine;
	visual = "ItFo_Wine.3DS";
	material = MAT_GLAS;
	scemeName = "POTION";
	on_state[0] = Use_VinoWine;
	description = "Southern Wine";
	text[1] = NAME_Bonus_HP;
	count[1] = HP_VinoWine;
	text[2] = NAME_Bonus_Mana;
	count[2] = Mana_VinoWine;
	text[5] = NAME_Value;
	count[5] = Value_VinoWine;
};

func void Use_VinoWine()
{
	B_RaiseAttribute(self,ATR_MANA_MAX,Mana_VinoWine);
	B_RaiseAttribute(self,ATR_HITPOINTS_MAX,HP_VinoWine);
	Npc_ChangeAttribute(self,ATR_MANA,Mana_VinoWine);
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_VinoWine);
	Vino_Health_Total_Bonus = Vino_Health_Total_Bonus + HP_VinoWine;
	Vino_Mana_Total_Bonus = Vino_Mana_Total_Bonus + Mana_VinoWine;
	var string logBonus;
	logBonus = ConcatStrings("I have now gained a total of ", IntToString(Vino_Health_Total_Bonus));
	logBonus = ConcatStrings(logBonus, " health from drinking Southern Wine");
	Log_CreateTopic(Topic_Health,LOG_NOTE);
	B_LogEntry(Topic_Health,logBonus);
	var string logBonus2;
	logBonus2 = ConcatStrings("I have now gained a total of ", IntToString(Vino_Mana_Total_Bonus));
	logBonus2 = ConcatStrings(logBonus2, " mana from drinking Southern Wine");
	Log_CreateTopic(Topic_Mana,LOG_NOTE);
	B_LogEntry(Topic_Mana,logBonus2);
};


instance ItFo_Milk(C_Item)
{
	name = "Milk";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Milk;
	visual = "ItFo_Milk.3DS";
	material = MAT_GLAS;
	scemeName = "POTION";
	on_state[0] = Use_Milk;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Milk;
	text[2] = NAME_Bonus_Mana;
	count[2] = Mana_Milk;
	text[5] = NAME_Value;
	count[5] = Value_Milk;
};


func void Use_Milk()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Milk);
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Milk);
	if(Npc_IsPlayer(self))
	{
		Milk_Bonus = Milk_Bonus + 1;
		if(Milk_Bonus == 16)
		{
			B_RaiseAttribute(self,ATR_HITPOINTS_MAX,1);
			B_RaiseAttribute(self,ATR_MANA_MAX,1);
			Milk_Health_Total_Bonus = Milk_Health_Total_Bonus + 1;
			Milk_Mana_Total_Bonus = Milk_Mana_Total_Bonus + 1;
			var string logBonus;
			logBonus = ConcatStrings("I have now gained a total of ", IntToString(Milk_Health_Total_Bonus));
			logBonus = ConcatStrings(logBonus, " health from drinking Milk");
			Log_CreateTopic(Topic_Health,LOG_NOTE);
			B_LogEntry(Topic_Health,logBonus);
			var string logBonus2;
			logBonus2 = ConcatStrings("I have now gained a total of ", IntToString(Milk_Mana_Total_Bonus));
			logBonus2 = ConcatStrings(logBonus2, " mana from drinking Milk");
			Log_CreateTopic(Topic_Mana,LOG_NOTE);
			B_LogEntry(Topic_Mana,logBonus2);
			Snd_Play("LevelUp");
			Milk_Bonus = 0;
		};
	};
};

