
var int Rethon_ItemsGiven_Chapter_1;
var int Rethon_ItemsGiven_Chapter_2;
var int Rethon_ItemsGiven_Chapter_3;
var int Rethon_ItemsGiven_Chapter_4;
var int Rethon_ItemsGiven_Chapter_5;

func void B_GiveTradeInv_Rethon(var C_Npc slf)
{
	if(Rethon_ItemsGiven_Chapter_4 == FALSE)
	{
		CreateInvItems(slf,ItMw_Streitaxt2,2);
		CreateInvItems(slf,ItMw_Kriegshammer2,2);
		CreateInvItems(slf,ItMw_Folteraxt,2);
		CreateInvItems(slf,ItMw_Krummschwert,2);
		//CreateInvItems(slf,ItMw_Barbarenstreitaxt,2);
		CreateInvItems(slf,ItMW_Addon_Keule_2h_01,2);
		CreateInvItems(slf,ItMw_Berserkeraxt,2);
		Rethon_ItemsGiven_Chapter_4 = TRUE;
	};
};

