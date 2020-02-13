var playerHp = null;
var playerMaxHp = null;
var playerMaxHearts = null;
var playerHearts = null;
var playerHalfHearts = null;
var subImg = null;

var heartWidth = sprite_get_width(spr_uiHeart);

if (instance_exists(Player)) {
	playerMaxHp = Player.maxHp;
	playerHp = Player.hp;
	playerMaxHearts = playerMaxHp/2;
	playerHearts = floor(playerHp/2);
	playerHalfHearts = playerHp-(playerHearts*2);
	for (var i = 0; i < playerMaxHearts; i++) {
		if (i < playerHearts) {
			subImg = 2;
		} else {
			subImg = 0;
		}
		draw_sprite(spr_uiHeart,subImg,HEART_X+(i*(heartWidth+HEART_MARGIN)),HEART_Y);
	}
	if (playerHalfHearts > 0 and playerHp > 0) draw_sprite(spr_uiHeart,1,HEART_X+(playerHearts*(heartWidth+HEART_MARGIN)),HEART_Y);
	
}
