rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);
upKey = keyboard_check(vk_up);
downKey = keyboard_check(vk_down);

var _moving = false;

// Movement
xspd = (rightKey - leftKey) * moveSpd
yspd = (downKey - upKey) * moveSpd

var newX = x + xspd;
var newY = y + yspd


if(place_meeting(newX ,newY,ground)) {
	var _moving = newX != x || newY != y;
	x += xspd
	y += yspd
}




// Movement State

switch (state) {
	case STATE.IDLE:
		if(_moving){
			state = STATE.WALK;
			object_set_sprite(oPlayer,walk);
		}
		break;
	case STATE.WALK:
		if(!_moving){
			state = STATE.IDLE
			object_set_sprite(oPlayer,idle)
		}
		break;
	default:
		break;
}



