
instance DIA_Alrik_EXIT(C_Info)
{
	npc = VLK_438_Alrik;
	nr = 999;
	condition = DIA_Alrik_EXIT_Condition;
	information = DIA_Alrik_EXIT_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int DIA_Alrik_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Alrik_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Alrik_PICKPOCKET(C_Info)
{
	npc = VLK_438_Alrik;
	nr = 900;
	condition = DIA_Alrik_PICKPOCKET_Condition;
	information = DIA_Alrik_PICKPOCKET_Info;
	permanent = TRUE;
	description = Pickpocket_60;
};


func int DIA_Alrik_PICKPOCKET_Condition()
{
	return C_Beklauen(55,50);
};

func void DIA_Alrik_PICKPOCKET_Info()
{
	Info_ClearChoices(DIA_Alrik_PICKPOCKET);
	Info_AddChoice(DIA_Alrik_PICKPOCKET,Dialog_Back,DIA_Alrik_PICKPOCKET_BACK);
	Info_AddChoice(DIA_Alrik_PICKPOCKET,DIALOG_PICKPOCKET,DIA_Alrik_PICKPOCKET_DoIt);
};

func void DIA_Alrik_PICKPOCKET_DoIt()
{
	B_Beklauen();
	Info_ClearChoices(DIA_Alrik_PICKPOCKET);
};

func void DIA_Alrik_PICKPOCKET_BACK()
{
	Info_ClearChoices(DIA_Alrik_PICKPOCKET);
};


instance DIA_Alrik_Hallo(C_Info)
{
	npc = VLK_438_Alrik;
	nr = 1;
	condition = DIA_Alrik_Hallo_Condition;
	information = DIA_Alrik_Hallo_Info;
	permanent = FALSE;
	description = "What are you doing here?";
};


func int DIA_Alrik_Hallo_Condition()
{
	return TRUE;
};

func void DIA_Alrik_Hallo_Info()
{
	AI_Output(other,self,"DIA_Alrik_Hallo_15_00");	//What are you doing here?
	if(Npc_GetDistToWP(self,"NW_CITY_PATH_HABOUR_16_01") <= 500)
	{
		AI_Output(self,other,"DIA_Alrik_Hallo_09_01");	//(laughs) This is my home!
	}
	else if(Npc_GetDistToWP(self,"NW_CITY_HABOUR_TAVERN01_01") <= 500)
	{
		AI_Output(self,other,"DIA_Alrik_Hallo_09_02");	//What am I supposed to do here? I'm drinking.
	}
	else
	{
		AI_Output(self,other,"DIA_Alrik_Hallo_09_03");	//I'm going for a little walk.
	};
	AI_Output(self,other,"DIA_Alrik_Hallo_09_04");	//But if you mean, what do I do all day - I arrange fights.
};


instance DIA_Alrik_YouFight(C_Info)
{
	npc = VLK_438_Alrik;
	nr = 1;
	condition = DIA_Alrik_YouFight_Condition;
	information = DIA_Alrik_YouFight_Info;
	permanent = FALSE;
	description = "You arrange fights?";
};


func int DIA_Alrik_YouFight_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Alrik_Hallo))
	{
		return TRUE;
	};
};

func void DIA_Alrik_YouFight_Info()
{
	AI_Output(other,self,"DIA_Alrik_YouFight_15_00");	//You arrange fights?
	AI_Output(self,other,"DIA_Alrik_YouFight_09_01");	//Every day, from noon until evening.
	if(Npc_GetDistToWP(self,"NW_CITY_PATH_HABOUR_16_01") <= 500)
	{
		AI_Output(self,other,"DIA_Alrik_YouFight_09_02");	//And right here!
	};
	AI_Output(self,other,"DIA_Alrik_YouFight_09_03");	//Behind the warehouse in the harbor district - home, sweet home!
};


instance DIA_Alrik_Regeln(C_Info)
{
	npc = VLK_438_Alrik;
	nr = 1;
	condition = DIA_Alrik_Regeln_Condition;
	information = DIA_Alrik_Regeln_Info;
	permanent = FALSE;
	description = "What are the rules for the fight?";
};


func int DIA_Alrik_Regeln_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Alrik_YouFight))
	{
		return TRUE;
	};
};

