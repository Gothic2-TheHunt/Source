
func void B_AssessMagic()
{
	if(Npc_GetLastHitSpellCat(self) == SPELL_BAD)
	{
		Npc_SendPassivePerc(self,PERC_ASSESSFIGHTSOUND,self,other);
	};
	if(Npc_GetLastHitSpellID(self) == SPL_Whirlwind)
	{
		Npc_ClearAIQueue(self);
		B_ClearPerceptions(self);
		AI_StartState(self,ZS_Whirlwind,0,"");
		return;
	};
	if(Npc_GetLastHitSpellID(self) == SPL_SuckEnergy)
	{
		Npc_ClearAIQueue(self);
		B_ClearPerceptions(self);
		AI_StartState(self,ZS_SuckEnergy,0,"");
		return;
	};
	if(Npc_GetLastHitSpellID(self) == SPL_GreenTentacle)
	{
		Npc_ClearAIQueue(self);
		B_ClearPerceptions(self);
		AI_StartState(self,ZS_Greententacle,0,"");
		return;
	};
	if(Npc_GetLastHitSpellID(self) == SPL_Swarm)
	{
		Npc_ClearAIQueue(self);
		B_ClearPerceptions(self);
		AI_StartState(self,ZS_Swarm,0,"");
		return;
	};
	if((Npc_GetLastHitSpellID(self) == SPL_IceCube) || (Npc_GetLastHitSpellID(self) == SPL_IceWave))
	{
		if((self.guild != GIL_DRAGON && self.guild != GIL_ICEGOLEM && self.aivar[AIV_MM_REAL_ID] != ID_UNDEADLORD))
		{
			Npc_ClearAIQueue(self);
			B_ClearPerceptions(self);
			AI_StartState(self,ZS_MagicFreeze,0,"");
		};
		//Npc_ClearAIQueue(self);
		//B_ClearPerceptions(self);
		//AI_StartState(self,ZS_MagicFreeze,0,"");
		return;
	};
	//if(Npc_GetLastHitSpellID(self) == SPL_LightningFlash)
	//{
	//	Npc_ClearAIQueue(self);
	//	B_ClearPerceptions(self);
	//	AI_StartState(self,ZS_ShortZapped,0,"");
	//	return;
	//};
	if(Npc_GetLastHitSpellID(self) == SPL_ChargeZap)
	{
		//Npc_ClearAIQueue(self);
		//B_ClearPerceptions(self);
		//PrintScreen("Zap called",55,36,FONT_Screen,2);
		//AI_StartState(self,ZS_Zapped,0,"");
		if(self.guild < GIL_SEPERATOR_HUM)
		{
			AI_StartState(self,ZS_ShortZapped,0,"");
		};

		return;
	};
	if(Npc_GetLastHitSpellID(self) == SPL_Fear)
	{
		//Npc_ClearAIQueue(self);
		//B_ClearPerceptions(self);
		//Npc_SetTarget(self,other);
		if((self.guild < GIL_SEPERATOR_HUM) && (self.guild != GIL_KDF) && (self.guild != GIL_PAL))
		{
			AI_StartState(self,ZS_MagicFlee,0,"");
			return;
		}
		else if((self.guild > GIL_SEPERATOR_HUM) && (self.guild != GIL_DRAGON) && (self.guild != GIL_TROLL) && (self.guild != GIL_DEMON) && (self.guild != GIL_STONEGOLEM) && (self.guild != GIL_ICEGOLEM) && (self.guild != GIL_FIREGOLEM) && (self.guild != GIL_SUMMONED_GOBBO_SKELETON) && (self.guild != GIL_SUMMONED_WOLF) && (self.guild != GIL_SUMMONED_SKELETON) && (self.guild != GIL_SUMMONED_GOLEM) && (self.guild != GIL_SUMMONED_DEMON) && (self.guild != GIL_SummonedGuardian) && (self.guild != GIL_SummonedZombie) && !(C_NpcIsUndead(self)))
		{
			AI_StartState(self,ZS_MM_Flee,0,"");
			return;
		};
	};
	if(Npc_GetLastHitSpellID(self) == SPL_Firerain)
	{
		if((self.guild != GIL_DRAGON && self.guild != GIL_FIREGOLEM))
		{
			Npc_ClearAIQueue(self);
			AI_StartState(self,ZS_MagicBurnShort,0,"");
		};
		//Npc_ClearAIQueue(self);
		//AI_StartState(self,ZS_MagicBurnShort,0,"");
		return;
	};
};


const func PLAYER_PERC_ASSESSMAGIC = B_AssessMagic;
