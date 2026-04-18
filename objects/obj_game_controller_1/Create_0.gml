fase_check = [obj_block_start, obj_block_print_hello, obj_block_print_bye];

// Variáveis de inicialização
var largura_alvo = 1280;
var altura_alvo = 720;
window_set_size(largura_alvo, altura_alvo);	

display_set_gui_size(largura_alvo, altura_alvo);
alarm = 1;
vitoria = false;
tempo_vitoria = 0;

function compile_code(){
	var start = instance_find(obj_block_start, 0)
	var player_try = [start.object_index];
	var children_list = start.update_my_children_list();
	start.block_state = 0;
	for(var i = 0; i<array_length(children_list); i++){
		children_list[i].block_state = 0;
		array_push(player_try, children_list[i].object_index);
	}
	
	if(array_length(player_try) != array_length(fase_check)){
		for(var k = 0; k < array_length(children_list); k++){
			children_list[k].block_state = 1; // Ativa o estado de erro
		}
		show_debug_message("Erro: Quantidade de blocos errada")
		return false;
	}
	var error = 0;
	for(var j = 0; j<array_length(fase_check); j++){
		if (player_try[j] != fase_check[j]){
			if(j > 0){
				children_list[j-1].block_state = 1;
			}
			show_debug_message("Erro: Bloco na posição "+ string(j) + " está incorreto");
			error = 1;
		}else{
			if(j>0){
				player_try[j].block_state = 2;
			}
		}
	}
	
	if(error == 1){
		return false
	}
	
	show_debug_message("SUCESSO! O código foi executado corretamente!");
	return true;
}