func void DIA_Alrik_Regeln_Info()
{
	AI_Output(other,self,"DIA_Alrik_Regeln_15_00");	//What are the rules for the fight?
	AI_Output(self,other,"DIA_Alrik_Regeln_09_01");	//Quite simple: All regular weapons are allowed. No bows or crossbows and NO magic!
	AI_Output(self,other,"DIA_Alrik_Regeln_09_02");	//We fight until one of us drops. And as soon as one of us is flat on his back, it's over, got it?
	AI_Output(self,other,"DIA_Alrik_Regeln_09_03");	//Whoever leaves the corner is out! So if you quit, I win!
	AI_Output(self,other,"DIA_Alrik_Regeln_09_04");	//The stake is 50 gold coins. If you win, you get 100 back. If not - well - then your money is down the drain. (grins)
	AI_Output(self,other,"DIA_Alrik_Regeln_09_05");	//Got it?
	AI_Output(other,self,"DIA_Alrik_Regeln_15_06");	//Yep!
};

func void B_Alrik_Again()
{
	AI_Output(self,other,"DIA_Alrik_Add_09_03");	//How's it going? Do you want to go up against me again? I think I've gotten better in the meantime ...
};

instance DIA_Alrik_NewFights2(C_Info)
{
	npc = VLK_438_Alrik;
	nr = 1;
	condition = DIA_Alrik_NewFights2_Condition;
	information = DIA_Alrik_NewFights2_Info;
	permanent = FALSE;
	important = TRUE;
};


func int DIA_Alrik_NewFights2_Condition()
{
	if((Kapitel >= 2) && (Kapitel < 3) && (Alrik_ArenaKampfVerloren <= 8))
	{
		return TRUE;
	};
};

func void DIA_Alrik_NewFights2_Info()
{
	B_AddFightSkill(self,NPC_TALENT_1H,10);
	B_SetAttributesToChapter(self,3);
	self.level = 20;
	self.attribute[ATR_HITPOINTS_MAX] = 700;
	self.attribute[ATR_HITPOINTS] = 700;
	self.aivar[AIV_OriginalFightTactic] = FAI_HUMAN_STRONG;
	self.fight_tactic = FAI_HUMAN_STRONG;
	self.aivar[AIV_VictoryXPGiven] = FALSE;
	B_Alrik_Again();
};

instance DIA_Alrik_NewFights3(C_Info)
{
	npc = VLK_438_Alrik;
	nr = 1;
	condition = DIA_Alrik_NewFights3_Condition;
	information = DIA_Alrik_NewFights3_Info;
	permanent = FALSE;
	important = TRUE;
};


func int DIA_Alrik_NewFights3_Condition()
{
	if((Kapitel >= 3) && (Kapitel < 4) && (Alrik_ArenaKampfVerloren <= 12))
	{
		return TRUE;
	};
};

func void DIA_Alrik_NewFights3_Info()
{
	B_AddFightSkill(self,NPC_TALENT_1H,10);
	B_SetAttributesToChapter(self,4);
	self.level = 30;
	self.attribute[ATR_STRENGTH] = 175;
	self.aivar[REAL_STRENGTH] = 175;
	self.attribute[ATR_HITPOINTS_MAX] = 1000;
	self.attribute[ATR_HITPOINTS] = 1000;
	self.aivar[AIV_VictoryXPGiven] = FALSE;
	B_Alrik_Again();
};


instance DIA_Alrik_NewFights4(C_Info)
{
	npc = VLK_438_Alrik;
	nr = 1;
	condition = DIA_Alrik_NewFights4_Condition;
	information = DIA_Alrik_NewFights4_Info;
	permanent = FALSE;
	important = TRUE;
};


func int DIA_Alrik_NewFights4_Condition()
{
	if((Kapitel >= 4) && (Kapitel < 5) && (Alrik_ArenaKampfVerloren <= 16))
	{
		return TRUE;
	};
};

func void DIA_Alrik_NewFights4_Info()
{
	B_AddFightSkill(self,NPC_TALENT_1H,10);
	B_SetAttributesToChapter(self,5);
	self.level = 40;
	self.aivar[AIV_OriginalFightTactic] = FAI_HUMAN_MASTER;
	self.fight_tactic = FAI_HUMAN_MASTER;
	self.attribute[ATR_HITPOINTS_MAX] = 1500;
	self.attribute[ATR_HITPOINTS] = 1500;
	self.attribute[ATR_STRENGTH] = 225;
	self.aivar[REAL_STRENGTH] = 225;
	self.aivar[AIV_VictoryXPGiven] = FALSE;
	B_Alrik_Again();
};

