//colisão Horizontal

//colisão parede
var _colisao = instance_place(x + velh,y,Obj_chao);

if (_colisao)
{
	if (velh > 0)
	{
		x = _colisao.bbox_left + (x - bbox_right);
	}
		
	if (velh < 0)
	{
		x = _colisao.bbox_right + (x - bbox_left);
	}
	
	velh = 0;
}

x += velh;

var _colisao = instance_place(x, y + velv,Obj_chao);

if (_colisao)
{
	if (velv > 0)
	{
		y = _colisao.bbox_top + (y - bbox_bottom);
	}
		
	if (velv < 0)
	{
		y = _colisao.bbox_bottom + (y - bbox_top);
	}
	
	velv = 0;
}

y += velv;