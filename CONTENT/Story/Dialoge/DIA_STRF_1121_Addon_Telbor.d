
instance DIA_Addon_Telbor_EXIT(C_Info)
{
	npc = STRF_1121_Addon_Telbor;
	nr = 999;
	condition = DIA_Addon_Telbor_EXIT_Condition;
	information = DIA_Addon_Telbor_EXIT_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int DIA_Addon_Telbor_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Addon_Telbor_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


var int Telbor_Once;

instance DIA_Addon_Telbor_Hi(C_Info)
{
	npc = STRF_1121_Addon_Telbor;
	nr = 2;
	condition = DIA_Addon_Telbor_Hi_Condition;
	information = DIA_Addon_Telbor_Hi_Info;
	permanent = TRUE;
	important = TRUE;
};


func int DIA_Addon_Telbor_Hi_Condition()
{
	if(Npc_IsInState(self,ZS_Talk) && !Npc_IsDead(Patrick) && !Npc_IsDead(Pardos))
	{
		return TRUE;
	};
};

func void DIA_Addon_Telbor_Hi_Info()
{
	AI_Output(self,other,"DIA_Addon_Telbor_Hi_12_00");	//Hey, I'm all right.
	if(Sklaven_Flucht == FALSE)
	{
		if(Pardos_Geheilt == FALSE)
		{
			AI_Output(self,other,"DIA_Addon_Telbor_Hi_12_01");	//But Pardos is pretty much down and out.
		}
		else
		{
			AI_Output(self,other,"DIA_Addon_Telbor_Hi_12_02");	//Thanks for helping Pardos.
			if(Telbor_Once == FALSE)
			{
				B_GivePlayerXP(XP_AmbientKap2);
				Telbor_Once = TRUE;
			};
		};
	};
	AI_Output(self,other,"DIA_Addon_Telbor_Hi_12_03");	//If there's anything you want, talk to Patrick. He's our spokesman.
	//AI_StopProcessInfos(self);
};

instance DIA_Addon_Telbor_PICKPOCKET(C_Info)
{
	npc = STRF_1121_Addon_Telbor;
	nr = 900;
	condition = DIA_Addon_Telbor_PICKPOCKET_Condition;
	information = DIA_Addon_Telbor_PICKPOCKET_Info;
	permanent = TRUE;
	description = Pickpocket_20;
};


func int DIA_Addon_Telbor_PICKPOCKET_Condition()
{
	return C_Beklauen(10,5);
};

func void DIA_Addon_Telbor_PICKPOCKET_Info()
{
	Info_ClearChoices(DIA_Addon_Telbor_PICKPOCKET);
	Info_AddChoice(DIA_Addon_Telbor_PICKPOCKET,Dialog_Back,DIA_Addon_Telbor_PICKPOCKET_BACK);
	Info_AddChoice(DIA_Addon_Telbor_PICKPOCKET,DIALOG_PICKPOCKET,DIA_Addon_Telbor_PICKPOCKET_DoIt);
};

func void DIA_Addon_Telbor_PICKPOCKET_DoIt()
{
	B_Beklauen();
	Info_ClearChoices(DIA_Addon_Telbor_PICKPOCKET);
};

func void DIA_Addon_Telbor_PICKPOCKET_BACK()
{
	Info_ClearChoices(DIA_Addon_Telbor_PICKPOCKET);
};