instance DIA_Alrik_NewFights6(C_Info)
{
	npc = VLK_438_Alrik;
	nr = 1;
	condition = DIA_Alrik_NewFights6_Condition;
	information = DIA_Alrik_NewFights6_Info;
	permanent = FALSE;
	important = TRUE;
};


func int DIA_Alrik_NewFights6_Condition()
{
	if((Kapitel >= 5) && (Alrik_ArenaKampfVerloren <= 21))
	{
		return TRUE;
	};
};

func void DIA_Alrik_NewFights6_Info()
{
	B_AddFightSkill(self,NPC_TALENT_1H,10);
	B_SetAttributesToChapter(self,6);
	self.level = 50;
	self.attribute[ATR_HITPOINTS_MAX] = 2000;
	self.attribute[ATR_HITPOINTS] = 2000;
	self.attribute[ATR_STRENGTH] = 300;
	self.aivar[REAL_STRENGTH] = 300;
	self.aivar[AIV_VictoryXPGiven] = FALSE;
	B_Alrik_Again();
};

func void B_Alrik_Enough()
{
	AI_Output(self,other,"DIA_Alrik_WannaFight_09_05");	//I think you've won often enough.
	AI_Output(self,other,"DIA_Alrik_WannaFight_09_06");	//Don't get me wrong, but my skull's still buzzing from the last time...
};

func void B_Alrik_ComeBackLater()
{
	AI_Output(self,other,"DIA_Alrik_Add_09_02");	//Come back again later. In the meantime, I'll train ...
};


instance DIA_Alrik_WannaFight(C_Info)
{
	npc = VLK_438_Alrik;
	nr = 1;
	condition = DIA_Alrik_WannaFight_Condition;
	information = DIA_Alrik_WannaFight_Info;
	permanent = TRUE;
	description = "I want to fight against you!";
};


func int DIA_Alrik_WannaFight_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Alrik_Regeln) && (self.aivar[AIV_ArenaFight] == AF_NONE))
	{
		return TRUE;
	};
};

