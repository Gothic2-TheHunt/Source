
instance FA_ENEMY_PREHIT_120(C_FIGHTAI)
{
	move[0] = MOVE_JUMPBACK;
	move[1] = MOVE_PARADE;
};

instance FA_ENEMY_STORMPREHIT_120(C_FIGHTAI)
{
	move[0] = MOVE_STRAFE;
};

instance FA_MY_W_COMBO_120(C_FIGHTAI)
{
};

instance FA_MY_W_RUNTO_120(C_FIGHTAI)
{
	move[0] = MOVE_TURN;
};

instance FA_MY_W_STRAFE_120(C_FIGHTAI)
{
};

instance FA_MY_W_FOCUS_120(C_FIGHTAI)
{
	move[0] = MOVE_ATTACK;
	move[1] = MOVE_SIDEATTACK;
	move[2] = MOVE_MASTERATTACK;
	move[3] = MOVE_WAIT;
	move[4] = MOVE_WAIT;
	move[5] = MOVE_WAIT;
};

instance FA_MY_W_NOFOCUS_120(C_FIGHTAI)
{
	move[0] = MOVE_TURN;
};

instance FA_MY_G_COMBO_120(C_FIGHTAI)
{
};

instance FA_MY_G_RUNTO_120(C_FIGHTAI)
{
	move[0] = MOVE_ATTACK;
};

instance FA_MY_G_STRAFE_120(C_FIGHTAI)
{
};

instance FA_MY_G_FOCUS_120(C_FIGHTAI)
{
	move[0] = MOVE_RUN;
	move[1] = MOVE_RUN;
	move[2] = MOVE_STRAFE;
};

instance FA_MY_FK_FOCUS_120(C_FIGHTAI)
{
	move[0] = MOVE_RUN;
};

instance FA_MY_G_FK_NOFOCUS_120(C_FIGHTAI)
{
	move[0] = MOVE_TURN;
};

instance FA_MY_FK_FOCUS_FAR_120(C_FIGHTAI)
{
	move[0] = MOVE_TRIPLEATTACK;
};

instance FA_MY_FK_NOFOCUS_FAR_120(C_FIGHTAI)
{
	move[0] = MOVE_TURN;
};

instance FA_MY_FK_FOCUS_MAG_120(C_FIGHTAI)
{
	move[0] = MOVE_TRIPLEATTACK;
	move[1] = MOVE_WAIT_EXT;
	move[2] = MOVE_WAIT_EXT;
	move[3] = MOVE_WAIT_EXT;
};

instance FA_MY_FK_NOFOCUS_MAG_120(C_FIGHTAI)
{
	move[0] = MOVE_TURN;
};

