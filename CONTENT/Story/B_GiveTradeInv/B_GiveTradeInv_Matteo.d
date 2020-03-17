
var int Matteo_ItemsGiven_Chapter_1;
var int Matteo_ItemsGiven_Chapter_2;
var int Matteo_ItemsGiven_Chapter_3;
var int Matteo_ItemsGiven_Chapter_4;
var int Matteo_ItemsGiven_Chapter_5;
var int Matteo_ItemsGiven_JoinGuild;

func void B_GiveTradeInv_Matteo(var C_Npc slf)
{
	if((Kapitel >= 1) && (Matteo_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItLsTorch,5);
		CreateInvItems(slf,ItPo_Health_01,1);
		CreateInvItems(slf,ItFo_Cheese,4);
		CreateInvItems(slf,ItFo_Bread,4);
		CreateInvItems(slf,ItFo_Water,1);
		CreateInvItems(slf,ItFo_Beer,4);
		CreateInvItems(slf,ItFo_Milk,1);
		CreateInvItems(slf,ItRw_Arrow,15);
		CreateInvItems(slf,ItMw_Kriegskeule,2);
		CreateInvItems(slf,ItRi_Prot_Point_01,1);
		Matteo_ItemsGiven_Chapter_1 = TRUE;
	};
	if((Kapitel >= 1) && (Matteo_ItemsGiven_JoinGuild == FALSE) && hero.guild != GIL_NONE)
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItLsTorch,5);
		CreateInvItems(slf,ItPo_Health_02,3);
		CreateInvItems(slf,ItFo_Cheese,2);
		CreateInvItems(slf,ItFo_Bread,7);
		CreateInvItems(slf,ItFo_Bacon,3);
		CreateInvItems(slf,ItFo_Honey,4);
		CreateInvItems(slf,ItFo_Water,2);
		CreateInvItems(slf,ItFo_Sausage,2);
		CreateInvItems(slf,ItFo_Beer,4);
		CreateInvItems(slf,ItFo_Milk,3);
		CreateInvItems(slf,ItRw_Arrow,15);
		Matteo_ItemsGiven_JoinGuild = TRUE;
	};
	if((Kapitel >= 2) && (Matteo_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Broom,2);
		CreateInvItems(slf,ItLsTorch,9);
		CreateInvItems(slf,ItPl_Forestberry,3);
		CreateInvItems(slf,ItMw_Spicker,2);
		CreateInvItems(slf,ItFo_Stew,5);
		CreateInvItems(slf,ItFo_Milk,2);
		CreateInvItems(slf,ItFo_Honey,5);
		CreateInvItems(slf,ItFo_Cheese,4);
		CreateInvItems(slf,ItFo_Apple,2);
		CreateInvItems(slf,ItFo_Water,4);
		CreateInvItems(slf,ItMiSwordraw,2);
		CreateInvItems(slf,ItFo_Wine,2);
		CreateInvItems(slf,ItFo_Beer,3);
		CreateInvItems(slf,ItRw_Arrow,30);
		Matteo_ItemsGiven_Chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (Matteo_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItLsTorch,5);
		CreateInvItems(slf,ItPl_Forestberry,3);
		CreateInvItems(slf,ItFo_Bread,2);
		CreateInvItems(slf,ItFo_Cheese,2);
		CreateInvItems(slf,ItFo_Beer,4);
		CreateInvItems(slf,ItFo_Honey,3);
		CreateInvItems(slf,ItFo_Sausage,3);
		CreateInvItems(slf,ItRi_Prot_Total_02,1);
		CreateInvItems(slf,ItFo_Wine,2);
		CreateInvItems(slf,ItFo_Milk,2);
		CreateInvItems(slf,ItMiSwordraw,1);
		CreateInvItems(slf,ItRw_Arrow,50);
		Matteo_ItemsGiven_Chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (Matteo_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,150);
		CreateInvItems(slf,ItLsTorch,7);
		CreateInvItems(slf,ItFo_Cheese,3);
		CreateInvItems(slf,ItPl_Mana_Herb_02,2);
		CreateInvItems(slf,ItPl_Health_Herb_02,3);
		CreateInvItems(slf,ItMi_Lute,1);
		CreateInvItems(slf,ItFo_Honey,4);
		CreateInvItems(slf,ItFo_Sausage,3);
		CreateInvItems(slf,ItFo_Wine,2);
		CreateInvItems(slf,ItFo_Beer,4);
		CreateInvItems(slf,ItMiSwordraw,1);
		CreateInvItems(slf,ItRw_Arrow,100);
		Matteo_ItemsGiven_Chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (Matteo_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,200);
		CreateInvItems(slf,ItPl_Health_Herb_02,2);
		CreateInvItems(slf,ItMi_Lute,1);
		CreateInvItems(slf,ItFo_Bacon,1);
		CreateInvItems(slf,ItFo_FishSoup,1);
		CreateInvItems(slf,ItRw_Arrow,20);
		Matteo_ItemsGiven_Chapter_5 = TRUE;
	};
};

