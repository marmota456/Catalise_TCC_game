var dir_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var dir_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));

// Evita que o jogador fique mais rápido andando na diagonal
if (dir_x != 0 || dir_y != 0) {
    var comprimento = point_distance(0, 0, dir_x, dir_y);
    
    dir_x /= comprimento;
    dir_y /= comprimento;
}

// Movimento
x += dir_x * velocidade;
y += dir_y * velocidade;