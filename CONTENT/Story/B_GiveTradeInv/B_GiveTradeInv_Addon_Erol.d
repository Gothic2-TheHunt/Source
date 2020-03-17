
var int Erol_ItemsGiven_Chapter_1;
var int Erol_ItemsGiven_Chapter_2;
var int Erol_ItemsGiven_Chapter_3;
var int Erol_ItemsGiven_Chapter_4;
var int Erol_ItemsGiven_Chapter_5;
var int Erol_ItemsGiven_JoinGuild;

func void B_GiveTradeInv_Addon_Erol(var C_Npc slf)
{
	if((Kapitel >= 1) && (Erol_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItFo_Water,3);
		CreateInvItems(slf,ItFo_Bread,3);
		CreateInvItems(slf,ItFo_Cheese,3);
		CreateInvItems(slf,ItPl_Mana_Herb_01,3);
		CreateInvItems(slf,ItPl_Health_Herb_01,2);
		CreateInvItems(slf,ItPl_Health_Herb_02,2);
		CreateInvItems(slf,ItPl_Temp_Herb,1);
		CreateInvItems(slf,ItPo_Perm_STR,1);
		CreateInvItems(slf,ItMw_ShortSword5,2);
		CreateInvItems(slf,ItMw_1h_Mil_Sword,2);
		CreateInvItems(slf,ItRi_Prot_Edge_01,1);
		CreateInvItems(slf,ItAm_Strg_01,1);
		Erol_ItemsGiven_Chapter_1 = TRUE;
	};
	if((Kapitel >= 1) && (Erol_ItemsGiven_JoinGuild == FALSE) && hero.guild != GIL_NONE)
	{
		CreateInvItems(slf,ItFo_Water,2);
		CreateInvItems(slf,ItFo_Bread,2);
		CreateInvItems(slf,ItFo_Cheese,1);
		CreateInvItems(slf,ItPl_Mana_Herb_02,2);
		CreateInvItems(slf,ItPl_Health_Herb_02,2);
		CreateInvItems(slf,ItPl_Temp_Herb,1);
		Erol_ItemsGiven_JoinGuild = TRUE;
	};
	if((Kapitel >= 2) && (Erol_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItFo_Water,1);
		CreateInvItems(slf,ItFo_Bread,2);
		CreateInvItems(slf,ItFo_Stew,4);
		CreateInvItems(slf,ItMiSwordraw,1);
		CreateInvItems(slf,ItFo_Cheese,2);
		CreateInvItems(slf,ItFo_Apple,4);
		CreateInvItems(slf,ItPl_Mana_Herb_02,3);
		CreateInvItems(slf,ItPl_Health_Herb_02,3);
		CreateInvItems(slf,ItMw_Schwert,2);
		CreateInvItems(slf,ItWr_StrStonePlate1_Addon,1);
		CreateInvItems(slf,ItMw_Zweihaender1,2);
		CreateInvItems(slf,ItPl_Temp_Herb,2);
		Erol_ItemsGiven_Chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (Erol_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItFo_Booze,5);
		CreateInvItems(slf,ItPl_Mana_Herb_02,3);
		CreateInvItems(slf,ItPl_Health_Herb_02,3);
		CreateInvItems(slf,ItPl_Temp_Herb,2);
		CreateInvItems(slf,ItMw_Streitaxt2,2);
		CreateInvItems(slf,ItMw_Kriegshammer2,2);
		CreateInvItems(slf,ItMi_RuneBlank,1);
		CreateInvItems(slf,ItWr_DexStonePlate2_Addon,1);
		CreateInvItems(slf,ItMiSwordraw,1);
		Erol_ItemsGiven_Chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (Erol_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems(slf,ItFo_Cheese,2);
		CreateInvItems(slf,ItFoMutton,2);
		CreateInvItems(slf,ItFo_Stew,3);
		CreateInvItems(slf,ItFo_FishSoup,4);
		CreateInvItems(slf,ItWr_HitPointStonePlate2_Addon,1);
		CreateInvItems(slf,ItPl_Mana_Herb_02,3);
		CreateInvItems(slf,ItPl_Health_Herb_02,3);
		CreateInvItems(slf,ItPl_Temp_Herb,2);
		Erol_ItemsGiven_Chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (Erol_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItFo_Booze,5);
		CreateInvItems(slf,ItPl_Mana_Herb_02,3);
		CreateInvItems(slf,ItPl_Health_Herb_02,3);
		CreateInvItems(slf,ItPl_Temp_Herb,2);
		Erol_ItemsGiven_Chapter_5 = TRUE;
	};
};

