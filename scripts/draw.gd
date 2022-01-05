extends Node2D

var dragging := false
var drag_start := Vector2.ZERO
var drag_end = Vector2.ZERO

func ubdate_var(start, end, drag):
	#print(start, ", ", end)
	drag_start = start
	drag_end = end
	dragging = drag

func _draw():
	draw_rect(Rect2(drag_start, drag_end - drag_start), Color(0, 0, 0), false)
		
func _process(delta):
	update()
