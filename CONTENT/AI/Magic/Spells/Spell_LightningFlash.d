
const int SPL_Cost_LightningFlash = 20;
const int SPL_Damage_LightningFlash = 160;
const int SPL_ZAPPED_DAMAGE_PER_SEC = 2;
const int SPL_TIME_SHORTZAPPED = 1;

instance Spell_LightningFlash(C_Spell_Proto)
{
	time_per_mana = 0;
	damage_per_level = SPL_Damage_LightningFlash;
	damagetype = DAM_MAGIC;
};


func int Spell_Logic_LightningFlash(var int manaInvested)
{
	if(Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll_Circle3))
	{
		return SPL_SENDCAST;
	}
	else if(self.attribute[ATR_MANA] >= SPL_Cost_LightningFlash)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_LightningFlash()
{
	if(Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll_Circle3;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_LightningFlash;
	};
	self.aivar[AIV_SelectSpell] += 1;
};

