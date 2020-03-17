
func void B_MM_AssessSurprise()
{
	Npc_SetTarget(self,other);
};

func void ZS_MM_Attack()
{
	Npc_SetPercTime(self,1);
	Npc_PercEnable(self,PERC_ASSESSBODY,B_MM_AssessBody);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_MM_AssessDamage);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_MM_AssessWarn);
	Npc_PercEnable(self,PERC_ASSESSSURPRISE,B_MM_AssessSurprise);
	B_ValidateOther();
	if(self.guild == GIL_SHEEP)
	{
		Npc_ClearAIQueue(self);
		B_ClearPerceptions(self);
		Npc_SetTarget(self,other);
		AI_StartState(self,ZS_MM_Flee,0,"");
		return;
	};
	AI_Standup(self);
	AI_SetWalkMode(self,NPC_RUN);
	Npc_SendPassivePerc(self,PERC_ASSESSWARN,other,self);
	self.aivar[AIV_PursuitEnd] = FALSE;
	self.aivar[AIV_StateTime] = 0;
	self.aivar[AIV_HitByOtherNpc] = 0;
	self.aivar[AIV_SelectSpell] = 0;
	self.aivar[AIV_TAPOSITION] = 0;
	if(self.guild == GIL_DRAGON || self.guild == GIL_TROLL)
	{
		self.aivar[AIV_DragonTimer] = 0;
	};
};

