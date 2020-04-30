/// @description Insert description here
// You can write your code in this editor
var playerHealth = global.playerHealth;
var playerHealthMax = global.playerHealthMax;
var playerHealthFrac = frac(playerHealth);
playerHealth -= playerHealthFrac;

for (var i = 1; i <= playerHealthMax; i++){
	draw_sprite(spr_PlayerHealth,
	(i > playerHealth) + ((i == playerHealth + 1) && (playerHealthFrac > 0)),
	UI_MARGIN + ((i-1) * UI_HEALTHSEPARATION),
	UI_MARGIN
	)
}