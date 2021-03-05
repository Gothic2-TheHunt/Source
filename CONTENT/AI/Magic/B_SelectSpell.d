
func int B_SelectSpell(var C_Npc slf,var C_Npc oth)
{
	if((slf.npcType == NPCTYPE_FRIEND) && Npc_IsPlayer(oth) && (oth.guild < GIL_SEPERATOR_HUM))
	{
		if((slf.guild == GIL_KDF) || (slf.aivar[AIV_MagicUser] == MAGIC_ALWAYS))
		{
			if(Npc_HasItems(slf,ItRu_Sleep) == 0)
			{
				CreateInvItems(slf,ItRu_Sleep,1);
			};
			B_ReadySpell(slf,SPL_Sleep,SPL_Cost_Sleep);
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	if((slf.guild == GIL_DMT) && (slf.aivar[AIV_MagicUser] == MAGIC_ALWAYS))
	{
		if(Npc_HasItems(slf,ItRu_InstantFireball) == 0)
		{
			CreateInvItems(slf,ItRu_InstantFireball,1);
		};
		if(Npc_HasItems(slf,ItRu_Icebolt) == 0)
		{
			CreateInvItems(slf,ItRu_Icebolt,1);
		};
		if(Npc_HasItems(slf,ItRu_Icelance) == 0)
		{
			CreateInvItems(slf,ItRu_Icelance,1);
		};
		if(Npc_HasItems(slf,ItRu_Deathbolt) == 0)
		{
			CreateInvItems(slf,ItRu_Deathbolt,1);
		};
		if(Npc_HasItems(slf,ItRu_Deathball) == 0)
		{
			CreateInvItems(slf,ItRu_Deathball,1);
		};
		if(Npc_HasItems(slf,ItRu_Firerain) == 0)
		{
			CreateInvItems(slf,ItRu_Firerain,1);
		};
		if(Npc_HasItems(slf,ItRu_Thunderstorm) == 0)
		{
			CreateInvItems(slf,ItRu_Thunderstorm,1);
		};
		if(Npc_HasItems(slf,ItRu_LightningFlash) == 0)
		{
			CreateInvItems(slf,ItRu_LightningFlash,1);
		};
		if(Npc_HasItems(slf,ItRu_Firestorm) == 0)
		{
			CreateInvItems(slf,ItRu_Firestorm,1);
		};
		if(Npc_HasItems(slf,ItRu_Geyser) == 0)
		{
			CreateInvItems(slf,ItRu_Geyser,1);
		};
		if(Npc_HasItems(slf,ItRu_Waterfist) == 0)
		{
			CreateInvItems(slf,ItRu_Waterfist,1);
		};
		if(Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(DMT_1299_OberDementor_DI))
		{
			if(Npc_HasItems(slf,ItRu_Skull) == 0)
			{
				CreateInvItems(slf,ItRu_Skull,1);
			};
			B_ReadySpell(slf,SPL_Skull,SPL_Cost_Skull);
			return TRUE;
		}
		else
		{
			if(Npc_IsDrawingWeapon(slf))
			{
				return TRUE;
			};
			
			var int dK_rnd;
			var int dK_Mega;
			var int spellroll;
			if(slf.aivar[AIV_SelectSpell] <= 0)
			{
				spellroll = Hlp_Random(100);
				dK_rnd = Hlp_Random(17);
				dK_Mega = Hlp_Random(100);
				slf.aivar[AIV_SelectSpell] += dK_rnd;
			};
			if(slf.aivar[AIV_SelectSpell] < 8)
			{
				if(spellroll < 55 && Kapitel <= 3)
				{
					B_ReadySpell(slf,SPL_InstantFireball,SPL_COST_InstantFireball);
					return TRUE;		
				}
				else if(spellroll < 85 && Kapitel <= 4)
				{
					B_ReadySpell(slf,SPL_Deathbolt,SPL_COST_Deathbolt);
					return TRUE;
				}
				else
				{
					B_ReadySpell(slf,SPL_Deathball,SPL_COST_Deathball);
					return TRUE;
				};
			}
			else if(slf.aivar[AIV_SelectSpell] < 16)
			{
				if(spellroll < 50 && Kapitel <= 3)
				{
					B_ReadySpell(slf,SPL_Icebolt,SPL_COST_Icebolt);
					return TRUE;			
				}
				else if(spellroll < 85 && Kapitel <= 4)
				{
					B_ReadySpell(slf,SPL_IceLance,SPL_Cost_Icelance);
					return TRUE;
				}
				else
				{
					B_ReadySpell(slf,SPL_LightningFlash,SPL_Cost_LightningFlash);
					return TRUE;
				};
			}
			else if(slf.aivar[AIV_SelectSpell] < 17)
			{
				if(dK_Mega <= 3)
				{
					B_ReadySpell(slf,SPL_Firerain,SPL_Cost_Firerain);
					return TRUE;
				}
				else if(dK_Mega <= 12)
				{
					B_ReadySpell(slf,SPL_Thunderstorm,SPL_Cost_Thunderstorm);
					return TRUE;
				}
				else if(dK_Mega <= 33)
				{
					B_ReadySpell(slf,SPL_Geyser,SPL_Cost_Geyser);
					return TRUE;
				}
				else if(dK_Mega <= 60)
				{
					B_ReadySpell(slf,SPL_WaterFist,SPL_Cost_Waterfist);
					return TRUE;
				}
				else
				{
					B_ReadySpell(slf,SPL_Firestorm,SPL_COST_Firestorm);
					return TRUE;
				};
			}
			else
			{
				spellroll = Hlp_Random(100);
				dK_rnd = Hlp_Random(17);
				dK_Mega = Hlp_Random(100);
				slf.aivar[AIV_SelectSpell] = 0;
			};
		};
		return TRUE;
	};
	if((slf.guild == GIL_KDF) || (slf.aivar[AIV_MagicUser] == MAGIC_ALWAYS))
	{
		if(Npc_HasItems(slf,ItRu_Concussionbolt) == 0)
		{
			CreateInvItems(slf,ItRu_Concussionbolt,1);
		};
		if(Npc_HasItems(slf,ItRu_InstantFireball) == 0)
		{
			CreateInvItems(slf,ItRu_InstantFireball,1);
		};
		if(Npc_HasItems(slf,ItRu_Deathball) == 0)
		{
			CreateInvItems(slf,ItRu_Deathball,1);
		};
		if(Npc_HasItems(slf,ItRu_FullHeal) == 0)
		{
			CreateInvItems(slf,ItRu_FullHeal,1);
		};
		if(self.attribute[ATR_HITPOINTS] < 100)
		{
			B_ReadySpell(slf,SPL_FullHeal,SPL_Cost_FullHeal);
			return TRUE;
		}
		else if(C_NpcHasAttackReasonToKill(self))
		{
			if((self.flags == NPC_FLAG_IMMORTAL) || (Hlp_GetInstanceID(other) == Hlp_GetInstanceID(Raven)))
			{
				B_ReadySpell(slf,SPL_Deathball,SPL_COST_Deathball);
			}
			else
			{
				B_ReadySpell(slf,SPL_InstantFireball,SPL_COST_InstantFireball);
			};
			return TRUE;
		}
		else
		{
			B_ReadySpell(slf,SPL_ConcussionBolt,SPL_COST_Concussionbolt);
			return TRUE;
		};
	};
	if(slf.guild == GIL_PAL)
	{
		if(slf.fight_tactic == FAI_NAILED)
		{
			return FALSE;
		};
		if(Npc_HasItems(slf,ItRu_PalHolyBolt) == 0)
		{
			CreateInvItems(slf,ItRu_PalHolyBolt,1);
		};
		if((Npc_GetDistToNpc(slf,oth) > FIGHT_DIST_MELEE) && C_NpcIsEvil(oth))
		{
			B_ReadySpell(slf,SPL_PalHolyBolt,SPL_Cost_PalHolyBolt);
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	if(slf.guild == GIL_SKELETON_MAGE)
	{
		if(Npc_HasItems(slf,ItRu_SumSkel) == 0)
		{
			CreateInvItems(slf,ItRu_SumSkel,1);
		};
		if(Npc_HasItems(slf,ItRu_IceCube) == 0)
		{
			CreateInvItems(slf,ItRu_IceCube,1);
		};
		if(Npc_HasItems(slf,ItRu_Icebolt) == 0)
		{
			CreateInvItems(slf,ItRu_Icebolt,1);
		};
		if(slf.aivar[AIV_SelectSpell] >= 6)
		{
			slf.aivar[AIV_SelectSpell] = 1;
		};
		if(!Npc_IsInState(oth,ZS_MagicFreeze) && (slf.aivar[AIV_SelectSpell] == 0))
		{
			B_ReadySpell(slf,SPL_IceCube,SPL_Cost_IceCube);
			return TRUE;
		}
		else if(slf.aivar[AIV_SelectSpell] == 1)
		{
			B_ReadySpell(slf,SPL_SummonSkeleton,SPL_Cost_SummonSkeleton);
			return TRUE;
		}
		else
		{
			B_ReadySpell(slf,SPL_Icebolt,SPL_COST_Icebolt);
			return TRUE;
		};
	};
	if(slf.guild == GIL_ICEGOLEM)
	{
		if(Npc_HasItems(slf,ItRu_IceCube) == 0)
		{
			CreateInvItems(slf,ItRu_IceCube,1);
		};
		if((Npc_GetDistToNpc(slf,oth) < FIGHT_DIST_MELEE) || Npc_IsInState(oth,ZS_MagicFreeze))
		{
			return FALSE;
		}
		else
		{
			B_ReadySpell(slf,SPL_IceCube,SPL_Cost_IceCube);
			return TRUE;
		};
	};
	if(slf.guild == GIL_FIREGOLEM)
	{
		if(Npc_HasItems(slf,ItRu_Deathbolt) == 0)
		{
			CreateInvItems(slf,ItRu_Deathbolt,1);
		};
		if(Npc_GetDistToNpc(slf,oth) > FIGHT_DIST_MELEE)
		{
			B_ReadySpell(slf,SPL_Deathbolt,SPL_COST_Deathbolt);
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_SWAMP)
	{
		if(Npc_HasItems(slf,ItRu_Deathbolt) == 0)
		{
			CreateInvItems(slf,ItRu_Deathbolt,1);
		};
		if(Npc_HasItems(slf,ItRu_Deathball) == 0)
		{
			CreateInvItems(slf,ItRu_Deathball,1);
		};
		if(Npc_HasItems(slf,ItRu_Icelance) == 0)
		{
			CreateInvItems(slf,ItRu_Icelance,1);
		};
		if(Npc_HasItems(slf,ItRu_Waterfist) == 0)
		{
			CreateInvItems(slf,ItRu_Waterfist,1);
		};
		
		if(Npc_IsDrawingWeapon(slf))
		{
			return TRUE;
		};

		if(Npc_GetDistToNpc(slf,oth) > FIGHT_DIST_DRAGON_MAGIC)
		{
			var int dragonspellswamp;
			if(slf.aivar[AIV_SelectSpell] <= 0)
			{
				dragonspellswamp = Hlp_Random(20);
				slf.aivar[AIV_SelectSpell] += dragonspellswamp;
			};
			if(slf.aivar[AIV_SelectSpell] <= 2)
			{
				B_ReadySpell(slf,SPL_WaterFist,SPL_Cost_Waterfist);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] <= 12)
			{
				B_ReadySpell(slf,SPL_Deathbolt,SPL_COST_Deathbolt);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] <= 20)
			{
				B_ReadySpell(slf,SPL_IceLance,SPL_Cost_Icelance);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] >= 21)
			{
				dragonspellswamp = Hlp_Random(20);
				slf.aivar[AIV_SelectSpell] = 0;
			};

			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_ROCK)
	{
		if(Npc_HasItems(slf,ItRu_Deathbolt) == 0)
		{
			CreateInvItems(slf,ItRu_Deathbolt,1);
		};
		if(Npc_HasItems(slf,ItRu_Deathball) == 0)
		{
			CreateInvItems(slf,ItRu_Deathball,1);
		};
		if(Npc_HasItems(slf,ItRu_Geyser) == 0)
		{
			CreateInvItems(slf,ItRu_Geyser,1);
		};
		if(Npc_HasItems(slf,ItRu_Icelance) == 0)
		{
			CreateInvItems(slf,ItRu_Icelance,1);
		};
		if(Npc_HasItems(slf,ItRu_LightningFlash) == 0)
		{
			CreateInvItems(slf,ItRu_LightningFlash,1);
		};
		if(Npc_HasItems(slf,ItRu_Thunderstorm) == 0)
		{
			CreateInvItems(slf,ItRu_Thunderstorm,1);
		};
		
		if(Npc_IsDrawingWeapon(slf))
		{
			return TRUE;
		};
		
		if(Npc_GetDistToNpc(slf,oth) > FIGHT_DIST_DRAGON_MAGIC)
		{
			var int dragonspellrock;
			if(slf.aivar[AIV_SelectSpell] <= 0)
			{
				dragonspellrock = Hlp_Random(25);
				slf.aivar[AIV_SelectSpell] += dragonspellrock;
			};
			if(slf.aivar[AIV_SelectSpell] <= 1)
			{
				B_ReadySpell(slf,SPL_Thunderstorm,SPL_Cost_Thunderstorm);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] <= 2)
			{
				B_ReadySpell(slf,SPL_Geyser,SPL_Cost_Geyser);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] <= 12)
			{
				B_ReadySpell(slf,SPL_Deathbolt,SPL_COST_Deathbolt);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] <= 13)
			{
				B_ReadySpell(slf,SPL_LightningFlash,SPL_Cost_LightningFlash);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] <= 17)
			{
				B_ReadySpell(slf,SPL_IceLance,SPL_Cost_Icelance);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] <= 18)
			{
				B_ReadySpell(slf,SPL_Geyser,SPL_Cost_Geyser);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] <= 25)
			{
				B_ReadySpell(slf,SPL_IceLance,SPL_Cost_Icelance);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] >= 26)
			{
				dragonspellrock = Hlp_Random(25);
				slf.aivar[AIV_SelectSpell] = 0;
			};
			
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_FIRE)
	{
		if(Npc_HasItems(slf,ItRu_Deathbolt) == 0)
		{
			CreateInvItems(slf,ItRu_Deathbolt,1);
		};
		if(Npc_HasItems(slf,ItRu_Deathball) == 0)
		{
			CreateInvItems(slf,ItRu_Deathball,1);
		};
		if(Npc_HasItems(slf,ItRu_Geyser) == 0)
		{
			CreateInvItems(slf,ItRu_Geyser,1);
		};
		if(Npc_HasItems(slf,ItRu_Firestorm) == 0)
		{
			CreateInvItems(slf,ItRu_Firestorm,1);
		};
		if(Npc_HasItems(slf,ItRu_Firerain) == 0)
		{
			CreateInvItems(slf,ItRu_Firerain,1);
		};
		
		if(Npc_IsDrawingWeapon(slf))
		{
			return TRUE;
		};
		
		if(Npc_GetDistToNpc(slf,oth) > FIGHT_DIST_DRAGON_MAGIC)
		{
			var int dragonspellfire;
			if(slf.aivar[AIV_SelectSpell] <= 0)
			{
				dragonspellfire = Hlp_Random(20);
				slf.aivar[AIV_SelectSpell] += dragonspellfire;
			};
			if(slf.aivar[AIV_SelectSpell] <= 1)
			{
				B_ReadySpell(slf,SPL_Firerain,SPL_Cost_Firerain);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] <= 8)
			{
				B_ReadySpell(slf,SPL_Deathball,SPL_COST_Deathball);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] <= 10)
			{
				B_ReadySpell(slf,SPL_Firestorm,SPL_COST_Firestorm);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] <= 14)
			{
				B_ReadySpell(slf,SPL_Deathbolt,SPL_COST_Deathbolt);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] <= 16)
			{
				B_ReadySpell(slf,SPL_Geyser,SPL_Cost_Geyser);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] <= 17)
			{
				B_ReadySpell(slf,SPL_Firestorm,SPL_COST_Firestorm);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] <= 20)
			{
				B_ReadySpell(slf,SPL_Deathbolt,SPL_COST_Deathbolt);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] >= 21)
			{
				dragonspellfire = Hlp_Random(20);
				slf.aivar[AIV_SelectSpell] = 0;
			};
			
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_ICE)
	{
		//Npc_ClearAIQueue(self);
		if(Npc_HasItems(slf,ItRu_IceCube) == 0)
		{
			CreateInvItems(slf,ItRu_IceCube,1);
		};
		if(Npc_HasItems(slf,ItRu_Deathbolt) == 0)
		{
			CreateInvItems(slf,ItRu_Deathbolt,1);
		};
		if(Npc_HasItems(slf,ItRu_Deathball) == 0)
		{
			CreateInvItems(slf,ItRu_Deathball,1);
		};
		if(Npc_HasItems(slf,ItRu_Icelance) == 0)
		{
			CreateInvItems(slf,ItRu_Icelance,1);
		};
		if(Npc_HasItems(slf,ItRu_LightningFlash) == 0)
		{
			CreateInvItems(slf,ItRu_LightningFlash,1);
		};
		if(Npc_HasItems(slf,ItRu_Geyser) == 0)
		{
			CreateInvItems(slf,ItRu_Geyser,1);
		};
		
		if(Npc_IsDrawingWeapon(slf))
		{
			return TRUE;
		};
			
		if(Npc_GetDistToNpc(slf,oth) > FIGHT_DIST_DRAGON_MAGIC)
		{
			var int dragonspellice;
			if(slf.aivar[AIV_SelectSpell] <= 0)
			{
				dragonspellice = Hlp_Random(30);
				slf.aivar[AIV_SelectSpell] += dragonspellice;
			};
			if(slf.aivar[AIV_SelectSpell] <= 4)
			{
				B_ReadySpell(slf,SPL_Deathbolt,SPL_COST_Deathbolt);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] <= 5)
			{
				B_ReadySpell(slf,SPL_IceCube,SPL_Cost_IceCube);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] <= 6)
			{
				B_ReadySpell(slf,SPL_Geyser,SPL_Cost_Geyser);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] <= 9)
			{
				B_ReadySpell(slf,SPL_Deathball,SPL_COST_Deathball);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] <= 10)
			{
				B_ReadySpell(slf,SPL_LightningFlash,SPL_Cost_LightningFlash);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] <= 20)
			{
				B_ReadySpell(slf,SPL_IceLance,SPL_Cost_Icelance);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] <= 21)
			{
				B_ReadySpell(slf,SPL_Geyser,SPL_Cost_Geyser);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] <= 24)
			{
				B_ReadySpell(slf,SPL_Deathbolt,SPL_COST_Deathbolt);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] <= 26)
			{
				B_ReadySpell(slf,SPL_LightningFlash,SPL_Cost_LightningFlash);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] <= 30)
			{
				B_ReadySpell(slf,SPL_Deathball,SPL_COST_Deathball);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] >= 31)
			{
				dragonspellice = Hlp_Random(30);
				slf.aivar[AIV_SelectSpell] = 0;
			};
			
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_UNDEAD)
	{
		Npc_ClearAIQueue(self);
		if(Npc_HasItems(slf,ItRu_Deathball) == 0)
		{
			CreateInvItems(slf,ItRu_Deathball,1);
		};
		if(Npc_HasItems(slf,ItRu_Geyser) == 0)
		{
			CreateInvItems(slf,ItRu_Geyser,1);
		};
		
		if(Npc_IsDrawingWeapon(slf))
		{
			return TRUE;
		};
		
		if(Npc_GetDistToNpc(slf,oth) > FIGHT_DIST_DRAGON_MAGIC)
		{		
			var int dragonspelldeath;
			if(slf.aivar[AIV_SelectSpell] <= 0)
			{
				dragonspelldeath = Hlp_Random(20);
				slf.aivar[AIV_SelectSpell] += dragonspelldeath;
			};
			if(slf.aivar[AIV_SelectSpell] <= 3)
			{
				B_ReadySpell(slf,SPL_Geyser,SPL_Cost_Geyser);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] <= 10)
			{
				B_ReadySpell(slf,SPL_Deathball,SPL_COST_Deathball);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] <= 14)
			{
				B_ReadySpell(slf,SPL_Geyser,SPL_Cost_Geyser);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] <= 20)
			{
				B_ReadySpell(slf,SPL_Deathball,SPL_COST_Deathball);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] >= 21)
			{
				dragonspelldeath = Hlp_Random(20);
				slf.aivar[AIV_SelectSpell] = 0;
			};
			
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	if(slf.aivar[AIV_MM_REAL_ID] == ID_ORCSHAMAN)
	{
		if(Npc_HasItems(slf,ItRu_InstantFireball) == 0)
		{
			CreateInvItems(slf,ItRu_InstantFireball,1);
		};
		if(Npc_HasItems(slf,ItRu_Deathbolt) == 0)
		{
			CreateInvItems(slf,ItRu_Deathbolt,1);
		};
		
		if(Npc_GetDistToNpc(slf,oth) > FIGHT_DIST_MELEE)
		{
			if(slf.aivar[AIV_SelectSpell] <= 0)
			{
				dK_rnd = Hlp_Random(20);
				slf.aivar[AIV_SelectSpell] += dK_rnd;
			};
			if(Kapitel <= 2)
			{
				B_ReadySpell(slf,SPL_InstantFireball,SPL_COST_InstantFireball);
				return TRUE;
			}
			else if(Kapitel <= 3 && slf.aivar[AIV_SelectSpell] >= 8 && slf.aivar[AIV_SelectSpell] <= 20)
			{
				B_ReadySpell(slf,SPL_InstantFireball,SPL_COST_InstantFireball);
				return TRUE;
			}
			else if(Kapitel <= 4 && slf.aivar[AIV_SelectSpell] <= 20)
			{
				B_ReadySpell(slf,SPL_Deathbolt,SPL_COST_Deathbolt);
				return TRUE;
			}
			else if(slf.aivar[AIV_SelectSpell] >= 21)
			{
				slf.aivar[AIV_SelectSpell] = 0;
			};
			
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	return FALSE;
};

