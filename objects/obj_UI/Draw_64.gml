/// @description draws hp and money

//DRAW PLAYER HP
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

//DRAW PLAYER MONEY
draw_sprite(spr_moneyUI, image_index, UI_MARGIN + 6, UI_MARGIN + 24);
draw_set_font(fn_Arial);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_green);
draw_text(UI_MARGIN + 20, UI_MARGIN + 18, ":  " + string(global.playerMoney));