func void DIA_Alrik_WannaFight_Info()
{
	AI_Output(other,self,"DIA_Alrik_WannaFight_15_00");	//I want to fight against you!
	Info_ClearChoices(DIA_Alrik_WannaFight);
	if(Kapitel <= 1 && ((Alrik_ArenaKampfVerloren > 0) && (Npc_HasItems(self,ItMw_AlriksSword_Mis) == 0)) || (Npc_HasEquippedMeleeWeapon(self) == FALSE))
	{
		if(MIS_Alrik_Sword == LOG_SUCCESS)
		{
			AI_Output(self,other,"DIA_Alrik_WannaFight_09_01");	//First give me back my sword. Then we'll see...
		}
		else
		{
			AI_Output(self,other,"DIA_Alrik_WannaFight_09_02");	//Nah, nah. Before I go up against you again, I need a better weapon!
			AI_Output(self,other,"DIA_Alrik_WannaFight_09_03");	//I had to sell my sword a few days ago.
			AI_Output(self,other,"DIA_Alrik_WannaFight_09_04");	//With that baby, I'm unbeatable! If you get it back for me, I'll take you on again!
			Alrik_VomSchwertErzaehlt = TRUE;
			Log_CreateTopic(TOPIC_AlrikSchwert,LOG_MISSION);
			Log_SetTopicStatus(TOPIC_AlrikSchwert,LOG_Running);
			B_LogEntry(TOPIC_AlrikSchwert,"Alrik sold his sword to the merchant Jora. He'll only fight me if I bring it back to him.");
		};
	}
	else if((Kapitel <= 1) && (Alrik_ArenaKampfVerloren > 3))
	{
		AI_Output(self,other,"DIA_Alrik_Add_09_00");	//I think that should be enough for now ...
		AI_Output(self,other,"DIA_Alrik_Add_09_01");	//Let me have a short break.
		B_Alrik_ComeBackLater();
	}
	else if((Kapitel >= 2) && (Kapitel < 3) && (Alrik_ArenaKampfVerloren > 7))
	{
		B_Alrik_Enough();
		B_Alrik_ComeBackLater();
	}
	else if((Kapitel >= 3) && (Kapitel < 4) && (Alrik_ArenaKampfVerloren > 11))
	{
		B_Alrik_Enough();
		B_Alrik_ComeBackLater();
	}
	else if((Kapitel >= 4) && (Kapitel < 5) && (Alrik_ArenaKampfVerloren > 15))
	{
		B_Alrik_Enough();
		B_Alrik_ComeBackLater();
	}
	else if((Kapitel >= 5) && (Alrik_ArenaKampfVerloren > 20))
	{
		B_Alrik_Enough();
		AI_Output(self,other,"DIA_Alrik_Add_09_04");	//Besides, I've scraped enough gold together by now.
		AI_Output(self,other,"DIA_Alrik_Add_09_05");	//I'm quitting, and I'm going to find me a place to stay somewhere in the city...
		AI_Output(self,other,"DIA_Alrik_Add_09_06");	//Who knows, maybe I'll open a weapons shop ...
	}
	else if(Wld_IsTime(11,0,19,0))
	{
		AI_Output(self,other,"DIA_Alrik_WannaFight_09_07");	//Do you have 50 gold pieces?
		Info_ClearChoices(DIA_Alrik_WannaFight);
		Info_AddChoice(DIA_Alrik_WannaFight,"Nope ...",DIA_Alrik_WannaFight_NoGold);
		if(Npc_HasItems(other,ItMi_Gold) >= 50)
		{
			Info_AddChoice(DIA_Alrik_WannaFight,"Here you are ...",DIA_Alrik_WannaFight_Gold);
		};
	}
	else
	{
		AI_Output(self,other,"DIA_Alrik_WannaFight_09_08");	//I only fight from noon until evening.
		AI_Output(self,other,"DIA_Alrik_WannaFight_09_09");	//The fighting is only worth it if there are enough viewers to make bets!
		if(Wld_IsTime(19,0,3,30))
		{
			AI_Output(self,other,"DIA_Alrik_WannaFight_09_10");	//It's much too late now. Come back tomorrow at noon!
		}
		else
		{
			AI_Output(self,other,"DIA_Alrik_WannaFight_09_11");	//It's still too early, come back later!
		};
	};
};

func void DIA_Alrik_WannaFight_Gold()
{
	AI_Output(other,self,"DIA_Alrik_WannaFight_Gold_15_00");	//Here you are ...
	B_GiveInvItems(other,self,ItMi_Gold,50);
	AI_Output(self,other,"DIA_Alrik_WannaFight_Gold_09_01");	//(loudly) We have a new challenger!
	AI_Output(self,other,"DIA_Alrik_WannaFight_Gold_09_02");	//The bets are placed...
	Npc_RemoveInvItems(self,ItMi_Gold,Npc_HasItems(self,ItMi_Gold));
	if(Kapitel <= 1 && MIS_Alrik_Sword == LOG_SUCCESS)
	{
		CreateInvItems(self,ItMi_Gold,125);
	}
	else if(Kapitel >= 2 && Kapitel < 3)
	{
		CreateInvItems(self,ItMi_Gold,150);
	}
	else if(Kapitel >= 3 && Kapitel < 4)
	{
		CreateInvItems(self,ItMi_Gold,200);
	}
	else if(Kapitel >= 4 && Kapitel < 5)
	{
		CreateInvItems(self,ItMi_Gold,250);
	}
	else if(Kapitel >= 5)
	{
		CreateInvItems(self,ItMi_Gold,300);
	}
	else
	{
		CreateInvItems(self,ItMi_Gold,100);
	};
	AI_Output(self,other,"DIA_Alrik_WannaFight_Gold_09_03");	//Are you ready?
	self.aivar[AIV_ArenaFight] = AF_RUNNING;
	Alrik_Kaempfe = Alrik_Kaempfe + 1;
	Info_ClearChoices(DIA_Alrik_WannaFight);
	Info_AddChoice(DIA_Alrik_WannaFight,"Just a second ...",DIA_Alrik_WannaFight_Moment);
	Info_AddChoice(DIA_Alrik_WannaFight,"Come here!",DIA_Alrik_WannaFight_NOW);
};

func void DIA_Alrik_WannaFight_NoGold()
{
	AI_Output(other,self,"DIA_Alrik_WannaFight_NoGold_15_00");	//Nope ...
	AI_Output(self,other,"DIA_Alrik_WannaFight_NoGold_09_01");	//Then go get them! No fighting without a stake!
	Info_ClearChoices(DIA_Alrik_WannaFight);
};

