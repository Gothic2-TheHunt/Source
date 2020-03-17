
const int SPL_Cost_SummonWolf = 40;

instance Spell_SummonWolf(C_Spell_Proto)
{
	time_per_mana = 0;
	targetCollectAlgo = TARGET_COLLECT_NONE;
};


func int Spell_Logic_SummonWolf(var int manaInvested)
{
	if(Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll_Circle3))
	{
		return SPL_SENDCAST;
	}
	else if(self.attribute[ATR_MANA] >= SPL_Cost_SummonWolf)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_SummonWolf()
{
	if(Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll_Circle3;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_SummonWolf;
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
		if((self.aivar[AIV_SummonPoints] + 2) > (self.level / 3))
		{
			PrintScreen("Too much summons",-1,-1,FONT_Screen,2);
			if(Npc_GetActiveSpellIsScroll(self))
			{
				CreateInvItem(hero,ItSc_SumWolf);
			};
		}
		else
		{
			hero.aivar[AIV_SummonPoints] =  hero.aivar[AIV_SummonPoints] + 2;
			Wld_SpawnNpcRange(self,Summoned_Wolf,1,500);
		};
	}
	else
	{
		Wld_SpawnNpcRange(self,Wolf,1,500);
	};
	self.aivar[AIV_SelectSpell] += 1;
};

