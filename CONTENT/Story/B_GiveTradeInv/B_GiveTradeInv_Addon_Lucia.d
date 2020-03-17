
var int Lucia_ItemsGiven_Chapter_1;
var int Lucia_ItemsGiven_Chapter_2;
var int Lucia_ItemsGiven_Chapter_3;
var int Lucia_ItemsGiven_Chapter_4;
var int Lucia_ItemsGiven_Chapter_5;

func void B_GiveTradeInv_Addon_Lucia(var C_Npc slf)
{
	if((Kapitel >= 1) && (Lucia_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItFo_Booze,2);
		CreateInvItems(slf,ItFo_Addon_Rum,3);
		CreateInvItems(slf,ItFo_Addon_Grog,10);
		CreateInvItems(slf,ItMi_Flask,20);
		CreateInvItems(slf,ItRi_Dex_02,1);
		CreateInvItems(slf,ItFo_Cheese,1);
		CreateInvItems(slf,ItFo_Addon_Shellflesh,2);
		Lucia_ItemsGiven_Chapter_1 = TRUE;
	};
	if((Kapitel >= 2) && (Lucia_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItFo_Booze,6);
		CreateInvItems(slf,ItFo_Addon_Rum,6);
		CreateInvItems(slf,ItFo_Addon_Grog,9);
		CreateInvItems(slf,ItFo_Beer,4);
		CreateInvItems(slf,ItFo_Addon_Shellflesh,3);
		CreateInvItems(slf,ItFo_Cheese,3);
		CreateInvItems(slf,ItMi_Flask,20);
		CreateInvItems(slf,ItRi_Prot_Point_02,1);
		Lucia_ItemsGiven_Chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (Lucia_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItFo_Booze,7);
		CreateInvItems(slf,ItFo_Addon_Rum,5);
		CreateInvItems(slf,ItFo_Addon_Grog,9);
		CreateInvItems(slf,ItFo_Beer,4);
		CreateInvItems(slf,ItFo_Addon_Shellflesh,2);
		CreateInvItems(slf,ItFo_Apple,7);
		CreateInvItems(slf,ItMi_Flask,10);
		Lucia_ItemsGiven_Chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (Lucia_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems(slf,ItFo_Booze,3);
		CreateInvItems(slf,ItFo_Addon_Rum,4);
		CreateInvItems(slf,ItFo_Addon_Grog,10);
		CreateInvItems(slf,ItFo_Beer,4);
		CreateInvItems(slf,ItFo_Addon_Shellflesh,4);
		CreateInvItems(slf,ItFo_Apple,3);
		CreateInvItems(slf,ItFo_Cheese,1);
		CreateInvItems(slf,ItMi_Flask,10);
		Lucia_ItemsGiven_Chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (Lucia_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItFo_Booze,3);
		CreateInvItems(slf,ItFo_Addon_Rum,4);
		CreateInvItems(slf,ItFo_Addon_Grog,10);
		CreateInvItems(slf,ItFo_Beer,4);
		CreateInvItems(slf,ItFo_Cheese,3);
		CreateInvItems(slf,ItMi_Flask,10);
		Lucia_ItemsGiven_Chapter_5 = TRUE;
	};
};

