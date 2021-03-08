
prototype Mst_Default_Dragon_Undead(C_Npc)
{
	name[0] = "Undead Dragon";
	guild = GIL_DRAGON;
	aivar[AIV_MM_REAL_ID] = ID_DRAGON_UNDEAD;
	level = 1000;
	bodyStateInterruptableOverride = TRUE;
	attribute[ATR_STRENGTH] = 400;
	attribute[ATR_DEXTERITY] = 400;
	attribute[ATR_HITPOINTS_MAX] = 5000;
	attribute[ATR_HITPOINTS] = 5000;
	attribute[ATR_MANA_MAX] = 2000;
	attribute[ATR_MANA] = 2000;
	protection[PROT_BLUNT] = 165;
	protection[PROT_EDGE] = 220;
	protection[PROT_POINT] = 300;
	protection[PROT_FIRE] = 190;
	protection[PROT_FLY] = 200;
	protection[PROT_MAGIC] = 170;
	damagetype = DAM_FIRE | DAM_FLY;
	damage[DAM_INDEX_FIRE] = 249;
	damage[DAM_INDEX_FLY] = 1;
	fight_tactic = FAI_DRAGON;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = 4500;
	aivar[AIV_MM_FollowTime] = 1000;
	aivar[AIV_MM_FollowInWater] = FALSE;
	aivar[AIV_MaxDistToWp] = 1500;
	aivar[AIV_OriginalFightTactic] = FAI_DRAGON;
	start_aistate = ZS_MM_Rtn_DragonRest;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

func void B_SetVisuals_Dragon_Undead()
{
	Mdl_SetVisual(self,"Dragon.mds");
	Mdl_SetVisualBody(self,"Dragon_Undead_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance Dragon_Undead(Mst_Default_Dragon_Undead)
{
	B_SetVisuals_Dragon_Undead();
	flags = NPC_FLAG_IMMORTAL;
	effect = "spellfx_undead_dragon";
	Npc_SetToFistMode(self);
};

