
var int Sarah_ItemsGiven_Chapter_1;
var int Sarah_ItemsGiven_Chapter_2;
var int Sarah_ItemsGiven_Chapter_3;
var int Sarah_ItemsGiven_Chapter_4;
var int Sarah_ItemsGiven_Chapter_5;

func void B_GiveTradeInv_Sarah(var C_Npc slf)
{
	if((Kapitel >= 1) && (Sarah_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,20);
		CreateInvItems(slf,ItLsTorch,20);
		CreateInvItems(slf,ItRw_Arrow,50);
		CreateInvItems(slf,ItMw_ShortSword3,2);
		CreateInvItems(slf,ItMw_ShortSword5,2);
		CreateInvItems(slf,ItMw_Fencefoil_01,2);
		CreateInvItems(slf,ItMw_2h_Sld_Axe,2);
		CreateInvItems(slf,ItMw_Kriegshammer1,2);
		CreateInvItems(slf,ItMw_1h_Sld_Sword,2);
		CreateInvItems(slf,ItMw_1h_Nov_Mace,2);
		CreateInvItems(slf,ItRi_HP_01,1);
		CreateInvItems(slf,ItMw_1h_Misc_Axe,2);
		Sarah_ItemsGiven_Chapter_1 = TRUE;
	};
	if((Kapitel >= 2) && (Sarah_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,20);
		CreateInvItems(slf,ItLsTorch,5);
		CreateInvItems(slf,ItRw_Arrow,100);
		CreateInvItems(slf,ItMw_Schwert,2);
		CreateInvItems(slf,ItMw_Streitaxt1,2);
		CreateInvItems(slf,ItMw_Addon_PIR2hSword,2);
		CreateInvItems(slf,ItMw_Bartaxt,2);
		CreateInvItems(slf,ItMw_Spicker,2);
		CreateInvItems(slf,ItMw_Zweihaender2,2);
		Sarah_ItemsGiven_Chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (Sarah_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItMw_Streitkolben,2);
		CreateInvItems(slf,ItMw_Zweihaender3,2);
		CreateInvItems(slf,ItMw_Schwert5,2);
		CreateInvItems(slf,ItMw_Kriegshammer2,2);
		CreateInvItems(slf,ItMw_Zweihaender4,2);
		CreateInvItems(slf,ItMi_Gold,25);
		CreateInvItems(slf,ItRw_Arrow,100);
		Sarah_ItemsGiven_Chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (Sarah_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems(slf,ItMw_Sturmbringer,2);
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItRw_Arrow,150);
		Sarah_ItemsGiven_Chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (Sarah_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,200);
		CreateInvItems(slf,ItRw_Arrow,50);
		Sarah_ItemsGiven_Chapter_5 = TRUE;
	};
};

