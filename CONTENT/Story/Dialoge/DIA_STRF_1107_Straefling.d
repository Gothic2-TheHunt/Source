
instance DIA_STRF_1107_EXIT(C_Info)
{
	npc = STRF_1107_Straefling;
	nr = 999;
	condition = DIA_STRF_1107_EXIT_Condition;
	information = DIA_STRF_1107_EXIT_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int DIA_STRF_1107_EXIT_Condition()
{
	return TRUE;
};

func void DIA_STRF_1107_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_STRF_1107_FINGER(C_Info)
{
	npc = STRF_1107_Straefling;
	condition = DIA_STRF_1107_FINGER_Condition;
	information = DIA_STRF_1107_FINGER_Info;
	important = TRUE;
};


func int DIA_STRF_1107_FINGER_Condition()
{
	if(Npc_IsInState(self,ZS_Talk))
	{
		return TRUE;
	};
};

func void DIA_STRF_1107_FINGER_Info()
{
	AI_Output(self,other,"DIA_STRF_1107_FINGER_01_00");	//Hands off my pots! Nobody touches my pots, understand?!
	AI_Output(self,other,"DIA_STRF_1107_FINGER_01_01");	//I'm responsible for the food, and that means nobody else has any business here! I hope I made myself clear!
};


instance DIA_STRF_1107_COOK(C_Info)
{
	npc = STRF_1107_Straefling;
	condition = DIA_STRF_1107_COOK_Condition;
	information = DIA_STRF_1107_COOK_Info;
	description = "Who made you a cook, of all people?";
};


func int DIA_STRF_1107_COOK_Condition()
{
	if(Npc_KnowsInfo(hero,dia_strf_1107_finger))
	{
		return TRUE;
	};
};

func void DIA_STRF_1107_COOK_Info()
{
	AI_Output(other,self,"DIA_STRF_1107_COOK_15_00");	//Who made you a cook, of all people?
	AI_Output(self,other,"DIA_STRF_1107_COOK_01_01");	//That was Commander Garond. Before I became a prisoner, I used to be the cook in the Raging Boar.
	AI_Output(other,self,"DIA_STRF_1107_COOK_15_02");	//And what did they lock you up for?
	AI_Output(self,other,"DIA_STRF_1107_COOK_01_03");	//There was a misunderstanding between a guest, a meat cleaver, and me.
};


instance DIA_STRF_1107_PERM(C_Info)
{
	npc = STRF_1107_Straefling;
	nr = 900;
	condition = DIA_STRF_1107_PERM_Condition;
	information = DIA_STRF_1107_PERM_Info;
	permanent = TRUE;
	description = "Anything new?";
};


func int DIA_STRF_1107_PERM_Condition()
{
	if(Npc_KnowsInfo(hero,dia_strf_1107_finger))
	{
		return TRUE;
	};
};

func void DIA_STRF_1107_PERM_Info()
{
	AI_Output(other,self,"DIA_STRF_1107_PERM_15_00");	//Anything new?
	AI_Output(self,other,"DIA_STRF_1107_PERM_01_01");	//If you want to learn the news, then ask the knights. I'm just an imprisoned cook.
};

instance DIA_STRF_1107_PICKPOCKET(C_Info)
{
	npc = STRF_1107_Straefling;
	nr = 900;
	condition = DIA_STRF_1107_PICKPOCKET_Condition;
	information = DIA_STRF_1107_PICKPOCKET_Info;
	permanent = TRUE;
	description = "(It would be simple to steal his food)";
};


func int DIA_STRF_1107_PICKPOCKET_Condition()
{
	if((Npc_GetTalentSkill(other,NPC_TALENT_PICKPOCKET) == 1) && (self.aivar[AIV_PlayerHasPickedMyPocket] == FALSE) && (other.attribute[ATR_DEXTERITY] >= (43 - Theftdiff)))
	{
		return TRUE;
	};
};

func void DIA_STRF_1107_PICKPOCKET_Info()
{
	Info_ClearChoices(DIA_STRF_1107_PICKPOCKET);
	Info_AddChoice(DIA_STRF_1107_PICKPOCKET,Dialog_Back,DIA_STRF_1107_PICKPOCKET_BACK);
	Info_AddChoice(DIA_STRF_1107_PICKPOCKET,DIALOG_PICKPOCKET,DIA_STRF_1107_PICKPOCKET_DoIt);
};

func void DIA_STRF_1107_PICKPOCKET_DoIt()
{
	if(other.attribute[ATR_DEXTERITY] >= 43)
	{
		CreateInvItems(self,ItFo_Stew,2);
		B_GiveInvItems(self,other,ItFo_Stew,2);
		CreateInvItems(self,ItFo_Sausage,3);
		B_GiveInvItems(self,other,ItFo_Sausage,3);
		CreateInvItems(self,ItFo_Honey,1);
		B_GiveInvItems(self,other,ItFo_Honey,1);
		CreateInvItems(self,ItFo_Bread,2);
		B_GiveInvItems(self,other,ItFo_Bread,2);
		self.aivar[AIV_PlayerHasPickedMyPocket] = TRUE;
		AI_PrintScreen("8 Items received (Food)",-1,YPOS_ItemGiven,FONT_ScreenSmall,2);
		B_GiveThiefXP();
		Info_ClearChoices(DIA_STRF_1107_PICKPOCKET);
	}
	else
	{
		B_ResetThiefLevel();
		AI_StopProcessInfos(self);
		B_Attack(self,other,AR_Theft,1);
	};

};

func void DIA_STRF_1107_PICKPOCKET_BACK()
{
	Info_ClearChoices(DIA_STRF_1107_PICKPOCKET);
};

