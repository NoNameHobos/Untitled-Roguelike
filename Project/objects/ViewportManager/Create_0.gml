playerCamera = camera_create();
playerCameraX = PlayerStartPoint.x;
playerCameraY = PlayerStartPoint.y;


var viewMatrix = matrix_build_lookat(playerCameraX,playerCameraY,ZFROM,playerCameraX,playerCameraY,ZTO,XUP,YUP,ZUP);
var projectionMatrix = matrix_build_projection_ortho(1024,768,1.0,32000.0);

camera_set_view_mat(playerCamera,viewMatrix);
camera_set_proj_mat(playerCamera,projectionMatrix);



view_camera[0] = playerCamera;