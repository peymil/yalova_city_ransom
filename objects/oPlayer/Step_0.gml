rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);
upKey = keyboard_check(vk_up);
downKey = keyboard_check(vk_down);


xspd = (rightKey - leftKey) * moveSpd
yspd = (downKey - upKey) * moveSpd

x += xspd
y += yspd