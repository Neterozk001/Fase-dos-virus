function Script2(){
	
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

    show_debug_message("Fim do quiz");
}

}