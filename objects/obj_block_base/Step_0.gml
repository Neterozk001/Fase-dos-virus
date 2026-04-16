// 1. SEGUIR O PAI (Se não estivermos sendo arrastados)
if (!is_dragging && parent_block != noone && instance_exists(parent_block)) {
    var target_x = parent_block.x;
    var target_y = parent_block.y + 17; 
	
	x = lerp(x, target_x, 0.2)
	y = lerp(y, target_y, 0.2)
	
    depth = parent_block.depth + 1;
}

// 2. CLICAR E DESCONECTAR (Quebrar a corrente)
if (mouse_check_button_pressed(mb_left)) {
	if (object_index == obj_block_start) exit;
    var top_block = instance_position(mouse_x, mouse_y, obj_block_base);
    
    if (top_block == id) {
        is_dragging = true;
        
        // Se eu tinha um pai, aviso a ele para me tirar da lista e esquecer o filho
        if (instance_exists(parent_block)) {
            parent_block.child_block = noone;
        }
        
        parent_block = noone;
        offset_x = x - mouse_x;
        offset_y = y - mouse_y;
        depth = -1000;
    }
}

// 3. MOVIMENTAÇÃO E CASCATA
if (is_dragging) {
    x = mouse_x + offset_x;
    y = mouse_y + offset_y;
	block_state = 0;
	var child_list = update_my_children_list()
	for(i = 0; i<array_length(child_list); i++){
		id.block_state = 0;
		child_list[i].block_state = 0;
	}
    
    if (instance_exists(child_block)) {
        child_block.x = x;
        child_block.y = y + 17;
        child_block.depth = depth + 1;
    }
    
    // SOLTAR E CONECTAR
    if (mouse_check_button_released(mb_left)) {
        is_dragging = false;
        depth = 0;
        
		// Preparando a lista de filhos
		child_list = update_my_children_list()
		
		
		var children_count = array_length(child_list)
		
		// Quando eu sou solto, tento conectar com um bloco acima ou abaixo
        var target_p = instance_place(x, y - 16, obj_block_base);
        var target_c = instance_place(x, y + 16, obj_block_base);

        // --- CONEXÃO POR CIMA (Eu grudando em um pai) ---
		// Se um bloco acima existe, não sou eu mesmo e ele não tem filhos: Ele se torna meu pai (Cinema!)
        if (target_p != noone && target_p != id && target_p.child_block == noone) {
            parent_block = target_p;
            parent_block.child_block = id;
        } 
        // --- CONEXÃO POR BAIXO (Eu pescando um filho) ---
		// Se tenho filhos, meu último filho irá tentar pescar, se não tenho, serei eu mesmo
        else{
		
			var last_child = id;
			if(children_count > 0){
				last_child = child_list[children_count - 1]
			}
			
			var target_below = instance_place(last_child.x, last_child.y + 17, obj_block_base);
			
			if (target_below != noone && target_below != id && target_below.parent_block == noone) {
				if (target_below.object_index != obj_block_start) {
		            last_child.child_block = target_below;
					target_below.parent_block = last_child;
			}
            
        }
		}
		
        var lista = update_my_children_list();
        show_debug_message("Blocos conectados: " + string(lista));
    }
}

// 4 - Estado de erro

if (block_state == 1) {
    image_blend = c_red; // Fica vermelho
}else if(block_state == 2){
	image_blend = c_lime; // Fica verde
} else {
    image_blend = c_white; // Fica normal
}