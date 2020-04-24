/// @description Insert description here
// You can write your code in this editor
if keyboard_check(ord("D")) obj_Player.x += movementspeed;
if keyboard_check(ord("A")) obj_Player.x -= movementspeed;
if keyboard_check(ord("W")) obj_Player.y -= movementspeed;
if keyboard_check(ord("S")) obj_Player.y += movementspeed;