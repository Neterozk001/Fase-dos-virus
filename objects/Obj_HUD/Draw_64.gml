var _vida = Obj_Player.vida;
var _max = Obj_Player.max_vida;

for (var i = 0; i < _max; i++)
{
    if (i < _vida)
    {
        draw_sprite(S_Life, 0, 50 + (i * 50), 50);
    }
}
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_font(Ft_HUD);
draw_text(30,80,"PONTOS: " + string(global.pontos) + "/10");