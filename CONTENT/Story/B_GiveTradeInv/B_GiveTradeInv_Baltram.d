
var int Baltram_ItemsGiven_Chapter_1;
var int Baltram_ItemsGiven_Chapter_2;
var int Baltram_ItemsGiven_Chapter_3;
var int Baltram_ItemsGiven_Chapter_4;
var int Baltram_ItemsGiven_Chapter_5;
var int Baltram_ItemsGiven_JoinGuild;

func void B_GiveTradeInv_Baltram(var C_Npc slf)
{
	if((Kapitel >= 1) && (Baltram_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItFo_Milk,3);
		CreateInvItems(slf,ItFo_Bread,3);
		CreateInvItems(slf,ItFoMutton,3);
		CreateInvItems(slf,ItFo_Bacon,3);
		CreateInvItems(slf,ItFo_Cheese,4);
		CreateInvItems(slf,ItFo_Apple,5);
		CreateInvItems(slf,ItAm_Hp_01,1);
		CreateInvItems(slf,ItFo_Booze,3);
		CreateInvItems(slf,ItFo_Honey,1);
		CreateInvItems(slf,ItFo_Sausage,2);
		Baltram_ItemsGiven_Chapter_1 = TRUE;
	};
	if((Kapitel >= 1) && (Baltram_ItemsGiven_JoinGuild == FALSE) && hero.guild != GIL_NONE)
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItFo_Milk,1);
		CreateInvItems(slf,ItFo_Bread,3);
		CreateInvItems(slf,ItFo_Honey,2);
		CreateInvItems(slf,ItFo_Bacon,2);
		CreateInvItems(slf,ItFo_Cheese,2);
		CreateInvItems(slf,ItFo_Apple,4);
		CreateInvItems(slf,ItFo_Booze,2);
		CreateInvItems(slf,ItFo_Sausage,2);
		Baltram_ItemsGiven_JoinGuild = TRUE;
	};
	if((Kapitel >= 2) && (Baltram_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItFo_Cheese,5);
		CreateInvItems(slf,ItFo_Honey,2);
		CreateInvItems(slf,ItFoMutton,5);
		CreateInvItems(slf,ItFo_Stew,5);
		CreateInvItems(slf,ItFo_Wine,2);
		CreateInvItems(slf,ItFo_Bread,3);
		CreateInvItems(slf,ItFo_Booze,3);
		CreateInvItems(slf,ItFo_Apple,6);
		CreateInvItems(slf,ItFo_FishSoup,4);
		Baltram_ItemsGiven_Chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (Baltram_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItFo_Cheese,3);
		CreateInvItems(slf,ItFo_Bacon,2);
		CreateInvItems(slf,ItFo_Honey,2);
		CreateInvItems(slf,ItFoMutton,10);
		CreateInvItems(slf,ItFo_Apple,6);
		CreateInvItems(slf,ItFo_Wine,2);
		CreateInvItems(slf,ItFo_Bread,1);
		CreateInvItems(slf,ItFo_Beer,2);
		CreateInvItems(slf,ItFo_Sausage,5);
		CreateInvItems(slf,ItFo_Booze,5);
		Baltram_ItemsGiven_Chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (Baltram_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,150);
		CreateInvItems(slf,ItFo_Wine,5);
		CreateInvItems(slf,ItFo_Apple,6);
		CreateInvItems(slf,ItFo_Cheese,2);
		CreateInvItems(slf,ItFo_Bread,2);
		CreateInvItems(slf,ItFo_Milk,3);
		CreateInvItems(slf,ItFoMutton,5);
		CreateInvItems(slf,ItFo_Stew,2);
		CreateInvItems(slf,ItFo_Sausage,5);
		CreateInvItems(slf,ItFo_Bacon,5);
		Baltram_ItemsGiven_Chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (Baltram_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,200);
		CreateInvItems(slf,ItFo_Wine,2);
		CreateInvItems(slf,ItFo_Apple,7);
		CreateInvItems(slf,ItFo_Milk,5);
		CreateInvItems(slf,ItFoMutton,5);
		CreateInvItems(slf,ItFo_Sausage,5);
		CreateInvItems(slf,ItFo_Bacon,5);
		Baltram_ItemsGiven_Chapter_5 = TRUE;
	};
};

