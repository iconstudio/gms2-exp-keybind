var check_horizontal = (global.io_right - global.io_left)
var check_vertical = (global.io_down - global.io_up)
var dtime = delta_time * 0.000001


if check_horizontal != 0 {
	image_angle -= dtime * rotation_speed * check_horizontal
	direction = image_angle
}


if check_vertical != 0 {
	speed = -dtime * move_speed * check_vertical
} else {
	speed = 0
}

