//Controlando o Player
var _chao = place_meeting(x , y + 1, Obj_chao);

var _left,_right,_jump;
_left = keyboard_check(inputs.left);
_right = keyboard_check(inputs.right);
_jump = keyboard_check(inputs.jump);

velh = (_right - _left) * vel;

//Gravidade
velv += grav;

//pulo

if (_chao)
{
    if (_jump)
    {
	    velv = -vel_jump;
    }
//se eu stou no chão e me movendo
    if (velh != 0)
    {
		//mudo a sprite dele
	    sprite_index = S_Player_run;
		//faço ele olhar para onde eu vou
		image_xscale = sign(velh);
    }
	else 
	{
		sprite_index = S_Playerparado
	}
}
else //não estou no chão
{
	//mudando a sprite
	if(velv < 0)
	{
	   sprite_index = S_Player_jump;
	}
	else
	{
		sprite_index = S_Player_fall;
	}
	velv += grav;
	if (velh != 0)
	{
		image_xscale = sign(velh);
	}
}