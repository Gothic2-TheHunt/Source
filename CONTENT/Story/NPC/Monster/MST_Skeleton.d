
prototype Mst_Default_Skeleton(C_Npc)
{
	name[0] = "Skeleton";
	guild = GIL_SKELETON;
	aivar[AIV_MM_REAL_ID] = ID_SKELETON;
	level = 30;
	attribute[ATR_STRENGTH] = 100;
	attribute[ATR_DEXTERITY] = 150;
	attribute[ATR_HITPOINTS_MAX] = 200;
	attribute[ATR_HITPOINTS] = 200;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 75;
	protection[PROT_EDGE] = 130;
	protection[PROT_POINT] = IMMUNE;
	protection[PROT_FIRE] = 20;
	protection[PROT_FLY] = 60;
	protection[PROT_MAGIC] = 40;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_HUMAN_STRONG;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;
	aivar[AIV_MM_FollowTime] = FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

func void B_SetVisuals_Skeleton()
{
	Mdl_SetVisual(self,"HumanS.mds");
	Mdl_ApplyOverlayMds(self,"humans_1hST1.mds");
	Mdl_ApplyOverlayMds(self,"humans_2hST2.mds");
	Mdl_ApplyOverlayMds(self,"humans_BowT1.mds");
	Mdl_ApplyOverlayMds(self,"humans_CBowT1.mds");
	Mdl_ApplyOverlayMds(self,"humans_skeleton.mds");
	Mdl_SetVisualBody(self,"Ske_Body2",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};

func void B_SetVisuals_Lesser_Skeleton()
{
	Mdl_SetVisual(self,"HumanS.mds");
	Mdl_ApplyOverlayMds(self,"humans_1hST1.mds");
	Mdl_ApplyOverlayMds(self,"humans_2hST2.mds");
	Mdl_ApplyOverlayMds(self,"humans_BowT1.mds");
	Mdl_ApplyOverlayMds(self,"humans_CBowT1.mds");
	Mdl_ApplyOverlayMds(self,"humans_skeleton.mds");
	Mdl_SetVisualBody(self,"Ske_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance Skeleton(Mst_Default_Skeleton)
{
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_2H_Sword_M_01);
};

instance Summoned_Skeleton(Mst_Default_Skeleton)
{
	name[0] = "Summoned Skeleton";
	guild = gil_summoned_skeleton;
	aivar[AIV_MM_REAL_ID] = id_summoned_skeleton;
	aivar[AIV_SummonPoints] = 3;
	level = 0;
	attribute[ATR_STRENGTH] = 100;
	attribute[ATR_DEXTERITY] = 150;
	attribute[ATR_HITPOINTS_MAX] = 200;
	attribute[ATR_HITPOINTS] = 200;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 80;
	protection[PROT_EDGE] = 100;
	protection[PROT_POINT] = IMMUNE;
	protection[PROT_FIRE] = 20;
	protection[PROT_FLY] = 60;
	fight_tactic = FAI_HUMAN_NORMAL;
	B_SetVisuals_Lesser_Skeleton();
	aivar[AIV_PARTYMEMBER] = TRUE;
	B_SetAttitude(self,ATT_FRIENDLY);
	start_aistate = ZS_MM_Rtn_Summoned;
	B_SetVisuals_Lesser_Skeleton();
	EquipItem(self,ItMw_2H_Sword_M_01);
};

instance Army_Of_Darkness_Skeleton_01(Mst_Default_Skeleton)
{
	name[0] = "Summoned Skeleton";
	guild = gil_summoned_skeleton;
	aivar[AIV_MM_REAL_ID] = id_summoned_skeleton;
	aivar[AIV_SummonPoints] = 2;
	level = 0;
	attribute[ATR_STRENGTH] = 155;
	attribute[ATR_DEXTERITY] = 155;
	attribute[ATR_HITPOINTS_MAX] = 200;
	attribute[ATR_HITPOINTS] = 200;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 80;
	protection[PROT_EDGE] = 100;
	protection[PROT_POINT] = IMMUNE;
	protection[PROT_FIRE] = 20;
	protection[PROT_FLY] = 60;
	fight_tactic = FAI_HUMAN_STRONG;
	aivar[AIV_PARTYMEMBER] = TRUE;
	B_SetAttitude(self,ATT_FRIENDLY);
	start_aistate = ZS_MM_Rtn_Summoned;
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_2H_Sword_M_01);
};

instance Army_Of_Darkness_Skeleton_02(Mst_Default_Skeleton)
{
	name[0] = "Summoned Skeleton";
	guild = gil_summoned_skeleton;
	aivar[AIV_MM_REAL_ID] = id_summoned_skeleton;
	aivar[AIV_SummonPoints] = 1;
	level = 0;
	attribute[ATR_STRENGTH] = 120;
	attribute[ATR_DEXTERITY] = 150;
	attribute[ATR_HITPOINTS_MAX] = 190;
	attribute[ATR_HITPOINTS] = 190;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 75;
	protection[PROT_EDGE] = 95;
	protection[PROT_POINT] = IMMUNE;
	protection[PROT_FIRE] = 20;
	protection[PROT_FLY] = 60;
	fight_tactic = FAI_HUMAN_STRONG;
	aivar[AIV_PARTYMEMBER] = TRUE;
	B_SetAttitude(self,ATT_FRIENDLY);
	start_aistate = ZS_MM_Rtn_Summoned;
	B_SetVisuals_Lesser_Skeleton();
	EquipItem(self,ItMw_1h_Nov_Mace);
};

instance Army_Of_Darkness_Skeleton_03(Mst_Default_Skeleton)
{
	name[0] = "Summoned Skeleton";
	guild = gil_summoned_skeleton;
	aivar[AIV_MM_REAL_ID] = id_summoned_skeleton;
	aivar[AIV_SummonPoints] = 1;
	level = 0;
	attribute[ATR_STRENGTH] = 100;
	attribute[ATR_DEXTERITY] = 150;
	attribute[ATR_HITPOINTS_MAX] = 180;
	attribute[ATR_HITPOINTS] = 180;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 70;
	protection[PROT_EDGE] = 90;
	protection[PROT_POINT] = IMMUNE;
	protection[PROT_FIRE] = 15;
	protection[PROT_FLY] = 50;
	fight_tactic = FAI_HUMAN_NORMAL;
	aivar[AIV_PARTYMEMBER] = TRUE;
	B_SetAttitude(self,ATT_FRIENDLY);
	start_aistate = ZS_MM_Rtn_Summoned;
	B_SetVisuals_Lesser_Skeleton();
	EquipItem(self,ItMw_2H_Sword_M_01);
};

instance Lesser_Skeleton(Mst_Default_Skeleton)
{
	name[0] = "Lower Skeleton";
	level = 15;
	attribute[ATR_STRENGTH] = 50;
	attribute[ATR_DEXTERITY] = 80;
	attribute[ATR_HITPOINTS_MAX] = 150;
	attribute[ATR_HITPOINTS] = 150;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 55;
	protection[PROT_EDGE] = 100;
	protection[PROT_POINT] = IMMUNE;
	protection[PROT_FIRE] = 3;
	protection[PROT_FLY] = 50;
	protection[PROT_MAGIC] = 20;
	fight_tactic = FAI_HUMAN_NORMAL;
	B_SetVisuals_Lesser_Skeleton();
	EquipItem(self,ItMw_1h_MISC_Sword);
};

instance Crypt_Skeleton_Room_01(Mst_Default_Skeleton)
{
	name[0] = "Crypt Guard";
	level = 35;
	attribute[ATR_HITPOINTS_MAX] = 400;
	attribute[ATR_HITPOINTS] = 400;
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_1h_MISC_Sword);
	CreateInvItem(self,ItKe_EVT_CRYPT_01);
};

instance Crypt_Skeleton_Room_02(Mst_Default_Skeleton)
{
	name[0] = "Crypt Guard";
	level = 35;
	attribute[ATR_HITPOINTS_MAX] = 400;
	attribute[ATR_HITPOINTS] = 400;
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_2H_Sword_M_01);
	CreateInvItem(self,ItKe_EVT_CRYPT_02);
};

instance Crypt_Skeleton_Room_03(Mst_Default_Skeleton)
{
	name[0] = "Crypt Guard";
	level = 35;
	attribute[ATR_HITPOINTS_MAX] = 400;
	attribute[ATR_HITPOINTS] = 400;
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_1h_MISC_Sword);
	CreateInvItem(self,ItKe_EVT_CRYPT_03);
};

instance Skeleton_Archol1(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_1h_MISC_Sword);
};

instance Skeleton_Archol2(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_2H_Sword_M_01);
};

instance Skeleton_Archol3(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_1h_MISC_Sword);
};

instance Skeleton_Archol4(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_2H_Sword_M_01);
};

instance Skeleton_Archol5(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_1h_MISC_Sword);
};

instance Skeleton_Archol6(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_2H_Sword_M_01);
};

instance Skeleton_Mario1(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_1h_MISC_Sword);
};

instance Skeleton_Mario2(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_2H_Sword_M_01);
};

instance Skeleton_Mario3(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_1h_MISC_Sword);
};

instance Skeleton_Mario4(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_2H_Sword_M_01);
};

