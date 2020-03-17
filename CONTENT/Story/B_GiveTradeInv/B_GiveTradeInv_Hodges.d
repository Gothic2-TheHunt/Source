
var int Hodges_ItemsGiven_Chapter_1;
var int Hodges_ItemsGiven_Chapter_2;
var int Hodges_ItemsGiven_Chapter_3;
var int Hodges_ItemsGiven_Chapter_4;
var int Hodges_ItemsGiven_Chapter_5;
var int Hodges_ItemsGiven_JoinGuild;

func void B_GiveTradeInv_Hodges(var C_Npc slf)
{
	if((Kapitel >= 1) && (Hodges_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,20);
		CreateInvItems(slf,ItMiSwordraw,2);
		CreateInvItems(slf,ItFoMutton,2);
		CreateInvItems(slf,ItFo_Stew,2);
		CreateInvItems(slf,ItMw_1h_Bau_Axe,2);
		CreateInvItems(slf,ItMw_1H_Mace_L_01,2);
		CreateInvItems(slf,ItMw_1H_Mace_L_03,2);
		CreateInvItems(slf,ItMw_1h_Vlk_Axe,2);
		CreateInvItems(slf,ItMw_1H_Mace_L_04,2);
		CreateInvItems(slf,ItMw_Nagelknueppel,2);
		Hodges_ItemsGiven_Chapter_1 = TRUE;
	};
	if((Kapitel >= 1) && (Hodges_ItemsGiven_JoinGuild == FALSE) && hero.guild != GIL_NONE)
	{
		CreateInvItems(slf,ItMi_Gold,20);
		CreateInvItems(slf,ItMiSwordraw,2);
		CreateInvItems(slf,ItFoMutton,2);
		CreateInvItems(slf,ItFo_Stew,2);
		Hodges_ItemsGiven_JoinGuild = TRUE;
	};
	if((Kapitel >= 2) && (Hodges_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,20);
		CreateInvItems(slf,ItMiSwordraw,3);
		CreateInvItems(slf,ItFo_Stew,3);
		Hodges_ItemsGiven_Chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (Hodges_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,20);
		CreateInvItems(slf,ItMiSwordraw,1);	
		Hodges_ItemsGiven_Chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (Hodges_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,20);
		CreateInvItems(slf,ItMiSwordraw,2);
		Hodges_ItemsGiven_Chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (Hodges_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,20);
		Hodges_ItemsGiven_Chapter_5 = TRUE;
	};
};

