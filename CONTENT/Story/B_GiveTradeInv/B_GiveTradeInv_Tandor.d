
var int Tandor_ItemsGiven_Chapter_1;
var int Tandor_ItemsGiven_Chapter_2;
var int Tandor_ItemsGiven_Chapter_3;
var int Tandor_ItemsGiven_Chapter_4;
var int Tandor_ItemsGiven_Chapter_5;

func void B_GiveTradeInv_Tandor(var C_Npc slf)
{
	if((Kapitel >= 1) && (Tandor_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,80);
		CreateInvItems(slf,ItRw_Arrow,25);
		CreateInvItems(slf,ItRw_Bolt,25);
		CreateInvItems(slf,ItMw_Steinbrecher,2);
		CreateInvItems(slf,ItMw_Schwert,2);
		//CreateInvItems(slf,ItMw_Drachenschneide,1);
		CreateInvItems(slf,ItRw_Bow_L_03,2);
		CreateInvItems(slf,ItRw_Bow_L_04,2);
		Tandor_ItemsGiven_Chapter_1 = TRUE;
	};
	if((Kapitel >= 2) && (Tandor_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,200);
		CreateInvItems(slf,ItRw_Arrow,100);
		CreateInvItems(slf,ItRw_Bolt,100);
		CreateInvItems(slf,ItRw_Crossbow_M_01,2);
		CreateInvItems(slf,ItRw_Crossbow_M_02,2);
		CreateInvItems(slf,ItRw_Bow_M_02,2);
		CreateInvItems(slf,ItRw_Bow_M_03,2);
		CreateInvItems(slf,ItMw_Morgenstern,2);
		CreateInvItems(slf,ItMw_Stabkeule,2);
		CreateInvItems(slf,ItMw_Schwert2,2);
		CreateInvItems(slf,ItMw_Doppelaxt,2);
		Tandor_ItemsGiven_Chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (Tandor_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItRw_Arrow,100);
		CreateInvItems(slf,ItRw_Bolt,100);
		CreateInvItems(slf,ItMw_Streitkolben,2);
		CreateInvItems(slf,ItMw_Stinger,2);
		CreateInvItems(slf,ItMw_Streitaxt2,2);
		CreateInvItems(slf,ItAm_Prot_Total_01,1);
		CreateInvItems(slf,ItMw_Schwert5,2);
		CreateInvItems(slf,ItMw_Kriegshammer2,2);
		CreateInvItems(slf,ItMw_Schlachtaxt,2);
		CreateInvItems(slf,ItRw_Bow_H_02,2);
		CreateInvItems(slf,ItRw_Crossbow_H_01,2);
		Tandor_ItemsGiven_Chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (Tandor_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,150);
		CreateInvItems(slf,ItRw_Arrow,100);
		CreateInvItems(slf,ItRw_Bolt,100);
		Tandor_ItemsGiven_Chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (Tandor_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,200);
		CreateInvItems(slf,ItRw_Arrow,100);
		CreateInvItems(slf,ItRw_Bolt,100);
		Tandor_ItemsGiven_Chapter_5 = TRUE;
	};
};

