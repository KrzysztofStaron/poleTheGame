extends Node2D


var screen_size := Vector2()

func _ready():
	screen_size = OS.get_screen_size()
	screen_size /= 2
	OS.set_window_size(screen_size)
	print(screen_size)
