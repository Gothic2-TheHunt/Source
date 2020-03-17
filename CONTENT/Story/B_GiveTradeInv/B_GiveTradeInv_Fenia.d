
var int Fenia_ItemsGiven_Chapter_1;
var int Fenia_ItemsGiven_Chapter_2;
var int Fenia_ItemsGiven_Chapter_3;
var int Fenia_ItemsGiven_Chapter_4;
var int Fenia_ItemsGiven_Chapter_5;
var int Fenia_ItemsGiven_JoinGuild;

func void B_GiveTradeInv_Fenia(var C_Npc slf)
{
	if((Kapitel >= 1) && (Fenia_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,50);
		CreateInvItems(slf,ItFo_Water,5);
		CreateInvItems(slf,ItFo_Apple,4);
		CreateInvItems(slf,ItFo_Bread,3);
		CreateInvItems(slf,ItFoMutton,2);
		CreateInvItems(slf,ItFo_Fish,5);
		Fenia_ItemsGiven_Chapter_1 = TRUE;
	};
	if((Kapitel >= 1) && (Fenia_ItemsGiven_JoinGuild == FALSE) && hero.guild != GIL_NONE)
	{
		CreateInvItems(slf,ItMi_Gold,50);
		CreateInvItems(slf,ItFo_Booze,3);
		CreateInvItems(slf,ItFo_Apple,3);
		CreateInvItems(slf,ItFo_Honey,1);
		CreateInvItems(slf,ItFo_Bread,3);
		CreateInvItems(slf,ItFo_FishSoup,2);
		CreateInvItems(slf,ItFo_Cheese,1);
		CreateInvItems(slf,ItFo_Bacon,2);
		CreateInvItems(slf,ItFo_Fish,3);
		Fenia_ItemsGiven_JoinGuild = TRUE;
	};
	if((Kapitel >= 2) && (Fenia_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,50);
		CreateInvItems(slf,ItFo_Apple,4);
		CreateInvItems(slf,ItFo_FishSoup,5);
		CreateInvItems(slf,ItFo_Fish,3);
		CreateInvItems(slf,ItFoMutton,3);
		CreateInvItems(slf,ItFo_Sausage,2);
		Fenia_ItemsGiven_Chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (Fenia_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItFoMutton,2);
		CreateInvItems(slf,ItFo_Stew,5);
		CreateInvItems(slf,ItFoMutton,2);
		CreateInvItems(slf,ItFo_Apple,3);
		CreateInvItems(slf,ItFo_Cheese,3);
		CreateInvItems(slf,ItFo_Honey,3);
		CreateInvItems(slf,ItFo_Fish,2);
		CreateInvItems(slf,ItFoMutton,4);
		CreateInvItems(slf,ItFo_Sausage,2);
		CreateInvItems(slf,ItFo_Booze,5);
		Fenia_ItemsGiven_Chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (Fenia_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,150);
		CreateInvItems(slf,ItFo_Wine,5);
		CreateInvItems(slf,ItFoMutton,5);
		CreateInvItems(slf,ItFo_Cheese,2);
		CreateInvItems(slf,ItFo_Apple,4);
		CreateInvItems(slf,ItFo_Stew,5);
		CreateInvItems(slf,ItFo_Bacon,2);
		CreateInvItems(slf,ItFo_Bacon,5);
		CreateInvItems(slf,ItFo_Fish,5);
		Fenia_ItemsGiven_Chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (Fenia_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,200);
		CreateInvItems(slf,ItFo_Wine,2);
		CreateInvItems(slf,ItFoMutton,2);
		CreateInvItems(slf,ItFo_Stew,2);
		CreateInvItems(slf,ItFo_Fish,5);
		Fenia_ItemsGiven_Chapter_5 = TRUE;
	};
};

