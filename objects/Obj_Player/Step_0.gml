//Controlando o Player
var _chao = place_meeting(x , y + 1, Obj_chao);

var _left,_right,_jump;
_left = keyboard_check(inputs.left);
_right = keyboard_check(inputs.right);
_jump = keyboard_check(inputs.jump);


//So posso me mover se eu não estiver tomando dano
if(timer_dano <=0)
{
velh = (_right - _left) * vel;
}
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
		//se eu estou caindo eu posso causar dano
		var _inimigo = instance_place(x, y + 5, Obj_inimigo_pai);
		//se eu cair no inimigo
		if (_inimigo)
		{
			dano = false
			if(_inimigo.morto == false)
			{
			//eu subo pra cima de novo
			velv = -vel_jump;
			//avisando que o inimigo tomou dano
			_inimigo.dano = true;
			}
		}
	}
	velv += grav;
	if (velh != 0)
	{
		image_xscale = sign(velh);
	}
}
if(dano)
{
	
	sprite_index = S_Player_dano;
}

//se o timer do dano for maio que zero eu diminuo ele
if(timer_dano>0)
{
	timer_dano--;
}
else
{
	//acabou o tempo do dano
	dano = false;
}
if(inv_timer > 0)
{
	inv_timer--;
	image_alpha = .5;
}
else
{
 	image_alpha = 1;
}
var _inimigo = instance_place(x,y,Obj_inimigo_pai);
if(_inimigo && inv_timer <= 0)
{
	if(_inimigo.morto == false && _inimigo.dano == false)
{
	//dando o valor timer dano
	timer_dano = tempo_dano;
	inv_timer = inv_tempo;
	dano = true;
   sprite_index = S_Player_dano;
}
}