func int ZS_MM_Attack_Loop()
{
	Npc_GetTarget(self);
	if(self.guild == GIL_TROLL)
	{	
		self.aivar[AIV_DragonTimer] += 1;
		//self.aivar[AIV_TAPOSITION] += 1;
		if(self.attribute[ATR_HITPOINTS] < self.attribute[ATR_HITPOINTS_MAX])
		{
			//if((self.aivar[AIV_MM_REAL_ID] == ID_TROLL) && self.aivar[AIV_DragonTimer] >= 3)
			if(self.aivar[AIV_MM_REAL_ID] == ID_TROLL && self.aivar[AIV_DragonTimer] >= 3)
			{
				self.attribute[ATR_HITPOINTS] += 1;
				self.aivar[AIV_DragonTimer] = 0;
				//self.aivar[AIV_TAPOSITION] = 0;
			}
			else if((self.aivar[AIV_MM_REAL_ID] == ID_TROLL_BLACK) && self.aivar[AIV_DragonTimer] >= 2)
			{
				self.attribute[ATR_HITPOINTS] += 1;
				self.aivar[AIV_DragonTimer] = 0;
				//self.aivar[AIV_TAPOSITION] = 0;
			};
			
			if(self.attribute[ATR_HITPOINTS] > self.attribute[ATR_HITPOINTS_MAX])
			{
				self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
			};
		};
	};
	
	if(self.guild == GIL_DRAGON)
	{
		// var string concatText;
		// concatText = ConcatStrings("Dragon Timer: ",IntToString(self.aivar[AIV_DragonTimer]));
		// PrintScreen(concatText,55,34,FONT_Screen,2);
		
		self.aivar[AIV_DragonTimer] += 1;
		if(self.attribute[ATR_HITPOINTS] < self.attribute[ATR_HITPOINTS_MAX])
		{
			if(Npc_IsInFightMode(self,FMODE_MAGIC))
			{
				self.attribute[ATR_HITPOINTS] += 3;
			}
			else if(Npc_IsInFightMode(self,FMODE_FIST) && self.aivar[AIV_DragonTimer] % 2 == 0)
			{
				self.attribute[ATR_HITPOINTS] += 3;
			}
			else
			{
				self.attribute[ATR_HITPOINTS] += 1;
			};
			
			if(self.attribute[ATR_HITPOINTS] > self.attribute[ATR_HITPOINTS_MAX])
			{
				self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
			};
		};
		if(self.aivar[AIV_DragonTimer] == 350)
		{
			AI_Standup(self);
			AI_PlayAni(self,"T_WARN");
			//PrintScreen("Loop Ended",-1,-1,FONT_Screen,2);
			return LOOP_END;
		};
	};
	
	if((RavenIsDead == TRUE) && (self.guild == GIL_Stoneguardian))
	{
		B_KillNpc(self);
	};
	if(CurrentLevel == OldWorld_Zen)
	{
		if(Npc_GetDistToWP(self,"OC_RAMP_07") <= 500)
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			AI_PlayAni(self,"T_WARN");
			self.aivar[AIV_PursuitEnd] = TRUE;
			return LOOP_END;
		};
	};
	if(Npc_GetDistToNpc(self,other) > FIGHT_DIST_CANCEL)
	{
		Npc_ClearAIQueue(self);
		AI_Standup(self);
		self.aivar[AIV_PursuitEnd] = TRUE;
		return LOOP_END;
	};
	if((Npc_GetStateTime(self) > self.aivar[AIV_MM_FollowTime]) && (self.aivar[AIV_PursuitEnd] == FALSE))
	{
		Npc_ClearAIQueue(self);
		AI_Standup(self);
		self.aivar[AIV_PursuitEnd] = TRUE;
		self.aivar[AIV_Dist] = Npc_GetDistToNpc(self,other);
		self.aivar[AIV_StateTime] = Npc_GetStateTime(self);
		AI_PlayAni(self,"T_WARN");
	};
	if(self.aivar[AIV_PursuitEnd] == TRUE)
	{
		if(Npc_GetDistToNpc(self,other) > self.senses_range)
		{
			return LOOP_END;
		};
		if(Npc_GetStateTime(self) > self.aivar[AIV_StateTime])
		{
			if((Npc_GetDistToNpc(self,other) < self.aivar[AIV_Dist]) || (!C_BodyStateContains(other,BS_RUN) && !C_BodyStateContains(other,BS_JUMP)))
			{
				self.aivar[AIV_PursuitEnd] = FALSE;
				Npc_SetStateTime(self,0);
				self.aivar[AIV_StateTime] = 0;
			}
			else
			{
				AI_TurnToNPC(self,other);
				self.aivar[AIV_Dist] = Npc_GetDistToNpc(self,other);
				self.aivar[AIV_StateTime] = Npc_GetStateTime(self);
			};
		};
		return LOOP_CONTINUE;
	};
	if((C_BodyStateContains(other,BS_SWIM) || C_BodyStateContains(other,BS_DIVE)) && (self.aivar[AIV_MM_FollowInWater] == FALSE))
	{
		Npc_ClearAIQueue(self);
		AI_Standup(self);
		return LOOP_END;
	};
	if(self.aivar[AIV_WaitBeforeAttack] == 1)
	{
		AI_Wait(self,0.8);
		self.aivar[AIV_WaitBeforeAttack] = 0;
	};
	if(self.level == 0)
	{
		if(Npc_GetStateTime(self) > self.aivar[AIV_StateTime])
		{
			self.aivar[AIV_SummonTime] = self.aivar[AIV_SummonTime] + 1;
			self.aivar[AIV_StateTime] = Npc_GetStateTime(self);
		};
		if(self.aivar[AIV_SummonTime] >= MONSTER_SUMMON_TIME)
		{
			//hero.aivar[AIV_SummonPoints] -= self.aivar[AIV_SummonPoints];
			Npc_ChangeAttribute(self,ATR_HITPOINTS,-self.attribute[ATR_HITPOINTS_MAX]);
		};
	};
	if(!C_BodyStateContains(other,BS_RUN) && !C_BodyStateContains(other,BS_JUMP) && (Npc_GetStateTime(self) > 0))
	{
		Npc_SetStateTime(self,0);
		self.aivar[AIV_StateTime] = 0;
	};
	if(self.aivar[AIV_MaxDistToWp] > 0)
	{
		if((Npc_GetDistToWP(self,self.wp) > self.aivar[AIV_MaxDistToWp]) && (Npc_GetDistToWP(other,self.wp) > self.aivar[AIV_MaxDistToWp]))
		{
			self.fight_tactic = FAI_NAILED;
		}
		else
		{
			self.fight_tactic = self.aivar[AIV_OriginalFightTactic];
		};
	};
	if(C_NpcIsMonsterMage(self) || (self.guild == GIL_SKELETON) || (self.guild == GIL_SUMMONED_SKELETON) || (self.guild > GIL_SEPERATOR_ORC))
	{
		B_CreateAmmo(self);
		Npc_ChangeAttribute(self,ATR_MANA,ATR_MANA_MAX);
		B_SelectWeapon(self,other);
	};	
	
	if(Hlp_IsValidNpc(other) && !C_NpcIsDown(other))
	{
		if(other.aivar[AIV_INVINCIBLE] == FALSE)
		{
			AI_Attack(self);
		}
		else
		{
			Npc_ClearAIQueue(self);
		};
		self.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID(other);
		return LOOP_CONTINUE;
	}
	else
	{
		if((self.aivar[AIV_MM_PRIORITY] == PRIO_EAT) && C_WantToEat(self,other))
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			return LOOP_END;
		};
		Npc_PerceiveAll(self);
		Npc_GetNextTarget(self);
		if(Hlp_IsValidNpc(other) && !C_NpcIsDown(other) && ((Npc_GetDistToNpc(self,other) < PERC_DIST_INTERMEDIAT) || Npc_IsPlayer(other)) && (other.aivar[AIV_INVINCIBLE] == FALSE))
		{
			self.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID(other);
			return LOOP_CONTINUE;
		}
		else
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			return LOOP_END;
		};
	};
};

func void ZS_MM_Attack_End()
{
	other = Hlp_GetNpc(self.aivar[AIV_LASTTARGET]);
	if(C_NpcIsMonsterMage(self) || (self.guild == GIL_SKELETON) || (self.guild == GIL_SUMMONED_SKELETON) || (self.guild > GIL_SEPERATOR_ORC))
	{
		AI_RemoveWeapon(self);
	};
	if(Npc_IsDead(other) && C_WantToEat(self,other))
	{
		Npc_ClearAIQueue(self);
		AI_StartState(self,ZS_MM_EatBody,0,"");
		return;
	};
};

