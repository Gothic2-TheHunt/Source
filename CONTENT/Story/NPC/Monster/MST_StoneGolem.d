
prototype Mst_Default_StoneGolem(C_Npc)
{
	name[0] = "Stone Golem";
	guild = GIL_STONEGOLEM;
	aivar[AIV_MM_REAL_ID] = ID_STONEGOLEM;
	level = 32;
	attribute[ATR_STRENGTH] = 125;
	attribute[ATR_DEXTERITY] = 125;
	attribute[ATR_HITPOINTS_MAX] = 350;
	attribute[ATR_HITPOINTS] = 350;
	attribute[ATR_MANA_MAX] = 100;
	attribute[ATR_MANA] = 100;
	protection[PROT_BLUNT] = 70;
	protection[PROT_EDGE] = IMMUNE;
	protection[PROT_POINT] = IMMUNE;
	protection[PROT_FIRE] = 75;
	protection[PROT_FLY] = 100;
	protection[PROT_MAGIC] = 40;
	damagetype = DAM_FLY;
	fight_tactic = FAI_STONEGOLEM;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;
	aivar[AIV_MM_FollowTime] = FOLLOWTIME_SHORT;
	aivar[AIV_MM_FollowInWater] = TRUE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

func void B_SetVisuals_StoneGolem()
{
	Mdl_SetVisual(self,"Golem.mds");
	Mdl_SetVisualBody(self,"Gol_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance StoneGolem(Mst_Default_StoneGolem)
{
	B_SetVisuals_StoneGolem();
	Npc_SetToFistMode(self);
};

instance Summoned_Golem(Mst_Default_StoneGolem)
{
	name[0] = "Summoned Golem";
	guild = gil_summoned_golem;
	aivar[AIV_MM_REAL_ID] = id_summoned_golem;
	aivar[AIV_SummonPoints] = 5;
	level = 0;
	attribute[ATR_STRENGTH] = 150;
	attribute[ATR_DEXTERITY] = 130;
	attribute[ATR_HITPOINTS_MAX] = 350;
	attribute[ATR_HITPOINTS] = 350;
	protection[PROT_BLUNT] = 90;
	protection[PROT_EDGE] = 120;
	protection[PROT_POINT] = IMMUNE;
	protection[PROT_FIRE] = 75;
	protection[PROT_FLY] = 75;
	protection[PROT_MAGIC] = 40;
	aivar[AIV_PARTYMEMBER] = TRUE;
	B_SetAttitude(self,ATT_FRIENDLY);
	start_aistate = ZS_MM_Rtn_Summoned;
	B_SetVisuals_StoneGolem();
	Npc_SetToFistMode(self);
};

instance Living_Rock(Mst_Default_StoneGolem)
{
	name[0] = "Living Rock";
	level = 50;
	attribute[ATR_STRENGTH] = 200;
	attribute[ATR_DEXTERITY] = 150;
	attribute[ATR_HITPOINTS_MAX] = 600;
	attribute[ATR_HITPOINTS] = 600;
	protection[PROT_BLUNT] = 120;
	protection[PROT_EDGE] = IMMUNE;
	protection[PROT_POINT] = IMMUNE;
	protection[PROT_FIRE] = 150;
	protection[PROT_FLY] = IMMUNE;
	protection[PROT_MAGIC] = 120;
	B_SetVisuals_StoneGolem();
	Npc_SetToFistMode(self);
	CreateInvItems(self,ItWr_HitPointStonePlate3_Addon,1);
};


func void ZS_GolemDown()
{
	self.senses = SENSE_SMELL;
	self.senses_range = 2000;
	Npc_SetPercTime(self,1);
	Npc_PercEnable(self,PERC_ASSESSPLAYER,B_GolemRise);
	self.aivar[AIV_TAPOSITION] = NOTINPOS;
};

func int ZS_GolemDown_LOOP()
{
	if(self.aivar[AIV_TAPOSITION] == NOTINPOS)
	{
		AI_PlayAni(self,"T_DEAD");
		self.aivar[AIV_TAPOSITION] = ISINPOS;
	};
	return LOOP_CONTINUE;
};

func void ZS_GolemDown_END()
{
};

func void B_GolemRise()
{
	if((Npc_GetDistToNpc(self,hero) <= 5000) && ((Mob_HasItems("NW_GOLEMCHEST",ItSe_Golemchest_Mis) == 0) || (Mob_HasItems("NW_GOLEMCHEST",ItMw_Inquisitor) == 0)))
	{
		AI_PlayAni(self,"T_RISE");
		self.noFocus = FALSE;
		self.name[0] = "Revived Golem";
		self.flags = 0;
		AI_StartState(self,ZS_MM_Attack,0,"");
		self.bodyStateInterruptableOverride = FALSE;
		self.start_aistate = ZS_MM_AllScheduler;
		self.aivar[AIV_MM_RestStart] = OnlyRoutine;
	};
};


instance Shattered_Golem(Mst_Default_StoneGolem)
{
	name[0] = "";
	level = 38;
	attribute[ATR_STRENGTH] = 150;
	attribute[ATR_DEXTERITY] = 150;
	attribute[ATR_HITPOINTS_MAX] = 450;
	attribute[ATR_HITPOINTS] = 450;
	protection[PROT_BLUNT] = 150;
	protection[PROT_EDGE] = IMMUNE;
	protection[PROT_POINT] = IMMUNE;
	protection[PROT_FIRE] = 85;
	protection[PROT_FLY] = 75;
	protection[PROT_MAGIC] = 50;
	guild = GIL_STONEGOLEM;
	aivar[AIV_MM_REAL_ID] = ID_STONEGOLEM;
	noFocus = TRUE;
	flags = NPC_FLAG_IMMORTAL;
	bodyStateInterruptableOverride = TRUE;
	B_SetVisuals_StoneGolem();
	Npc_SetToFistMode(self);
	start_aistate = ZS_GolemDown;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

instance MagicGolem(Mst_Default_StoneGolem)
{
	name[0] = "Magic Golem";
	level = 10;
	protection[PROT_BLUNT] = IMMUNE;
	protection[PROT_EDGE] = IMMUNE;
	protection[PROT_POINT] = IMMUNE;
	protection[PROT_FIRE] = IMMUNE;
	protection[PROT_FLY] = IMMUNE;
	protection[PROT_MAGIC] = IMMUNE;
	B_SetVisuals_StoneGolem();
	Npc_SetToFistMode(self);
};

