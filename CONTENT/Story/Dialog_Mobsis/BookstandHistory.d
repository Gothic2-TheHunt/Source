
var int History_1_permanent;
var int History_2_permanent;
var int History_3_permanent;
var int History_4_permanent;
var int History_5_permanent;

func void Use_BookstandHistory1_S1()
{
	var C_Npc her;
	var int nDocID;
	her = Hlp_GetNpc(PC_Hero);
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		nDocID = Doc_Create();
		Doc_SetPages(nDocID,2);
		Doc_SetPage(nDocID,0,"Book_RED_L.tga",0);
		Doc_SetPage(nDocID,1,"Book_RED_R.tga",0);
		Doc_SetFont(nDocID,-1,FONT_Book);
		Doc_SetMargins(nDocID,0,275,20,30,20,1);
		Doc_PrintLine(nDocID,0,"The Way of Battle");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"The best defense is a good offense, at least against anything non-human. It's useless to parry animals' or monsters' attacks.");
		Doc_PrintLines(nDocID,0,"It's better to keep the foe at bay with well-aimed blows and then launch a surprise combination attack.");
		Doc_SetMargins(nDocID,-1,30,20,275,20,1);
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"Of course, only experienced fighters can combine their moves. If you become a master in the art of battle, you can even use several combinations.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"");
		Doc_Show(nDocID);
		if(History_1_permanent == FALSE)
		{
			B_GivePlayerXP(XP_Bookstand);
			History_1_permanent = TRUE;
		};
	};
};

func void Use_BookstandHistory2_S1()
{
	var C_Npc her;
	var int nDocID;
	her = Hlp_GetNpc(PC_Hero);
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		nDocID = Doc_Create();
		Doc_SetPages(nDocID,2);
		Doc_SetPage(nDocID,0,"Book_RED_L.tga",0);
		Doc_SetPage(nDocID,1,"Book_RED_R.tga",0);
		Doc_SetFont(nDocID,-1,FONT_Book);
		Doc_SetMargins(nDocID,0,275,20,30,20,1);
		Doc_PrintLine(nDocID,0,"The Island");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"The harbor city of Khorinis lies on an island off the coast of the Kingdom Myrtana.");
		Doc_PrintLines(nDocID,0,"The island owes much of its fame to the Valley of Mines. Its reputation is dubious, as for many years a magic barrier spanned the entire valley, which served as a prison for all convicts of the Realm.");
		Doc_PrintLines(nDocID,0,"Thus the valley became a prison colony where the convicts mined the magic ore far below the ground.");
		Doc_SetMargins(nDocID,-1,30,20,275,20,1);
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"Outside of Khorinis lie a series of farms which use the good soil to plant wheat and turnips and breed sheep.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"For generations the largest farm has belonged to a landowner who rents the surrounding lands to other farmers.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"On the middle of the island is an ancient monastery of Innos, led by the Magicians of Fire. There they conduct research of magic and alchemy and press wine.");
		Doc_Show(nDocID);
		if(History_2_permanent == FALSE)
		{
			B_GivePlayerXP(XP_Bookstand);
			History_2_permanent = TRUE;
		};
	};
};

func void Use_BookstandHistory3_S1()
{
	var C_Npc her;
	var int nDocID;
	her = Hlp_GetNpc(PC_Hero);
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		nDocID = Doc_Create();
		Doc_SetPages(nDocID,2);
		Doc_SetPage(nDocID,0,"Book_RED_L.tga",0);
		Doc_SetPage(nDocID,1,"Book_RED_R.tga",0);
		Doc_SetFont(nDocID,-1,FONT_Book);
		Doc_SetMargins(nDocID,0,275,20,30,20,1);
		Doc_PrintLine(nDocID,0,"The Law of the Island");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"Wherever men come together, ways must be found to keep the peace - be it in the monastery, the city or on the landowner's farm.");
		Doc_PrintLines(nDocID,0,"Any crime against the community is punished.");
		Doc_PrintLines(nDocID,0,"The community forbids starting fights or joining brawls.");
		Doc_PrintLines(nDocID,0,"Theft is also a crime that has consequences. The sheep are also protected by law.");
		Doc_PrintLines(nDocID,0," ");
		Doc_SetMargins(nDocID,-1,30,20,275,20,1);
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"If a man strikes down another or murders him, he must expect to be judged on the spot.");
		Doc_PrintLines(nDocID,1,"To evade this fate he must pay a heavy fine.");
		Doc_PrintLines(nDocID,1,"In all large places, men of justice keep the peace. They will hear of any crime, and it is their duty to effect punishment and restore order.");
		Doc_PrintLines(nDocID,1,"For whoever suffers from crime or witnesses such will not have a high opinion of the culprit.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"Of course, there are folks who care nothing for laws, particularly bandits and mercenaries.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"");
		Doc_Show(nDocID);
		if(History_3_permanent == FALSE)
		{
			B_GivePlayerXP(XP_Bookstand);
			History_3_permanent = TRUE;
		};
	};
};