func void DIA_Alrik_WannaFight_NOW()
{
	AI_Output(other,self,"DIA_Alrik_WannaFight_NOW_15_00");	//Come here!
	AI_Output(self,other,"DIA_Alrik_WannaFight_NOW_09_01");	//Then let's see what you can do!
	if(self.attribute[ATR_HITPOINTS] < self.attribute[ATR_HITPOINTS_MAX])
	{
		CreateInvItems(self,ItPo_Health_Addon_04,1);
		B_UseItem(self,ItPo_Health_Addon_04);
	};
	AI_StopProcessInfos(self);
	B_Attack(self,other,AR_NONE,1);
};

func void DIA_Alrik_WannaFight_Moment()
{
	AI_Output(other,self,"DIA_Alrik_WannaFight_Moment_15_00");	//Just a second ...
	AI_Output(self,other,"DIA_Alrik_WannaFight_Moment_09_01");	//Take your time...I'm starting now!
	if(self.attribute[ATR_HITPOINTS] < self.attribute[ATR_HITPOINTS_MAX])
	{
		CreateInvItems(self,ItPo_Health_Addon_04,1);
		B_UseItem(self,ItPo_Health_Addon_04);
	};
	AI_StopProcessInfos(self);
	B_Attack(self,other,AR_NONE,1);
};


instance DIA_Alrik_AfterFight(C_Info)
{
	npc = VLK_438_Alrik;
	nr = 1;
	condition = DIA_Alrik_AfterFight_Condition;
	information = DIA_Alrik_AfterFight_Info;
	permanent = TRUE;
	important = TRUE;
};


func int DIA_Alrik_AfterFight_Condition()
{
	if((self.aivar[AIV_LastFightComment] == FALSE) && (self.aivar[AIV_LastFightAgainstPlayer] != FIGHT_NONE))
	{
		if(self.aivar[AIV_ArenaFight] != AF_NONE)
		{
			return TRUE;
		}
		else if(Npc_IsInState(self,ZS_Talk))
		{
			return TRUE;
		};
	};
};

func void DIA_Alrik_AfterFight_Info()
{
	if((self.aivar[AIV_LastPlayerAR] == AR_NONE) && (self.aivar[AIV_ArenaFight] != AF_NONE) && (self.aivar[AIV_ArenaFight] != AF_AFTER_PLUS_DAMAGE))
	{
		if(self.aivar[AIV_LastFightAgainstPlayer] == FIGHT_LOST)
		{
			AI_Output(self,other,"DIA_Alrik_AfterFight_09_00");	//Oh man! You pack quite a punch.
			if(Npc_HasItems(self,ItMi_Gold) >= 100)
			{
				AI_Output(self,other,"DIA_Alrik_AfterFight_09_01");	//Here's your 100 gold pieces! You've earned them!
				B_GiveInvItems(self,other,ItMi_Gold,Npc_HasItems(self,ItMi_Gold));
			}
			else if(Npc_HasItems(self,ItMi_Gold) == 0)
			{
				AI_Output(self,other,"DIA_Alrik_AfterFight_09_02");	//I see you already took your gold.
				AI_Output(self,other,"DIA_Alrik_AfterFight_09_03");	//You could have waited until I gave it to you - I keep my word!
			}
			else
			{
				AI_Output(self,other,"DIA_Alrik_AfterFight_09_04");	//You went through my pockets while I was unconscious!
				AI_Output(self,other,"DIA_Alrik_AfterFight_09_05");	//That's bad form, man! No matter, the money was yours anyway! Here's the rest.
				B_GiveInvItems(self,other,ItMi_Gold,Npc_HasItems(self,ItMi_Gold));
			};
			Alrik_ArenaKampfVerloren = Alrik_ArenaKampfVerloren + 1;
		}
		else if(self.aivar[AIV_LastFightAgainstPlayer] == FIGHT_WON)
		{
			AI_Output(self,other,"DIA_Alrik_AfterFight_09_06");	//It was a good fight. Your stake is gone - don't make too much of it, it was for a good cause! (grins)
		}
		else
		{
			AI_Output(self,other,"DIA_Alrik_AfterFight_09_07");	//Hey, like I said, whoever leaves the corner loses the fight! If you want to try again, I'm at your service!
		};
		if(Alrik_Kaempfe == 1)
		{
			AI_Output(self,other,"DIA_Alrik_AfterFight_09_08");	//And one more thing: No one talks about what goes on behind the warehouse.
			if((other.guild != GIL_MIL) && (other.guild != GIL_PAL))
			{
				AI_Output(self,other,"DIA_Alrik_AfterFight_09_09");	//The militia puts everyone who does the slightest thing here behind bars. And those boys don't like to see betting on fights.
			};
		};
		self.aivar[AIV_ArenaFight] = AF_NONE;
		self.aivar[AIV_LastFightComment] = TRUE;
	}
	else
	{
		if(self.aivar[AIV_ArenaFight] == AF_AFTER_PLUS_DAMAGE)
		{
			AI_Output(self,other,"DIA_Alrik_AfterFight_09_10");	//The fight was over, you bum!
			AI_Output(self,other,"DIA_Alrik_AfterFight_09_11");	//I don't like it when people don't obey the rules.
			AI_Output(self,other,"DIA_Alrik_AfterFight_09_12");	//Get out of here!
		}
		else
		{
			if(Alrik_Kaempfe == 0)
			{
				AI_Output(self,other,"DIA_Alrik_AfterFight_09_13");	//If you wanted to fight me, you only needed to challenge me.
			}
			else
			{
				AI_Output(self,other,"DIA_Alrik_AfterFight_09_14");	//If you wanted another fight, all you needed to do was challenge me!
			};
			AI_Output(self,other,"DIA_Alrik_AfterFight_09_15");	//I don't want anything to do with lowlifes like you! Beat it!
		};
		self.aivar[AIV_ArenaFight] = AF_NONE;
		AI_StopProcessInfos(self);
	};
};


