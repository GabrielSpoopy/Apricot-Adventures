
enum RES {
	WIDTH = 1024,
	HEIGHT = 576,
	SCALE = 1
}

global.jk = oPlayer

var _camera = camera_create_view(0, 0, RES.WIDTH, RES.HEIGHT, 0, global.jk, -1, -1, 400, RES.HEIGHT/2);

view_enabled = true;
view_visible[0] = true;

view_set_camera(0, _camera);

//------------------------------------------------------------------------------------------------------------------
