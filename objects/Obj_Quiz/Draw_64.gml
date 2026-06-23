var gw = display_get_gui_width();
var gh = display_get_gui_height();

// alinhamento central
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// fonte
draw_set_font(Ft_menu);

// PERGUNTA
draw_text(gw/2, gh * 0.2, perguntas[pergunta_atual]);

// ALTERNATIVAS
draw_text(gw/2, gh * 0.3, "A: " + opA[pergunta_atual]);
draw_text(gw/2, gh * 0.4, "B: " + opB[pergunta_atual]);
draw_text(gw/2, gh * 0.5, "C: " + opC[pergunta_atual]);
draw_text(gw/2, gh * 0.6, "D: " + opD[pergunta_atual]);

// INFO (parte de baixo)
draw_text(gw/2, gh * 0.7, "Tentativas: " + string(tentativas));
draw_text(gw/2, gh *0.8, "Pontos: " + string(quiz_pontos));

// reset (boa prática)
draw_set_color(c_white);