instance DIA_Alrik_DuWohnst(C_Info)
{
	npc = VLK_438_Alrik;
	nr = 1;
	condition = DIA_Alrik_DuWohnst_Condition;
	information = DIA_Alrik_DuWohnst_Info;
	permanent = FALSE;
	description = "You 'live' behind the warehouse?";
};


func int DIA_Alrik_DuWohnst_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Alrik_YouFight))
	{
		return TRUE;
	};
};

func void DIA_Alrik_DuWohnst_Info()
{
	AI_Output(other,self,"DIA_Alrik_DuWohnst_15_00");	//(surprised) You 'live' behind the warehouse?
	AI_Output(self,other,"DIA_Alrik_DuWohnst_09_01");	//It's only temporary. (grins) When you have as much gold as I do, you can afford a little luxury!
	AI_Output(self,other,"DIA_Alrik_DuWohnst_09_02");	//I was a drill instructor in the army, but I left that bunch to seek my fortune in adventure.
	AI_Output(self,other,"DIA_Alrik_DuWohnst_09_03");	//Now I've wound up in this shithole. My last 100 gold pieces went to the guards at the city gate.
	AI_Output(self,other,"DIA_Alrik_DuWohnst_09_04");	//So, I'm seeing to it that I come into money again. I even had to sell my sword.
	Alrik_VomSchwertErzaehlt = TRUE;
};


instance DIA_Alrik_WerSchwert(C_Info)
{
	npc = VLK_438_Alrik;
	nr = 1;
	condition = DIA_Alrik_WerSchwert_Condition;
	information = DIA_Alrik_WerSchwert_Info;
	permanent = FALSE;
	description = "To whom did you sell the sword?";
};


func int DIA_Alrik_WerSchwert_Condition()
{
	if((Alrik_VomSchwertErzaehlt == TRUE) && (MIS_Alrik_Sword != LOG_SUCCESS))
	{
		return TRUE;
	};
};

func void DIA_Alrik_WerSchwert_Info()
{
	AI_Output(other,self,"DIA_Alrik_WerSchwert_15_00");	//To whom did you sell the sword?
	AI_Output(self,other,"DIA_Alrik_WerSchwert_09_01");	//I swapped it to a trader in the marketplace for some stuff.
	AI_Output(self,other,"DIA_Alrik_WerSchwert_09_02");	//The guy's called Jora. The torches and the bit of meat that he gave me are long used up.
	AI_Output(other,self,"DIA_Alrik_WerSchwert_15_03");	//He isn't likely to give me the sword for nothing ...
	AI_Output(self,other,"DIA_Alrik_WerSchwert_09_04");	//It's an old sword. He won't want much for it. Just think of the money as an extra stake for the fight. (grins)
	MIS_Alrik_Sword = LOG_Running;
};


