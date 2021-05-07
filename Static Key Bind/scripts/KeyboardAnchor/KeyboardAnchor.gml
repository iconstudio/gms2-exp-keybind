/// @function KeyboardAnchor(keys)
function KeyboardAnchor(keys) constructor {
	my_keys = is_array(keys) ? keys : [keys]
	size = array_length(my_keys)


	/// @function check()
	static check = function() {
		for (var i = 0; i < size; ++i) {
			if keyboard_check(my_keys[i])
				return true
		}
		return false
	}


	/// @function check_pressed()
	static check_pressed = function() {
		for (var i = 0; i < size; ++i) {
			if keyboard_check_pressed(my_keys[i])
				return true
		}
		return false
	}


	/// @function check_released()
	static check_released = function() {
		for (var i = 0; i < size; ++i) {
			if keyboard_check_released(my_keys[i])
				return true
		}
		return false
	}
}