
var int Rupert_ItemsGiven_Chapter_1;
var int Rupert_ItemsGiven_Chapter_2;
var int Rupert_ItemsGiven_Chapter_3;
var int Rupert_ItemsGiven_Chapter_4;
var int Rupert_ItemsGiven_Chapter_5;
var int Rupert_ItemsGiven_JoinGuild;

func void B_GiveTradeInv_Rupert(var C_Npc slf)
{
	if((Kapitel >= 1) && (Rupert_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItFo_Apple,8);
		CreateInvItems(slf,ItFo_Water,5);
		CreateInvItems(slf,ItFo_Cheese,5);
		CreateInvItems(slf,ItFo_Milk,3);
		CreateInvItems(slf,ItFo_FishSoup,3);
		CreateInvItems(slf,ItFoMuttonRaw,3);
		CreateInvItems(slf,ItFo_Bread,4);
		CreateInvItems(slf,ItFo_Honey,1);
		CreateInvItems(slf,ItFoMutton,4);
		CreateInvItems(slf,ItFo_Stew,6);
		Rupert_ItemsGiven_Chapter_1 = TRUE;
	};
	if((Kapitel >= 1) && (Rupert_ItemsGiven_JoinGuild == FALSE) && hero.guild != GIL_NONE)
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItFo_Apple,5);
		CreateInvItems(slf,ItFo_Water,4);
		CreateInvItems(slf,ItFo_Cheese,3);
		CreateInvItems(slf,ItFo_Milk,6);
		CreateInvItems(slf,ItFo_FishSoup,3);
		CreateInvItems(slf,ItFo_Bacon,2);
		CreateInvItems(slf,ItFo_Honey,4);
		CreateInvItems(slf,ItFo_Bread,5);
		CreateInvItems(slf,ItFoMutton,4);
		CreateInvItems(slf,ItFo_Stew,5);
		Rupert_ItemsGiven_JoinGuild = TRUE;
	};
	if((Kapitel >= 2) && (Rupert_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItFo_Cheese,4);
		CreateInvItems(slf,ItFoMutton,2);
		CreateInvItems(slf,ItFo_Bacon,3);
		CreateInvItems(slf,ItFoMuttonRaw,3);
		CreateInvItems(slf,ItFo_Apple,5);
		CreateInvItems(slf,ItFo_Honey,4);
		CreateInvItems(slf,ItFo_FishSoup,4);
		CreateInvItems(slf,ItFo_Bread,4);
		CreateInvItems(slf,ItFo_Sausage,3);
		CreateInvItems(slf,ItFo_Stew,7);
		CreateInvItems(slf,ItFo_Beer,3);

		Rupert_ItemsGiven_Chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (Rupert_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItFo_Cheese,3);
		CreateInvItems(slf,ItFo_Bacon,3);
		CreateInvItems(slf,ItFo_Apple,5);
		CreateInvItems(slf,ItFo_Stew,4);
		CreateInvItems(slf,ItFo_Honey,3);
		CreateInvItems(slf,ItFoMutton,3);
		CreateInvItems(slf,ItFo_Bread,5);
		CreateInvItems(slf,ItFo_Sausage,3);
		CreateInvItems(slf,ItFo_Milk,3);
		CreateInvItems(slf,ItFo_Wine,2);	
		Rupert_ItemsGiven_Chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (Rupert_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,150);
		CreateInvItems(slf,ItFo_Wine,5);
		CreateInvItems(slf,ItFo_Cheese,3);
		CreateInvItems(slf,ItFo_Milk,2);
		CreateInvItems(slf,ItFo_Stew,3);
		CreateInvItems(slf,ItFo_Apple,6);
		CreateInvItems(slf,ItFoMutton,5);
		CreateInvItems(slf,ItFo_Bacon,2);
		CreateInvItems(slf,ItFo_Honey,5);
		CreateInvItems(slf,ItFo_Sausage,5);
		CreateInvItems(slf,ItFo_FishSoup,4);
		CreateInvItems(slf,ItFo_Beer,4);
		Rupert_ItemsGiven_Chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (Rupert_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,200);
		CreateInvItems(slf,ItFo_Wine,2);
		CreateInvItems(slf,ItFo_Honey,3);
		CreateInvItems(slf,ItFo_Milk,5);
		CreateInvItems(slf,ItFoMutton,5);
		CreateInvItems(slf,ItFo_Stew,3);
		CreateInvItems(slf,ItFo_Sausage,5);
		CreateInvItems(slf,ItFo_Bacon,3);
		CreateInvItems(slf,ItFo_Milk,5);
		Rupert_ItemsGiven_Chapter_5 = TRUE;
	};
};