var int Alrik_EinmalSchwertBonus;

instance DIA_Alrik_HaveSword(C_Info)
{
	npc = VLK_438_Alrik;
	nr = 1;
	condition = DIA_Alrik_HaveSword_Condition;
	information = DIA_Alrik_HaveSword_Info;
	permanent = TRUE;
	description = "I've got your sword!";
};


func int DIA_Alrik_HaveSword_Condition()
{
	if(Npc_HasItems(other,ItMw_AlriksSword_Mis) > 0)
	{
		return TRUE;
	};
};

func void DIA_Alrik_HaveSword_Info()
{
	AI_Output(other,self,"DIA_Alrik_HaveSword_15_00");	//I've got your sword!
	B_GiveInvItems(other,self,ItMw_AlriksSword_Mis,1);
	if(MIS_Alrik_Sword != LOG_SUCCESS)
	{
		AI_Output(self,other,"DIA_Alrik_HaveSword_09_01");	//Ah! That's much better than fighting with an old stick!
		MIS_Alrik_Sword = LOG_SUCCESS;
		B_GivePlayerXP(XP_AlriksSword);
	}
	else
	{
		AI_Output(self,other,"DIA_Alrik_HaveSword_09_02");	//Good! I'm curious whether you'll dare to challenge me again!
	};
	if(Alrik_EinmalSchwertBonus == FALSE)
	{
		B_AddFightSkill(self,NPC_TALENT_1H,10);
		Alrik_EinmalSchwertBonus = TRUE;
		self.aivar[AIV_VictoryXPGiven] = FALSE;
		self.level = 15;
		self.attribute[ATR_STRENGTH] = 80;
		self.aivar[REAL_STRENGTH] = 80;
		self.attribute[ATR_HITPOINTS_MAX] = 360;
		self.attribute[ATR_HITPOINTS] = 360;
	};
	AI_EquipBestMeleeWeapon(self);
};


instance DIA_Alrik_Krieg(C_Info)
{
	npc = VLK_438_Alrik;
	nr = 1;
	condition = DIA_Alrik_Krieg_Condition;
	information = DIA_Alrik_Krieg_Info;
	permanent = FALSE;
	description = "What do you know about the war against the orcs?";
};


func int DIA_Alrik_Krieg_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Alrik_DuWohnst) || (hero.guild != GIL_NONE))
	{
		return TRUE;
	};
};

func void DIA_Alrik_Krieg_Info()
{
	AI_Output(other,self,"DIA_Alrik_Krieg_15_00");	//What do you know about the war against the orcs?
	AI_Output(self,other,"DIA_Alrik_Krieg_09_01");	//There's not much to tell. The war has been going on for too long.
	AI_Output(self,other,"DIA_Alrik_Krieg_09_02");	//The country people are starving. Everywhere there are peasant revolts that are put down mercilessly by the King.
	AI_Output(self,other,"DIA_Alrik_Krieg_09_03");	//But there's just too many of them. If the war doesn't end soon, the realm will fall apart.
};


var int Alrik_VorausErzaehlt;

instance DIA_Alrik_Ausbilden(C_Info)
{
	npc = VLK_438_Alrik;
	nr = 1;
	condition = DIA_Alrik_Ausbilden_Condition;
	information = DIA_Alrik_Ausbilden_Info;
	permanent = TRUE;
	description = "Can you train me?";
};


func int DIA_Alrik_Ausbilden_Condition()
{
	if((Npc_KnowsInfo(other,DIA_Alrik_DuWohnst) || (hero.guild != GIL_NONE)) && (Alrik_Teach1H == FALSE))
	{
		return TRUE;
	};
};

