
func void B_SetAttributesToChapter(var C_Npc slf,var int kap)
{
	Npc_SetTalentSkill(slf,NPC_TALENT_MAGE,6);
	if(kap == 0)
	{
		slf.level = 3;
		slf.attribute[ATR_STRENGTH] = 20;
		slf.aivar[REAL_STRENGTH] = 20;
		slf.attribute[ATR_DEXTERITY] = 20;
		slf.aivar[REAL_DEXTERITY] = 20;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 40;
		slf.attribute[ATR_HITPOINTS] = 40;
	};
	if(kap == 1)
	{
		slf.level = 10;
		slf.attribute[ATR_STRENGTH] = 70;
		slf.aivar[REAL_STRENGTH] = 70;
		slf.attribute[ATR_DEXTERITY] = 70;
		slf.aivar[REAL_DEXTERITY] = 70;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 200;
		slf.attribute[ATR_HITPOINTS] = 200;
	};
	if(kap == 2)
	{
		slf.level = 20;
		slf.attribute[ATR_STRENGTH] = 100;
		slf.aivar[REAL_STRENGTH] = 100;
		slf.attribute[ATR_DEXTERITY] = 100;
		slf.aivar[REAL_DEXTERITY] = 100;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 300;
		slf.attribute[ATR_HITPOINTS] = 300;
	};
	if(kap == 3)
	{
		slf.level = 30;
		slf.attribute[ATR_STRENGTH] = 130;
		slf.aivar[REAL_STRENGTH] = 130;
		slf.attribute[ATR_DEXTERITY] = 130;
		slf.aivar[REAL_DEXTERITY] = 130;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 450;
		slf.attribute[ATR_HITPOINTS] = 450;
	};
	if(kap == 4)
	{
		slf.level = 40;
		slf.attribute[ATR_STRENGTH] = 160;
		slf.aivar[REAL_STRENGTH] = 160;
		slf.attribute[ATR_DEXTERITY] = 160;
		slf.aivar[REAL_DEXTERITY] = 160;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 600;
		slf.attribute[ATR_HITPOINTS] = 600;
	};
	if(kap == 5)
	{
		slf.level = 50;
		slf.attribute[ATR_STRENGTH] = 190;
		slf.aivar[REAL_STRENGTH] = 190;
		slf.attribute[ATR_DEXTERITY] = 175;
		slf.aivar[REAL_DEXTERITY] = 175;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 750;
		slf.attribute[ATR_HITPOINTS] = 750;
	};
	if(kap >= 6)
	{
		slf.level = 60;
		slf.attribute[ATR_STRENGTH] = 220;
		slf.aivar[REAL_STRENGTH] = 220;
		slf.attribute[ATR_DEXTERITY] = 200;
		slf.aivar[REAL_DEXTERITY] = 200;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 900;
		slf.attribute[ATR_HITPOINTS] = 900;
	};
	slf.exp = 500 * ((slf.level + 1) / 2) * (slf.level + 1);
	slf.exp_next = 500 * ((slf.level + 2) / 2) * (slf.level + 1);
};

