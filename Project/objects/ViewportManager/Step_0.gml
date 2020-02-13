var playerRoomLeft = view_get_wport(playerCamera)/2;
var playerRoomRight = room_width-(view_get_wport(playerCamera)/2);
var playerRoomTop = view_get_hport(playerCamera)/2;
var playerRoomBottom = room_height-(view_get_hport(playerCamera)/2);


if (instance_exists(Player)) {
	playerCameraX = clamp(lerp(playerCameraX,Player.x,PCAMERA_SPEED),playerRoomLeft,playerRoomRight);
	playerCameraY = clamp(lerp(playerCameraY,Player.y,PCAMERA_SPEED),playerRoomTop,playerRoomBottom);
}
var viewMatrix = matrix_build_lookat(playerCameraX,playerCameraY,ZFROM,playerCameraX,playerCameraY,ZTO,XUP,YUP,ZUP);
camera_set_view_mat(playerCamera,viewMatrix);