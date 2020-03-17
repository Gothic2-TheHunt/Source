
const int SPL_Cost_BreathOfDeath = 70;
const int SPL_Damage_BreathOfDeath = 400;

instance Spell_BreathOfDeath(C_Spell_Proto)
{
	time_per_mana = 0;
	damage_per_level = SPL_Damage_BreathOfDeath;
	targetCollectRange = 1250;
	damagetype = DAM_FLY;
};


func int Spell_Logic_BreathOfDeath(var int manaInvested)
{
	if(Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll_Circle6))
	{
		return SPL_SENDCAST;
	}
	else if(self.attribute[ATR_MANA] >= SPL_Cost_BreathOfDeath)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_BreathOfDeath(var int spellLevel)
{
	if(Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll_Circle6;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_BreathOfDeath;
	};
	self.aivar[AIV_SelectSpell] += 1;
};