func void Use_BookstandHistory4_S1()
{
	var C_Npc her;
	var int nDocID;
	her = Hlp_GetNpc(PC_Hero);
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		nDocID = Doc_Create();
		Doc_SetPages(nDocID,2);
		Doc_SetPage(nDocID,0,"Book_RED_L.tga",0);
		Doc_SetPage(nDocID,1,"Book_RED_R.tga",0);
		Doc_SetFont(nDocID,-1,FONT_Book);
		Doc_SetMargins(nDocID,0,275,20,30,20,1);
		Doc_PrintLine(nDocID,0,"Combat Expertise");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"A common question among fighters is whether one-handed or two-handed weapons are better, the truth is that each type has its own advantages.");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"One-handed weapons are faster and can help you when outnumbered.");
		Doc_PrintLines(nDocID,0,"Two-handed weapons are slower, but their range can keep opponents at a safe distance and they do more damage for the strength required to wield them.");
		Doc_PrintLine(nDocID,0,"");
		Doc_SetMargins(nDocID,-1,30,20,275,20,1);
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"A better question is what are the advantages of edged weapons versus blunt weapons.");
		Doc_PrintLines(nDocID,1,"Blunt weapons are harder to resist by armor and armored monsters and skeletons are especially vulnerable to blunt attacks, however they have shorter reach.");
		Doc_PrintLines(nDocID,1,"Edged weapons are usually longer and may even increase the skill of the wielder.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"Of course in most cases the choice is down to preference, but a prepared adventurer will find it very helpful to carry both types of weapons with him.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"");
		Doc_Show(nDocID);
		if(History_4_permanent == FALSE)
		{
			B_GivePlayerXP(XP_Bookstand);
			History_4_permanent = TRUE;
		};
	};
};

func void Use_BookstandHistory5_S1()
{
	var C_Npc her;
	var int nDocID;
	her = Hlp_GetNpc(PC_Hero);
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		nDocID = Doc_Create();
		Doc_SetPages(nDocID,2);
		Doc_SetPage(nDocID,0,"Book_RED_L.tga",0);
		Doc_SetPage(nDocID,1,"Book_RED_R.tga",0);
		Doc_SetFont(nDocID,-1,FONT_Book);
		Doc_SetMargins(nDocID,0,275,20,30,20,1);
		Doc_PrintLine(nDocID,0,"Monster Vulnerabilities");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"The island of Khorinis is home to a very diverse wild life, so a resourceful adventurer should be prepared for the monsters he'll meet.");
		Doc_PrintLines(nDocID,0,"Game like scavengers, wolves or boars is very vulnerable to a shot from a bow or a crossbow, as any experienced hunter knows.");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"Any monster with a fur hide is also vulnerable to fire attacks and will usually burn from them.");
		Doc_PrintLines(nDocID,0,"Lizards and snappers's tough hides are good at deflecting swords and arrows and will not burn, but are vulnerable to magic.");
		Doc_SetMargins(nDocID,-1,30,20,275,20,1);
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"Blunt weapons will easily shatter bones and crush through the thick armor plates of field raiders and crawlers.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"Wind spells will decimate any flying creatures, but will do nothing against heavier monsters.");
		Doc_PrintLines(nDocID,1,"Rare fire and ice elemental creatures are very vulnerable to the opposite element, but resistant against spells of their own element.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"And finally a paladin's spells will only strike evil beings, but their holy power is especially devastating to any undead.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"");
		Doc_Show(nDocID);
		if(History_5_permanent == FALSE)
		{
			B_GivePlayerXP(XP_Bookstand);
			History_5_permanent = TRUE;
		};
	};
};


