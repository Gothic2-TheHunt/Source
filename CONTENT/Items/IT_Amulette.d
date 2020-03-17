
const int Value_Am_ProtFire = 600;
const int Am_ProtFire = 10;
const int Value_Am_ProtFire02 = 1000;
const int Am_ProtFire2 = 15;
const int Value_Am_ProtEdge = 1000;
const int Am_ProtEdge = 10;
const int Value_Am_ProtEdge02 = 1300;
const int Am_ProtEdge2 = 15;
const int Value_Am_ProtMage = 700;
const int Am_ProtMage = 10;
const int Value_Am_ProtMage02 = 1000;
const int Am_ProtMage2 = 15;
const int Value_Am_ProtPoint = 750;
const int Am_ProtPoint = 10;
const int Value_Am_ProtPoint02 = 1000;
const int Am_ProtPoint2 = 15;
const int Value_Am_ProtTotal = 1700;
const int Am_TProtFire = 8;
const int AM_TProtEdge = 10;
const int Am_TProtMage = 8;
const int Am_TProtPoint = 10;
const int Value_Am_ProtTotal2 = 2500;
const int Am_TProtFire2 = 10;
const int AM_TProtEdge2 = 15;
const int Am_TProtMage2 = 10;
const int Am_TProtPoint2 = 15;
const int Value_Am_Dex = 1000;
const int Am_Dex = 10;
const int Value_Am_Mana = 1000;
const int Am_Mana = 20;
const int Value_Am_Strg = 1000;
const int Am_Strg = 10;
const int Value_Am_Hp = 1000;
const int Am_Hp = 40;
const int Value_Am_HpMana = 1500;
const int Am_HpMana_Hp = 30;
const int Am_HpMana_Mana = 10;
const int Value_Am_DexStrg = 1600;
const int Am_DexStrg_Dex = 8;
const int Am_DexStrg_Strg = 8;

instance ItAm_Prot_Fire_01(C_Item)
{
	name = NAME_Amulett;
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_AMULET;
	value = Value_Am_ProtFire;
	visual = "ItAm_Prot_Fire_01.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItAm_Prot_Fire_01;
	on_unequip = UnEquip_ItAm_Prot_Fire_01;
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = "Amulet of Flame";
	text[2] = NAME_Prot_Fire;
	count[2] = Am_ProtFire;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
};


func void Equip_ItAm_Prot_Fire_01()
{
	self.protection[PROT_FIRE] += Am_ProtFire;
};

func void UnEquip_ItAm_Prot_Fire_01()
{
	self.protection[PROT_FIRE] -= Am_ProtFire;
};

instance ItAm_Prot_Fire_02(C_Item)
{
	name = NAME_Amulett;
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_AMULET;
	value = Value_Am_ProtFire02;
	visual = "ItAm_Prot_Fire_01.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItAm_Prot_Fire_02;
	on_unequip = UnEquip_ItAm_Prot_Fire_02;
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = "Amulet of Fire";
	text[2] = NAME_Prot_Fire;
	count[2] = Am_ProtFire2;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
};


func void Equip_ItAm_Prot_Fire_02()
{
	self.protection[PROT_FIRE] += Am_ProtFire2;
};

func void UnEquip_ItAm_Prot_Fire_02()
{
	self.protection[PROT_FIRE] -= Am_ProtFire2;
};

instance ItAm_Prot_Edge_01(C_Item)
{
	name = NAME_Amulett;
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_AMULET;
	value = Value_Am_ProtEdge;
	visual = "ItAm_Prot_Edge_01.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItAm_Prot_Edge_01;
	on_unequip = UnEquip_ItAm_Prot_Edge_01;
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = "Amulet of Iron Skin";
	text[2] = NAME_Prot_Weapon;
	count[2] = Am_ProtEdge;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
};


func void Equip_ItAm_Prot_Edge_01()
{
	self.protection[PROT_EDGE] += Am_ProtEdge;
	self.protection[PROT_BLUNT] += Am_ProtEdge;
};

func void UnEquip_ItAm_Prot_Edge_01()
{
	self.protection[PROT_EDGE] -= Am_ProtEdge;
	self.protection[PROT_BLUNT] -= Am_ProtEdge;
};