func void DIA_Alrik_Ausbilden_Info()
{
	AI_Output(other,self,"DIA_Alrik_Ausbilden_15_00");	//Can you train me?
	if((Alrik_Kaempfe == 0) && (hero.guild == GIL_NONE))
	{
		AI_Output(self,other,"DIA_Alrik_Ausbilden_09_01");	//If you really want to learn how to fight, then go up against me. (smirks) The lesson is no extra charge.
		Alrik_VorausErzaehlt = TRUE;
	}
	else
	{
		if(Alrik_VorausErzaehlt == TRUE)
		{
			AI_Output(self,other,"DIA_Alrik_Ausbilden_09_02");	//I keep my word. I'll teach you everything I know - provided you have the necessary experience.
		}
		else
		{
			AI_Output(self,other,"DIA_Alrik_Ausbilden_09_03");	//As long as you have the necessary experience - sure.
		};
		Alrik_Teach1H = TRUE;
		Log_CreateTopic(TOPIC_CityTeacher,LOG_NOTE);
		B_LogEntry(TOPIC_CityTeacher,"Alrik can train me to fight with one-handed weapons. He hangs round behind the storehouse in the harbor district.");
	};
};


var int Alrik_Merke_1h;

instance DIA_Alrik_Teach(C_Info)
{
	npc = VLK_438_Alrik;
	nr = 1;
	condition = DIA_Alrik_Teach_Condition;
	information = DIA_Alrik_Teach_Info;
	permanent = TRUE;
	description = "Train me as a swordfighter!";
};


func int DIA_Alrik_Teach_Condition()
{
	if(Alrik_Teach1H == TRUE)
	{
		return TRUE;
	};
};

func void DIA_Alrik_Teach_Info()
{
	AI_Output(other,self,"DIA_Alrik_Teach_15_00");	//Train me as a swordfighter!
	Alrik_Merke_1h = other.HitChance[NPC_TALENT_1H];
	Info_ClearChoices(DIA_Alrik_Teach);
	Info_AddChoice(DIA_Alrik_Teach,Dialog_Back,DIA_Alrik_Teach_Back);
	Info_AddChoice(DIA_Alrik_Teach,B_BuildLearnString(PRINT_Learn1h1,B_GetLearnCostTalent(other,NPC_TALENT_1H,1)),DIA_Alrik_Teach_1H_1);
	Info_AddChoice(DIA_Alrik_Teach,B_BuildLearnString(PRINT_Learn1h5,B_GetLearnCostTalent(other,NPC_TALENT_1H,5)),DIA_Alrik_Teach_1H_5);
};

func void DIA_Alrik_Teach_Back()
{
	if(other.HitChance[NPC_TALENT_1H] >= 35)
	{
		AI_Output(self,other,"DIA_Alrik_Teach_Back_09_00");	//You're no longer a beginner!
	}
	else if(other.HitChance[NPC_TALENT_1H] > Alrik_Merke_1h)
	{
		AI_Output(self,other,"DIA_Alrik_Teach_Back_09_01");	//You're already better. Soon you'll be a regular fighter!
	};
	Info_ClearChoices(DIA_Alrik_Teach);
};

func void DIA_Alrik_Teach_1H_1()
{
	B_TeachFightTalentPercent(self,other,NPC_TALENT_1H,1,40);
	Info_ClearChoices(DIA_Alrik_Teach);
	Info_AddChoice(DIA_Alrik_Teach,Dialog_Back,DIA_Alrik_Teach_Back);
	Info_AddChoice(DIA_Alrik_Teach,B_BuildLearnString(PRINT_Learn1h1,B_GetLearnCostTalent(other,NPC_TALENT_1H,1)),DIA_Alrik_Teach_1H_1);
	Info_AddChoice(DIA_Alrik_Teach,B_BuildLearnString(PRINT_Learn1h5,B_GetLearnCostTalent(other,NPC_TALENT_1H,5)),DIA_Alrik_Teach_1H_5);
};

func void DIA_Alrik_Teach_1H_5()
{
	B_TeachFightTalentPercent(self,other,NPC_TALENT_1H,5,40);
	Info_ClearChoices(DIA_Alrik_Teach);
	Info_AddChoice(DIA_Alrik_Teach,Dialog_Back,DIA_Alrik_Teach_Back);
	Info_AddChoice(DIA_Alrik_Teach,B_BuildLearnString(PRINT_Learn1h1,B_GetLearnCostTalent(other,NPC_TALENT_1H,1)),DIA_Alrik_Teach_1H_1);
	Info_AddChoice(DIA_Alrik_Teach,B_BuildLearnString(PRINT_Learn1h5,B_GetLearnCostTalent(other,NPC_TALENT_1H,5)),DIA_Alrik_Teach_1H_5);
};

