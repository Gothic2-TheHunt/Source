
prototype Mst_Default_MinecrawlerWarrior(C_Npc)
{
	name[0] = "Minecrawler Warrior";
	guild = GIL_MINECRAWLER;
	aivar[AIV_MM_REAL_ID] = ID_MINECRAWLERWARRIOR;
	level = 24;
	attribute[ATR_STRENGTH] = 115;
	attribute[ATR_DEXTERITY] = 115;
	attribute[ATR_HITPOINTS_MAX] = 220;
	attribute[ATR_HITPOINTS] = 220;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 85;
	protection[PROT_EDGE] = 130;
	protection[PROT_POINT] = 120;
	protection[PROT_FIRE] = 30;
	protection[PROT_FLY] = 100;
	protection[PROT_MAGIC] = 10;
	damagetype = DAM_BLUNT;
	fight_tactic = FAI_MINECRAWLER;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime] = FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_WuselStart] = OnlyRoutine;
};

func void B_SetVisuals_MinecrawlerWarrior()
{
	Mdl_SetVisual(self,"Crawler.mds");
	Mdl_SetVisualBody(self,"Cr2_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance MinecrawlerWarrior(Mst_Default_MinecrawlerWarrior)
{
	B_SetVisuals_MinecrawlerWarrior();
	Npc_SetToFistMode(self);
};

instance MinecrawlerMonarch(Mst_Default_MinecrawlerWarrior)
{
	name[0] = "Minecrawler Monarch";
	level = 32;
	attribute[ATR_STRENGTH] = 160;
	attribute[ATR_DEXTERITY] = 160;
	attribute[ATR_HITPOINTS_MAX] = 350;
	attribute[ATR_HITPOINTS] = 350;
	protection[PROT_BLUNT] = 110;
	protection[PROT_EDGE] = 150;
	protection[PROT_POINT] = 170;
	protection[PROT_FIRE] = 75;
	protection[PROT_FLY] = 125;
	protection[PROT_MAGIC] = 30;
	B_SetVisuals_MinecrawlerWarrior();
	Mdl_SetModelScale(self,1.05,1.05,1.05);
	Npc_SetToFistMode(self);
};

