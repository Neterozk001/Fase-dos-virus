window_set_size(1280, 720);
is_dragging = false;
offset_x = 0;
offset_y = 0;

parent_block = noone; // Meu pai direto
child_list = [];      // Lista de todos os meus descendentes (em ordem)
child_block = noone; // Meu filho direto (o próximo na corrente)
block_state = 0; // Status do bloco, 0 - Normal, 1 - Erro, 2 - Sucesso

// Esta função percorre a corrente e monta o array com os IDs
update_my_children_list = function() {
    child_list = []; // Limpa a lista atual
    var current = child_block;
    
    while (instance_exists(current)) {
        array_push(child_list, current); // Adiciona o filho na lista
        current = current.child_block;   // Pula para o próximo da corrente
    }
    
    return child_list;
}