
instance FA_ENEMY_PREHIT_41(C_FIGHTAI)
{
	move[0] = MOVE_JUMPBACK;
	move[1] = MOVE_PARADE;
};

instance FA_ENEMY_STORMPREHIT_41(C_FIGHTAI)
{
	move[0] = MOVE_STRAFE;
};

instance FA_MY_W_COMBO_41(C_FIGHTAI)
{
};

instance FA_MY_W_RUNTO_41(C_FIGHTAI)
{
	move[0] = MOVE_TURN;
};

instance FA_MY_W_STRAFE_41(C_FIGHTAI)
{
};

instance FA_MY_W_FOCUS_41(C_FIGHTAI)
{
	move[0] = MOVE_SIDEATTACK;
};

instance FA_MY_W_NOFOCUS_41(C_FIGHTAI)
{
	move[0] = MOVE_TURN;
};

instance FA_MY_G_COMBO_41(C_FIGHTAI)
{
};

instance FA_MY_G_RUNTO_41(C_FIGHTAI)
{
	move[0] = MOVE_RUN;
};

instance FA_MY_G_STRAFE_41(C_FIGHTAI)
{
};

instance FA_MY_G_FOCUS_41(C_FIGHTAI)
{
	move[0] = MOVE_RUN;
	move[1] = MOVE_RUN;
	move[2] = MOVE_STRAFE;
};

instance FA_MY_FK_FOCUS_41(C_FIGHTAI)
{
	move[0] = MOVE_RUN;
};

instance FA_MY_G_FK_NOFOCUS_41(C_FIGHTAI)
{
	move[0] = MOVE_TURN;
};

instance FA_MY_FK_FOCUS_FAR_41(C_FIGHTAI)
{
	move[0] = MOVE_ATTACK;
};

instance FA_MY_FK_NOFOCUS_FAR_41(C_FIGHTAI)
{
	move[0] = MOVE_TURN;
};

instance FA_MY_FK_FOCUS_MAG_41(C_FIGHTAI)
{
	move[0] = MOVE_ATTACK;
	move[1] = MOVE_WAIT_LONGER;
	move[2] = MOVE_WAIT;
	move[3] = MOVE_WAIT_LONGER;
	move[4] = MOVE_WAIT_LONGER;
	move[5] = MOVE_WAIT_LONGER;
};

instance FA_MY_FK_NOFOCUS_MAG_41(C_FIGHTAI)
{
	move[0] = MOVE_TURN;
};

