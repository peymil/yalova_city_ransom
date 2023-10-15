moveSpd = 2;
xspd = 0;
yspd = 0;
ground = layer_tilemap_get_id("ground");
rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);
upKey = keyboard_check(vk_up);
downKey = keyboard_check(vk_down);
enum STATE {
	IDLE,
	WALK,
	ATTACK
};
state = STATE.IDLE;