instance ItAm_Prot_Edge_02(C_Item)
{
	name = NAME_Amulett;
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_AMULET;
	value = Value_Am_ProtEdge02;
	visual = "ItAm_Prot_Edge_01.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItAm_Prot_Edge_02;
	on_unequip = UnEquip_ItAm_Prot_Edge_02;
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = "Amulet of Steel Skin";
	text[2] = NAME_Prot_Weapon;
	count[2] = Am_ProtEdge2;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
};


func void Equip_ItAm_Prot_Edge_02()
{
	self.protection[PROT_EDGE] += Am_ProtEdge2;
	self.protection[PROT_BLUNT] += Am_ProtEdge2;
};

func void UnEquip_ItAm_Prot_Edge_02()
{
	self.protection[PROT_EDGE] -= Am_ProtEdge2;
	self.protection[PROT_BLUNT] -= Am_ProtEdge2;
};


instance ItAm_Prot_Point_01(C_Item)
{
	name = NAME_Amulett;
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_AMULET;
	value = Value_Am_ProtPoint;
	visual = "ItAm_Prot_Point_01.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItAm_Prot_Point_01;
	on_unequip = UnEquip_ItAm_Prot_Point_01;
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = "Amulet of Oak Skin";
	text[2] = NAME_Prot_Point;
	count[2] = Am_ProtPoint;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
};


func void Equip_ItAm_Prot_Point_01()
{
	self.protection[PROT_POINT] += Am_ProtPoint;
};

func void UnEquip_ItAm_Prot_Point_01()
{
	self.protection[PROT_POINT] -= Am_ProtPoint;
};

instance ItAm_Prot_Point_02(C_Item)
{
	name = NAME_Amulett;
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_AMULET;
	value = Value_Am_ProtPoint02;
	visual = "ItAm_Prot_Point_01.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItAm_Prot_Point_02;
	on_unequip = UnEquip_ItAm_Prot_Point_02;
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = "Amulet of Stone Skin";
	text[2] = NAME_Prot_Point;
	count[2] = Am_ProtPoint2;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
};


func void Equip_ItAm_Prot_Point_02()
{
	self.protection[PROT_POINT] += Am_ProtPoint2;
};

func void UnEquip_ItAm_Prot_Point_02()
{
	self.protection[PROT_POINT] -= Am_ProtPoint2;
};


instance ItAm_Prot_Mage_01(C_Item)
{
	name = NAME_Amulett;
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_AMULET;
	value = Value_Am_ProtMage;
	visual = "ItAm_Prot_Mage_01.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItAm_Prot_Mage_01;
	on_unequip = UnEquip_ItAm_Prot_Mage_01;
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = "Amulet of Spiritual Power";
	text[2] = NAME_Prot_Magic;
	count[2] = Am_ProtMage;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
};


func void Equip_ItAm_Prot_Mage_01()
{
	self.protection[PROT_MAGIC] += Am_ProtMage;
};

func void UnEquip_ItAm_Prot_Mage_01()
{
	self.protection[PROT_MAGIC] -= Am_ProtMage;
};

instance ItAm_Prot_Mage_02(C_Item)
{
	name = NAME_Amulett;
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_AMULET;
	value = Value_Am_ProtMage02;
	visual = "ItAm_Prot_Mage_01.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItAm_Prot_Mage_02;
	on_unequip = UnEquip_ItAm_Prot_Mage_02;
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = "Amulet of Spiritual Prowess";
	text[2] = NAME_Prot_Magic;
	count[2] = Am_ProtMage2;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
};


func void Equip_ItAm_Prot_Mage_02()
{
	self.protection[PROT_MAGIC] += Am_ProtMage2;
};

func void UnEquip_ItAm_Prot_Mage_02()
{
	self.protection[PROT_MAGIC] -= Am_ProtMage2;
};

