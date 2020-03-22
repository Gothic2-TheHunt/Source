
var int Hakon_ItemsGiven_Chapter_1;
var int Hakon_ItemsGiven_Chapter_2;
var int Hakon_ItemsGiven_Chapter_3;
var int Hakon_ItemsGiven_Chapter_4;
var int Hakon_ItemsGiven_Chapter_5;
var int Hakon_ItemsGiven_JoinGuild;

func void B_GiveTradeInv_Hakon(var C_Npc slf)
{
	if((Kapitel >= 1) && (Hakon_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItMw_ShortSword2,2);
		CreateInvItems(slf,ItMw_ShortSword3,2);
		CreateInvItems(slf,ItMw_ShortSword4,2);
		CreateInvItems(slf,ItMw_Nagelkeule,2);
		CreateInvItems(slf,ItMw_Richtstab,2);
		CreateInvItems(slf,ItMw_Schiffsaxt,2);
		CreateInvItems(slf,ItMiSwordraw,2);
		CreateInvItems(slf,ItBE_Addon_Leather_01,1);
		Hakon_ItemsGiven_Chapter_1 = TRUE;
	};
	if((Kapitel >= 1) && (Hakon_ItemsGiven_JoinGuild == FALSE) && hero.guild != GIL_NONE)
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItMiSwordraw,1);
		CreateInvItems(slf,ItMw_Nagelkeule2,2);
		CreateInvItems(slf,ItBE_Addon_MIL_01,1);
		Hakon_ItemsGiven_JoinGuild = TRUE;
	};
	if((Kapitel >= 2) && (Hakon_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItMiSwordraw,3);
		CreateInvItems(slf,ItBe_Addon_Prot_EDGE,1);
		CreateInvItems(slf,ItMw_Schwert2,2);
		CreateInvItems(slf,ItMw_Steinbrecher,2);
		CreateInvItems(slf,ItMw_Addon_PIR2hAxe,2);
		CreateInvItems(slf,ItMw_Doppelaxt,2);
		CreateInvItems(slf,ItMw_Nagelkeule2,2);
		CreateInvItems(slf,ItMi_Gold,100);
		Hakon_ItemsGiven_Chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (Hakon_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItBe_Addon_Prot_Point,1);
		CreateInvItems(slf,ItMw_Folteraxt,2);
		CreateInvItems(slf,ItMw_Stinger,2);
		CreateInvItems(slf,ItMw_Schlachtaxt,2);
		CreateInvItems(slf,ItBe_Addon_Prot_TOTAL,1);
		CreateInvItems(slf,ItMiSwordraw,2);
		Hakon_ItemsGiven_Chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (Hakon_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,150);
		CreateInvItems(slf,ItMiSwordraw,3);
		Hakon_ItemsGiven_Chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (Hakon_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,200);
		CreateInvItems(slf,ItMiSwordraw,2);
		Hakon_ItemsGiven_Chapter_5 = TRUE;
	};
};

