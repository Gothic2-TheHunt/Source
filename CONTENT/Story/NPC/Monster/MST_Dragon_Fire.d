
prototype Mst_Default_Dragon_Fire(C_Npc)
{
	name[0] = "Fire Dragon";
	guild = GIL_DRAGON;
	aivar[AIV_MM_REAL_ID] = ID_DRAGON_FIRE;
	level = 500;
	bodyStateInterruptableOverride = TRUE;
	attribute[ATR_STRENGTH] = 240;
	attribute[ATR_DEXTERITY] = 240;
	attribute[ATR_HITPOINTS_MAX] = 2800;
	attribute[ATR_HITPOINTS] = 2800;
	attribute[ATR_MANA_MAX] = 1000;
	attribute[ATR_MANA] = 1000;
	protection[PROT_BLUNT] = 170;
	protection[PROT_EDGE] = 160;
	protection[PROT_POINT] = 170;
	protection[PROT_FIRE] = IMMUNE;
	protection[PROT_FLY] = 110;
	protection[PROT_MAGIC] = 100;
	damagetype = DAM_FIRE | DAM_FLY;
	damage[DAM_INDEX_FIRE] = 159;
	damage[DAM_INDEX_FLY] = 1;
	fight_tactic = FAI_DRAGON;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_DRAGON_ACTIVE_MAX;
	aivar[AIV_MM_FollowTime] = FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	aivar[AIV_MaxDistToWp] = 1000;
	aivar[AIV_OriginalFightTactic] = FAI_DRAGON;
	start_aistate = ZS_MM_Rtn_DragonRest;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

func void B_SetVisuals_Dragon_Fire()
{
	Mdl_SetVisual(self,"Dragon.mds");
	Mdl_SetVisualBody(self,"Dragon_FIRE_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance Dragon_Fire(Mst_Default_Dragon_Fire)
{
	name[0] = "Feomathar";
	flags = NPC_FLAG_IMMORTAL;
	B_SetVisuals_Dragon_Fire();
	Npc_SetToFistMode(self);
};

instance Dragon_Fire_Island(Mst_Default_Dragon_Fire)
{
	name[0] = "Feodaron";
	flags = NPC_FLAG_IMMORTAL;
	B_SetVisuals_Dragon_Fire();
	Npc_SetToFistMode(self);
};

