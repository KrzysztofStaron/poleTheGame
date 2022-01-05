extends Sprite

var dragging := false
var drag_start := Vector2.ZERO
var drag_end := Vector2.ZERO

func _unhandled_input(event):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if event.pressed:
			dragging = true
			drag_start = event.position
			get_node("/root/Game/draw").ubdate_var(drag_start, event.position, dragging)
		elif dragging:
			dragging = false
			drag_end = event.position
			var size = (drag_end - drag_start) / 2
			position.x = drag_start.x + (drag_end.x - drag_start.x) / 2
			position.y = drag_start.y + (drag_end.y - drag_start.y) / 2
			
			if (abs(size.x) < 2.5):
				size = 	Vector2(2.5, size.y)
			if (abs(size.y) < 2.5):
				size = 	Vector2(size.x, 2.5)
				
			scale = size
	if dragging:
		if event is InputEventMouseMotion:
			get_node("/root/Game/draw").ubdate_var(drag_start, event.position, dragging)

