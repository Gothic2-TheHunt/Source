
var int Rosi_ItemsGiven_Chapter_1;
var int Rosi_ItemsGiven_Chapter_2;
var int Rosi_ItemsGiven_Chapter_3;
var int Rosi_ItemsGiven_Chapter_4;
var int Rosi_ItemsGiven_Chapter_5;
var int Rosi_ItemsGiven_JoinGuild;

func void B_GiveTradeInv_Rosi(var C_Npc slf)
{
	if((Kapitel >= 1) && (Rosi_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItFo_Water,5);
		CreateInvItems(slf,ItFo_Bread,3);
		CreateInvItems(slf,ItRw_Arrow,100);
		CreateInvItems(slf,ItRw_Bolt,90);
		CreateInvItems(slf,ItFo_Apple,7);
		CreateInvItems(slf,ItFo_Honey,5);
		CreateInvItems(slf,ItFo_FishSoup,3);
		CreateInvItems(slf,ItRw_Bow_L_03,2);
		CreateInvItems(slf,ItRw_Bow_L_04,2);
		CreateInvItems(slf,ItRi_Prot_Point_02,1);
		Rosi_ItemsGiven_Chapter_1 = TRUE;
	};
	if((Kapitel >= 1) && (Rosi_ItemsGiven_JoinGuild == FALSE) && hero.guild != GIL_NONE)
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItFo_Water,2);
		CreateInvItems(slf,ItFo_Bread,3);
		CreateInvItems(slf,ItFo_Cheese,3);
		CreateInvItems(slf,ItFo_Honey,7);
		CreateInvItems(slf,ItFo_Sausage,4);
		CreateInvItems(slf,ItFo_Stew,4);
		CreateInvItems(slf,ItRw_Arrow,100);
		CreateInvItems(slf,ItRw_Bolt,90);
		CreateInvItems(slf,ItFo_Apple,3);
		Rosi_ItemsGiven_JoinGuild = TRUE;
	};
	if((Kapitel >= 2) && (Rosi_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItFo_Cheese,3);
		CreateInvItems(slf,ItFo_Apple,3);
		CreateInvItems(slf,ItFoMutton,2);
		CreateInvItems(slf,ItFo_Honey,6);
		CreateInvItems(slf,ItFo_Stew,5);
		CreateInvItems(slf,ItFo_FishSoup,5);
		CreateInvItems(slf,ItRw_Arrow,170);
		CreateInvItems(slf,ItRw_Bolt,150);
		CreateInvItems(slf,ItRw_Bow_M_02,2);
		CreateInvItems(slf,ItRw_Bow_M_04,2);
		Rosi_ItemsGiven_Chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (Rosi_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItFo_Apple,8);
		CreateInvItems(slf,ItFo_Stew,5);
		CreateInvItems(slf,ItFo_Honey,8);
		CreateInvItems(slf,ItRw_Bow_H_01,2);
		CreateInvItems(slf,ItFo_Sausage,5);
		CreateInvItems(slf,ItFo_Booze,5);
		CreateInvItems(slf,ItRw_Arrow,190);
		CreateInvItems(slf,ItRw_Bolt,140);
		Rosi_ItemsGiven_Chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (Rosi_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,150);
		CreateInvItems(slf,ItFo_Wine,5);
		CreateInvItems(slf,ItFo_Cheese,3);
		CreateInvItems(slf,ItFoMutton,5);
		CreateInvItems(slf,ItFo_Apple,4);
		CreateInvItems(slf,ItFo_Honey,7);
		CreateInvItems(slf,ItFo_Stew,5);
		CreateInvItems(slf,ItFo_Bacon,5);
		CreateInvItems(slf,ItRw_Arrow,200);
		CreateInvItems(slf,ItRw_Bolt,210);
		Rosi_ItemsGiven_Chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (Rosi_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,200);
		CreateInvItems(slf,ItFo_Wine,3);
		CreateInvItems(slf,ItFo_Cheese,2);
		CreateInvItems(slf,ItFo_Honey,8);
		CreateInvItems(slf,ItFo_Milk,2);
		CreateInvItems(slf,ItFoMutton,5);
		CreateInvItems(slf,ItFo_Bacon,5);
		CreateInvItems(slf,ItRw_Arrow,250);
		CreateInvItems(slf,ItRw_Bolt,230);
		Rosi_ItemsGiven_Chapter_5 = TRUE;
	};
};

