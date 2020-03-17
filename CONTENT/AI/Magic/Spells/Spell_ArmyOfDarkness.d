
const int SPL_Cost_ArmyOfDarkness = 150;

instance Spell_ArmyOfDarkness(C_Spell_Proto)
{
	time_per_mana = 0;
	targetCollectAlgo = TARGET_COLLECT_NONE;
};


func int Spell_Logic_ArmyOfDarkness(var int manaInvested)
{
	if(Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll_Circle6))
	{
		return SPL_SENDCAST;
	}
	else if(self.attribute[ATR_MANA] >= SPL_Cost_ArmyOfDarkness)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_ArmyOfDarkness(var int spellLevel)
{
	if(Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll_Circle6;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_ArmyOfDarkness;
	};
	if(Npc_IsPlayer(self))
	{
		if(!((Npc_GetDistToNpc(self, Summoned_Gobbo_Skeleton) < 9999) ||
			(Npc_GetDistToNpc(self, Summoned_Wolf) < 9999) ||
			(Npc_GetDistToNpc(self, Summoned_Skeleton) < 9999) ||					
			(Npc_GetDistToNpc(self, Summoned_Golem) < 9999) ||					
			(Npc_GetDistToNpc(self, Summoned_Demon) < 9999) ||					
			(Npc_GetDistToNpc(self, Summoned_Guardian) < 9999) ||					
			(Npc_GetDistToNpc(self, Summoned_ZOMBIE) < 9999) ||								
			(Npc_GetDistToNpc(self, Army_Of_Darkness_Skeleton_01) < 9999) ||
			(Npc_GetDistToNpc(self, Army_Of_Darkness_Skeleton_02) < 9999) ||
			(Npc_GetDistToNpc(self, Army_Of_Darkness_Skeleton_03) < 9999)))
		{
			self.aivar[AIV_SummonPoints] = 0;
		};
		if((self.aivar[AIV_SummonPoints] + 8) > (self.level / 3))
		{
			PrintScreen("Too much summons",-1,-1,FONT_Screen,2);
			if(Npc_GetActiveSpellIsScroll(self))
			{
				CreateInvItem(hero,ItSc_ArmyOfDarkness);
			};
		}
		else
		{
			hero.aivar[AIV_SummonPoints] =  hero.aivar[AIV_SummonPoints] + 8;
			Wld_SpawnNpcRange(self,Army_Of_Darkness_Skeleton_01,2,800);
			Wld_SpawnNpcRange(self,Army_Of_Darkness_Skeleton_02,2,800);
			Wld_SpawnNpcRange(self,Army_Of_Darkness_Skeleton_03,2,800);
		};
	}
	else
	{
		Wld_SpawnNpcRange(self,Skeleton,6,800);
	};
	self.aivar[AIV_SelectSpell] += 1;
};

