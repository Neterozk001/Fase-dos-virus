var resposta = "";

if (keyboard_check_pressed(ord("A"))) resposta = "A";
if (keyboard_check_pressed(ord("B"))) resposta = "B";
if (keyboard_check_pressed(ord("C"))) resposta = "C";
if (keyboard_check_pressed(ord("D"))) resposta = "D";

if (resposta != "")
{
    if (resposta == correta[pergunta_atual])
    {
        quiz_pontos += 10;

        var msg = instance_create_depth(
            display_get_gui_width()/2,
            150,
            0,
            Obj_mensagem
        );
        msg.texto = "PARABÉNS!";

        // próxima pergunta
        pegar_pergunta_nova();
    }
    else
    {
        quiz_pontos -= 2;
        tentativas -= 1;

        if (tentativas > 0)
        {
            var msg = instance_create_depth(
                display_get_gui_width()/2,
                150,
                0,
                Obj_mensagem
            );
            msg.texto = "VOCÊ TEM MAIS UMA TENTATIVA!";
        }
        else
        {
            var msg = instance_create_depth(
                display_get_gui_width()/2,
                150,
                0,
                Obj_mensagem
            );
            msg.texto = "GAME OVER";

            room_goto(Menu);
        }
    }
}

if(quiz_pontos >= 30)
{
    if(global.fase == 1)
    {
        global.fase = 2;
        room_goto(Room1);
    }
    else
    {
        room_goto(Room1_1);
    }
}
function pegar_pergunta_nova()
{
    var i;
    
    for(i = 0; i < total; i++)
    {
        if(!usadas[i])
        {
            pergunta_atual = i;
            usadas[i] = true;
            return;
        }
    }

    // se acabou perguntas
    show_debug_message("Fim do quiz");
}