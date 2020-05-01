/// @description Déplacement
if(keyboard_check(vk_left) || keyboard_check(ord("Q")))
{
	x -= 4;
}

if(keyboard_check(vk_right) || keyboard_check(ord("D")))
{
	x += 4;
}

if(keyboard_check(vk_up) || keyboard_check(ord("Z")))
{
	y -= 4;
}

if(keyboard_check(vk_down) || keyboard_check(ord("S")))
{
	y += 4;
}
