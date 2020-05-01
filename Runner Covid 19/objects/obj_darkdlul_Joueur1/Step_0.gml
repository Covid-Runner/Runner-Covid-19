/// @description Etape Joueur1
// Vous pouvez écrire votre code dans cet éditeur

if (keyboard_check(vk_right)){
	if (keyboard_check(vk_shift))
	x += joueur1_sprint_spd;
	else
	x += joueur1_walk_spd;
}
if (keyboard_check(vk_left)){
	if (keyboard_check(vk_shift))
	x -= joueur1_sprint_spd;
	else
	x -= joueur1_walk_spd;
}
if (keyboard_check(vk_up)){
	if (keyboard_check(vk_shift))
	y -= joueur1_sprint_spd;
	else
	y -= joueur1_walk_spd;
}
if (keyboard_check(vk_down)){
	if (keyboard_check(vk_shift))
	y += joueur1_sprint_spd;
	else
	y += joueur1_walk_spd;
}

image_angle = point_direction(x,y,mouse_x,mouse_y);