instance ItAm_Prot_Total_01(C_Item)
{
	name = NAME_Amulett;
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_AMULET;
	value = Value_Am_ProtTotal;
	visual = "ItAm_Prot_Total_01.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_Value_Am_ProtTotal;
	on_unequip = UnEquip_Value_Am_ProtTotal;
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = "Amulet of Ore Skin";
	text[1] = NAME_Prot_Fire;
	count[1] = Am_TProtFire;
	text[2] = NAME_Prot_Magic;
	count[2] = Am_TProtMage;
	text[3] = NAME_Prot_Point;
	count[3] = Am_TProtPoint;
	text[4] = NAME_Prot_Weapon;
	count[4] = AM_TProtEdge;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
};


func void Equip_Value_Am_ProtTotal()
{
	self.protection[PROT_EDGE] += AM_TProtEdge;
	self.protection[PROT_BLUNT] += AM_TProtEdge;
	self.protection[PROT_POINT] += Am_TProtPoint;
	self.protection[PROT_FIRE] += Am_TProtFire;
	self.protection[PROT_MAGIC] += Am_TProtMage;
};

func void UnEquip_Value_Am_ProtTotal()
{
	self.protection[PROT_EDGE] -= AM_TProtEdge;
	self.protection[PROT_BLUNT] -= AM_TProtEdge;
	self.protection[PROT_POINT] -= Am_TProtPoint;
	self.protection[PROT_FIRE] -= Am_TProtFire;
	self.protection[PROT_MAGIC] -= Am_TProtMage;
};

instance ItAm_Prot_Total_02(C_Item)
{
	name = NAME_Amulett;
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_AMULET;
	value = Value_Am_ProtTotal2;
	visual = "ItAm_Prot_Total_01.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_Value_Am_ProtTotal_02;
	on_unequip = UnEquip_Value_Am_ProtTotal_02;
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = "Amulet of Crystal Skin";
	text[1] = NAME_Prot_Fire;
	count[1] = Am_TProtFire2;
	text[2] = NAME_Prot_Magic;
	count[2] = Am_TProtMage2;
	text[3] = NAME_Prot_Point;
	count[3] = Am_TProtPoint2;
	text[4] = NAME_Prot_Weapon;
	count[4] = AM_TProtEdge2;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
};


func void Equip_Value_Am_ProtTotal_02()
{
	self.protection[PROT_EDGE] += AM_TProtEdge2;
	self.protection[PROT_BLUNT] += AM_TProtEdge2;
	self.protection[PROT_POINT] += Am_TProtPoint2;
	self.protection[PROT_FIRE] += Am_TProtFire2;
	self.protection[PROT_MAGIC] += Am_TProtMage2;
};

func void UnEquip_Value_Am_ProtTotal_02()
{
	self.protection[PROT_EDGE] -= AM_TProtEdge2;
	self.protection[PROT_BLUNT] -= AM_TProtEdge2;
	self.protection[PROT_POINT] -= Am_TProtPoint2;
	self.protection[PROT_FIRE] -= Am_TProtFire2;
	self.protection[PROT_MAGIC] -= Am_TProtMage2;
};


instance ItAm_Dex_01(C_Item)
{
	name = NAME_Amulett;
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_AMULET;
	value = Value_Am_Dex;
	visual = "ItAm_Dex_01.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItAm_Dex_01;
	on_unequip = UnEquip_ItAm_Dex_01;
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = "Amulet of Agility";
	text[2] = NAME_Bonus_Dex;
	count[2] = Am_Dex;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
};


func void Equip_ItAm_Dex_01()
{
	Npc_ChangeAttribute(self,ATR_DEXTERITY,Am_Dex);
};

func void UnEquip_ItAm_Dex_01()
{
	Npc_ChangeAttribute(self,ATR_DEXTERITY,-Am_Dex);
};


instance ItAm_Strg_01(C_Item)
{
	name = NAME_Amulett;
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_AMULET;
	value = Value_Am_Strg;
	visual = "ItAm_Strg_01.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItAm_Strg_01;
	on_unequip = UnEquip_ItAm_Strg_01;
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = "Amulet of Strength";
	text[2] = NAME_Bonus_Str;
	count[2] = Am_Strg;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
};


func void Equip_ItAm_Strg_01()
{
	Npc_ChangeAttribute(self,ATR_STRENGTH,Am_Strg);
};

func void UnEquip_ItAm_Strg_01()
{
	Npc_ChangeAttribute(self,ATR_STRENGTH,-Am_Strg);
};


