

switch(estado)
{
	case  "idle":
	      sprite_index = S_porta_parada;
		  //se aporta esta em contato com o player e ele apertou a ceta para cima, ele entra
		  var _player = instance_place(x,y,Obj_Player);
		  if(_player)
		  {
			 //checando se ele apertou a ceta para cima
			 if keyboard_check_pressed(ord("W"))
			 {
				 estado = "abrindo";
			 }
		  }
	break;
	
	case "abrindo":
	      mudando_sprite(S_porta_abre);
		  //terminou de abrir ela fica parada
		  if (image_index >= image_number - 1)
		  {
			  image_speed = 0;  
		  }
	break;
	
	case "fechando":
	      mudando_sprite(S_porta_fecha);
	break;
}