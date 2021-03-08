
func int B_StopMagicFlee()
{
	if((self.guild < GIL_SEPERATOR_HUM) && (self.guild != GIL_KDF) && (self.guild != GIL_PAL))
	{
		Npc_PercDisable(self,PERC_ASSESSDAMAGE);
		Npc_SetTarget(self,other);
		//PrintScreen("Magic Flee",55,40,FONT_Screen,2);
		AI_StartState(self,ZS_Flee,0,"");
	}
	else if((self.guild > GIL_SEPERATOR_HUM) && (self.guild != GIL_DRAGON) && (self.guild != GIL_TROLL) && (self.guild != GIL_DEMON) && (self.guild != GIL_STONEGOLEM) && (self.guild != GIL_ICEGOLEM) && (self.guild != GIL_FIREGOLEM) && (self.guild != GIL_SUMMONED_GOBBO_SKELETON) && (self.guild != GIL_SUMMONED_WOLF) && (self.guild != GIL_SUMMONED_SKELETON) && (self.guild != GIL_SUMMONED_GOLEM) && (self.guild != GIL_SUMMONED_DEMON) && (self.guild != GIL_SummonedGuardian) && (self.guild != GIL_SummonedZombie) && !(C_NpcIsUndead(self)))
	{
		//PrintScreen("Normal Flee",55,40,FONT_Screen,2);
		AI_StartState(self,ZS_MM_Flee,0,"");
	};
	//else if((self.guild == GIL_SUMMONED_GOBBO_SKELETON) || (self.guild == GIL_SUMMONED_WOLF) || (self.guild == GIL_SUMMONED_SKELETON) || (self.guild == GIL_SUMMONED_GOLEM) || (self.guild == GIL_SUMMONED_DEMON) || (self.guild == GIL_SummonedGuardian) || (self.guild == GIL_SummonedZombie))
	//{
	//	AI_StartState(self,ZS_MM_Rtn_Summoned,0,"");
	//};
	//AI_StartState(self,ZS_Flee,0,"");
};

func void ZS_MagicFlee()
{
	var int randy;
	
	if((self.guild < GIL_SEPERATOR_HUM))
	{
		Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_StopMagicFlee);
		Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
		self.aivar[AIV_Guardpassage_Status] = GP_NONE;
		Npc_SetRefuseTalk(self,0);
		Npc_SetTempAttitude(self,Npc_GetPermAttitude(self,hero));
		B_StopLookAt(self);
		AI_StopPointAt(self);
	};

	if(!Npc_HasBodyFlag(self,BS_FLAG_INTERRUPTABLE))
	{
		AI_Standup(self);
	}
	else
	{
		AI_StandupQuick(self);
	};
	if((self.guild < GIL_SEPERATOR_HUM))
	{
		randy = Hlp_Random(3);
		if(randy == 0)
		{
			AI_PlayAniBS(self,"T_STAND_2_FEAR_VICTIM1",BS_STAND);
		};
		if(randy == 1)
		{
			AI_PlayAniBS(self,"T_STAND_2_FEAR_VICTIM2",BS_STAND);
		};
		if(randy == 2)
		{
			AI_PlayAniBS(self,"T_STAND_2_FEAR_VICTIM3",BS_STAND);
		};
	};
};

func int ZS_MagicFlee_Loop()
{
    if((self.guild == GIL_DRAGON) || (self.guild == GIL_TROLL) || (self.guild == GIL_DEMON) || (self.guild == GIL_STONEGOLEM) || (self.guild == GIL_ICEGOLEM) || (self.guild == GIL_FIREGOLEM) || (self.guild == GIL_SUMMONED_GOBBO_SKELETON) || (self.guild == GIL_SUMMONED_WOLF) || (self.guild == GIL_SUMMONED_SKELETON) || (self.guild == GIL_SUMMONED_GOLEM) || (self.guild == GIL_SUMMONED_DEMON) || (self.guild == GIL_SummonedGuardian) || (self.guild == GIL_SummonedZombie) || (C_NpcIsUndead(self)))
	{
		return LOOP_END;
	};
	if(Npc_GetStateTime(self) > SPL_TIME_Fear)
	{
		Npc_ClearAIQueue(self);
		B_StopMagicFlee();
	};
};

func void ZS_MagicFlee_End()
{
};