instance ItAm_Hp_01(C_Item)
{
	name = NAME_Amulett;
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_AMULET;
	value = Value_Am_Hp;
	visual = "ItAm_Hp_01.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItAm_Hp_01;
	on_unequip = UnEquip_ItAm_Hp_01;
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = "Amulet of Life";
	text[2] = NAME_Bonus_HP;
	count[2] = Am_Hp;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
};


func void Equip_ItAm_Hp_01()
{
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + Am_Hp;
	self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] + Am_Hp;
};

func void UnEquip_ItAm_Hp_01()
{
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] - Am_Hp;
	if(self.attribute[ATR_HITPOINTS] > (Am_Hp + 2))
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] - Am_Hp;
	}
	else
	{
		self.attribute[ATR_HITPOINTS] = 2;
	};
};


instance ItAm_Mana_01(C_Item)
{
	name = NAME_Amulett;
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_AMULET;
	value = Value_Am_Mana;
	visual = "ItAm_Mana_01.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItAm_Mana_01;
	on_unequip = UnEquip_ItAm_Mana_01;
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = "Amulet of Magic";
	text[2] = NAME_Bonus_Mana;
	count[2] = Am_Mana;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
};


func void Equip_ItAm_Mana_01()
{
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + Am_Mana;
	self.attribute[ATR_MANA] = self.attribute[ATR_MANA] + Am_Mana;
};

func void UnEquip_ItAm_Mana_01()
{
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] - Am_Mana;
	if(self.attribute[ATR_MANA] > Am_Mana)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - Am_Mana;
	}
	else
	{
		self.attribute[ATR_MANA] = 0;
	};
};


instance ItAm_Dex_Strg_01(C_Item)
{
	name = "Amulet of Power";
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_AMULET;
	value = Value_Am_DexStrg;
	visual = "ItAm_Dex_Strg_01.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItAm_Dex_Strg_01;
	on_unequip = UnEquip_ItAm_Dex_Strg_01;
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = "Amulet of Power";
	text[2] = NAME_Bonus_Dex;
	count[2] = Am_DexStrg_Dex;
	text[3] = NAME_Bonus_Str;
	count[3] = Am_DexStrg_Strg;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
};


func void Equip_ItAm_Dex_Strg_01()
{
	Npc_ChangeAttribute(self,ATR_DEXTERITY,Am_DexStrg_Dex);
	Npc_ChangeAttribute(self,ATR_STRENGTH,Am_DexStrg_Strg);
};

func void UnEquip_ItAm_Dex_Strg_01()
{
	Npc_ChangeAttribute(self,ATR_DEXTERITY,-Am_DexStrg_Dex);
	Npc_ChangeAttribute(self,ATR_STRENGTH,-Am_DexStrg_Strg);
};


instance ItAm_Hp_Mana_01(C_Item)
{
	name = "Amulet of Enlightenment";
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_AMULET;
	value = Value_Am_HpMana;
	visual = "ItAm_Hp_Mana_01.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItAm_Hp_Mana_01;
	on_unequip = UnEquip_ItAm_Hp_Mana_01;
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = "Amulet of Enlightenment";
	text[2] = NAME_Bonus_HP;
	count[2] = Am_HpMana_Hp;
	text[3] = NAME_Bonus_Mana;
	count[3] = Am_HpMana_Mana;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
};


func void Equip_ItAm_Hp_Mana_01()
{
	self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] + Am_HpMana_Hp;
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + Am_HpMana_Hp;
	self.attribute[ATR_MANA] = self.attribute[ATR_MANA] + Am_HpMana_Mana;
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + Am_HpMana_Mana;
};

func void UnEquip_ItAm_Hp_Mana_01()
{
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] - Am_HpMana_Mana;
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] - Am_HpMana_Hp;
	if(self.attribute[ATR_HITPOINTS] > (Am_HpMana_Hp + 1))
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] - Am_HpMana_Hp;
	}
	else
	{
		self.attribute[ATR_HITPOINTS] = 2;
	};
	if(self.attribute[ATR_MANA] >= Am_HpMana_Mana)
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - Am_HpMana_Mana;
	}
	else
	{
		self.attribute[ATR_MANA] = 0;
	};
};

