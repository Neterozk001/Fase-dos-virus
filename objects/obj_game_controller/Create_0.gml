fase_check = [obj_block_start, obj_block_print, obj_block_print];

function compile_code(){
	var start = instance_find(obj_block_start, 0)
	var player_try = [start.object_index];
	var children_list = start.update_my_children_list();
	for(var i = 0; i<array_length(children_list); i++){
		array_push(player_try, children_list[i].object_index);
	}
	
	if(array_length(player_try) != array_length(fase_check)){
		show_debug_message("Erro: Quantidade de blocos incompleta")
		return false;
	}
	
	for(var j = 0; j<array_length(fase_check); j++){
		if (player_try[j] != fase_check[j]){
			show_debug_message("Erro: Bloco na posição "+ string[j]+ "está incorreto");
			return false;
		}
	}
	
	show_debug_message("SUCESSO! O código foi executado corretamente!");
	return true;
}