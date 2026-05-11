if(morto)
{
	sprite_index = S_Virus01_morto
	if(image_speed <= 0)
	{
		image_alpha -= 1;
	}
	if(image_alpha <= 0)
	{
		instance_destroy();
	}
	exit;
}

//chcando se o virus esta no chão
var _chao = place_meeting(x,y + 1, Obj_chao);
velv += grav;
if (_chao)
{
	//vou diminuir o tempo de decidir andar
	tempo_decidir_andar -= 1;
	//se o tempo acabou eu decido se eu irei andar
	if(tempo_decidir_andar <= 0){
	    andando = choose(true,false);
		
		//escolhendo a direção se ele deciciu andar
		if(andando){
	    velh = choose(vel,-vel);
	    }
	    else{
	    velh = 0;	
	    }
		vel = choose(-1,1);
	//resetando o tempo de novo
	    tempo_decidir_andar = room_speed * 3;
	}
	//controlando a animação do inimigo
	if(velh != 0 && dano == false)
	{
		sprite_index = S_Virus01_run;
		image_xscale = sign(velh);
	}
	else
	{
	 	sprite_index = S_Virus01_parado;
	}
	//se eu bater na parede eu volto
	if (place_meeting(x + velh, y, Obj_chao))
	{
		velh *= -1;
	}
	
	//se eu não posso cair
	if(pode_cair == false)
	{
	if(place_meeting(x + (velh * 16),y + 1,Obj_chao) == false)
	{
		velh *= -1;
	}
	}
}
else
{
	velv += grav;
	
	//velh = 0;
	
	if(velh != 0){
		
		image_xscale = sign(velh);
		
	}
}
//chequando se eu estou tomando dano
if(dano && morto == false)
{
	sprite_index = S_Virus01_dano
	velh = 0;
}

//o que fazer quando eu morro