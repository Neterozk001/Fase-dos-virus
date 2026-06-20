if (global.acertou == true) {
    tempo--;
    if (tempo <= 0) {
        room_goto(Room1)
		window_set_size(1280, 720)
		surface_resize(application_surface, 1280, 720);
    }
}