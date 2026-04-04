//chcando se o virus esta no chão
var _chao = place_meeting(x,y + 1, Obj_chao);
velv += grav;
if (_chao)
{
	velh = vel;
}
else
{
	velv += grav;
	velh = 0;
}
