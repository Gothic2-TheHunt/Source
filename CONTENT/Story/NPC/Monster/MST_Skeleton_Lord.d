
prototype Mst_Skeleton_Lord(C_Npc)
{
	name[0] = "Shadow Warrior";
	guild = GIL_SKELETON;
	aivar[AIV_MM_REAL_ID] = ID_SKELETON;
	level = 40;
	attribute[ATR_STRENGTH] = 110;
	attribute[ATR_DEXTERITY] = 100;
	attribute[ATR_HITPOINTS_MAX] = 600;
	attribute[ATR_HITPOINTS] = 600;
	attribute[ATR_MANA_MAX] = 200;
	attribute[ATR_MANA] = 200;
	protection[PROT_BLUNT] = 15;
	protection[PROT_EDGE] = 100;
	protection[PROT_POINT] = -101;
	protection[PROT_FIRE] = 0;
	protection[PROT_FLY] = 80;
	protection[PROT_MAGIC] = 0;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_HUMAN_STRONG;
	EquipItem(self,ItMw_Zweihaender2);
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;
	aivar[AIV_MM_FollowTime] = FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

func void B_SetVisuals_Skeleton_Lord()
{
	Mdl_SetVisual(self,"HumanS.mds");
	Mdl_ApplyOverlayMds(self,"humans_1hST1.mds");
	Mdl_ApplyOverlayMds(self,"humans_2hST2.mds");
	Mdl_ApplyOverlayMds(self,"humans_BowT1.mds");
	Mdl_ApplyOverlayMds(self,"humans_CBowT1.mds");
	B_SetNpcVisual(self,MALE,"Ske_Head",0,0,itar_pal_skel);
};

instance Skeleton_Lord(Mst_Skeleton_Lord)
{
	B_SetVisuals_Skeleton_Lord();
};

instance Crypt_Skeleton_Lord(Mst_Skeleton_Lord)
{
	name[0] = "Shadow Lord Inubis";
	aivar[AIV_MM_REAL_ID] = ID_UNDEADLORD;
	level = 80;
	attribute[ATR_STRENGTH] = 175;
	attribute[ATR_DEXTERITY] = 175;
	attribute[ATR_HITPOINTS_MAX] = 2000;
	attribute[ATR_HITPOINTS] = 2000;
	protection[PROT_BLUNT] = 90;
	protection[PROT_EDGE] = 160;
	protection[PROT_FIRE] = 25;
	protection[PROT_FLY] = 150;
	protection[PROT_MAGIC] = 50;
	fight_tactic = FAI_HUMAN_MASTER;
	B_SetVisuals_Skeleton_Lord();
	EquipItem(self,ItMw_Drachenschneide);
	CreateInvItems(self,ItMi_EnchantedSkull_02,1);
	CreateInvItems(self,ItPo_Perm_Health,3);
	CreateInvItems(self,ItMi_Gold,500);
	CreateInvItems(self,ItSc_MassDeath,1);
	CreateInvItems(self,ItPo_Mana_Addon_04,5);
	CreateInvItems(self,ItPo_Health_Addon_04,5);
};

instance Skeleton_Lord_Archol(Mst_Skeleton_Lord)
{
	name[0] = "Shadow Lord Archol";
	aivar[AIV_MM_REAL_ID] = ID_UNDEADLORD;
	level = 60;
	attribute[ATR_STRENGTH] = 175;
	attribute[ATR_DEXTERITY] = 175;
	attribute[ATR_HITPOINTS_MAX] = 2000;
	attribute[ATR_HITPOINTS] = 2000;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 80;
	protection[PROT_EDGE] = 160;
	protection[PROT_POINT] = IMMUNE;
	protection[PROT_FIRE] = 50;
	protection[PROT_FLY] = 150;
	protection[PROT_MAGIC] = 50;
	fight_tactic = FAI_HUMAN_MASTER;
	B_SetVisuals_Skeleton_Lord();
	CreateInvItems(self,ItMi_Gold,650);
	CreateInvItems(self,ItKe_EVT_UNDEAD_01,1);
};

instance The_Challenger(Mst_Skeleton_Lord)
{
	name[0] = "The Challenger";
	aivar[AIV_MM_REAL_ID] = ID_UNDEADLORD;
	level = 100;
	attribute[ATR_STRENGTH] = 200;
	attribute[ATR_DEXTERITY] = 200;
	attribute[ATR_HITPOINTS_MAX] = 3000;
	attribute[ATR_HITPOINTS] = 3000;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 100;
	protection[PROT_EDGE] = 170;
	protection[PROT_POINT] = IMMUNE;
	protection[PROT_FIRE] = 200;
	protection[PROT_FLY] = 200;
	protection[PROT_MAGIC] = 200;
	fight_tactic = FAI_HUMAN_MASTER;
	B_SetVisuals_Skeleton_Lord();
	EquipItem(self,ItMw_Barbarenstreitaxt);
	CreateInvItems(self,ItMi_Gold,1000);
	CreateInvItems(self,ItPo_Perm_DEX,1);
	CreateInvItems(self,ItPo_Perm_STR,1);
	CreateInvItems(self,ItPo_Perm_Health,2);
	CreateInvItems(self,ItPo_Perm_Mana,1);
};

