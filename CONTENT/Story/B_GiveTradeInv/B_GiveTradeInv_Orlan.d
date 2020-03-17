
var int Orlan_ItemsGiven_Chapter_1;
var int Orlan_ItemsGiven_Chapter_2;
var int Orlan_ItemsGiven_Chapter_3;
var int Orlan_ItemsGiven_Chapter_4;
var int Orlan_ItemsGiven_Chapter_5;
var int Orlan_ItemsGiven_JoinGuild;

func void B_GiveTradeInv_Orlan(var C_Npc slf)
{
	if((Kapitel >= 1) && (Orlan_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,30);
		CreateInvItems(slf,ItRw_Arrow,80);
		CreateInvItems(slf,ItRw_Bolt,65);
		CreateInvItems(slf,ItFo_Water,4);
		CreateInvItems(slf,ItFo_Beer,10);
		CreateInvItems(slf,ItFo_Bread,4);
		CreateInvItems(slf,ItFo_Milk,4);
		CreateInvItems(slf,ItFo_Cheese,3);
		CreateInvItems(slf,ItFo_Honey,2);
		CreateInvItems(slf,ItFo_Apple,4);
		CreateInvItems(slf,ItFo_Wine,2);
		CreateInvItems(slf,ItFo_Bacon,3);
		CreateInvItems(slf,ItLsTorch,3);
		CreateInvItems(slf,ItMw_Sense,2);
		CreateInvItems(slf,ItMw_Kriegskeule,2);
		CreateInvItems(slf,ItMw_2h_Bau_Axe,2);
		CreateInvItems(slf,ItRw_Bow_L_02,2);
		CreateInvItems(slf,ItBE_Addon_Leather_01,1);
		Orlan_ItemsGiven_Chapter_1 = TRUE;
	};
	if((Kapitel >= 1) && (Orlan_ItemsGiven_JoinGuild == FALSE) && hero.guild != GIL_NONE)
	{
		CreateInvItems(slf,ItMi_Gold,30);
		CreateInvItems(slf,ItRw_Arrow,80);
		CreateInvItems(slf,ItRw_Bolt,65);
		CreateInvItems(slf,ItFo_Honey,3);
		CreateInvItems(slf,ItFo_Water,3);
		CreateInvItems(slf,ItFo_Beer,7);
		CreateInvItems(slf,ItFo_Bread,5);
		CreateInvItems(slf,ItFo_Milk,2);
		CreateInvItems(slf,ItFo_Cheese,1);
		CreateInvItems(slf,ItFo_Apple,3);
		CreateInvItems(slf,ItFo_Wine,3);
		CreateInvItems(slf,ItFo_Bacon,5);
		CreateInvItems(slf,ItLsTorch,3);
		CreateInvItems(slf,ItBE_Addon_Leather_01,1);
		CreateInvItems(slf,ItRi_Prot_Mage_02,1);
		Orlan_ItemsGiven_JoinGuild = TRUE;
	};
	if((Kapitel >= 2) && (Orlan_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,50);
		CreateInvItems(slf,ItMw_Schwert,2);
		CreateInvItems(slf,ItMw_Zweihaender1,2);
		CreateInvItems(slf,ItMw_Morgenstern,2);
		CreateInvItems(slf,ItRw_Crossbow_M_01,2);
		CreateInvItems(slf,ItRw_Arrow,110);
		CreateInvItems(slf,ItFo_Honey,6);
		CreateInvItems(slf,ItFo_Wine,10);
		CreateInvItems(slf,ItFo_Sausage,3);
		CreateInvItems(slf,ItFo_Milk,3);
		CreateInvItems(slf,ItFo_Bacon,2);
		CreateInvItems(slf,ItFo_Beer,4);
		CreateInvItems(slf,ItFo_Bread,5);
		CreateInvItems(slf,ItFo_Cheese,2);
		CreateInvItems(slf,ItFo_Apple,5);
		CreateInvItems(slf,ItRw_Bolt,90);
		CreateInvItems(slf,ItRi_Prot_Total_01,1);
		CreateInvItems(slf,ItBe_Addon_DEX_5,1);
		Orlan_ItemsGiven_Chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (Orlan_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItRu_TeleportTaverne,1);
		CreateInvItems(slf,ItMw_Folteraxt,2);
		CreateInvItems(slf,ItMw_Schlachtaxt,2);
		//CreateInvItems(slf,ItMw_Barbarenstreitaxt,2);
		CreateInvItems(slf,ItMw_Berserkeraxt,2);
		CreateInvItems(slf,ItRw_Arrow,250);
		CreateInvItems(slf,ItFo_Cheese,2);
		CreateInvItems(slf,ItFo_Honey,5);
		CreateInvItems(slf,ItFo_Sausage,2);
		CreateInvItems(slf,ItFo_Milk,2);
		CreateInvItems(slf,ItFo_Bacon,4);
		CreateInvItems(slf,ItFo_Beer,6);
		CreateInvItems(slf,ItFo_Apple,3);
		CreateInvItems(slf,ItRw_Bolt,220);
		CreateInvItems(slf,ItBe_Addon_Prot_EdgPoi,1);
		Orlan_ItemsGiven_Chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (Orlan_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,200);
		CreateInvItems(slf,ItMw_Zweihaender1,2);
		CreateInvItems(slf,ItRw_Arrow,250);
		CreateInvItems(slf,ItRw_Bolt,225);
		CreateInvItems(slf,ItFo_Honey,5);
		CreateInvItems(slf,ItFo_Cheese,1);
		CreateInvItems(slf,ItFo_Apple,2);
		CreateInvItems(slf,ItMw_Bartaxt,2);
		Orlan_ItemsGiven_Chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (Orlan_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,300);
		CreateInvItems(slf,ItRw_Arrow,220);
		CreateInvItems(slf,ItRw_Bolt,215);
		Orlan_ItemsGiven_Chapter_5 = TRUE;
	};
};

