if(texto == "GAME OVER")
{
    draw_set_font(Ft_menu);
    draw_set_color(c_red);
}
else if(texto == "OBJETIVO CONCLUIDO!")
{
    draw_set_font(Ft_menu);
    draw_set_color(c_lime);
}
else
{
    draw_set_font(Ft_menu);
    draw_set_color(c_white);
}

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y, texto);

// reset (boa prática)
draw_set_color(c_white);