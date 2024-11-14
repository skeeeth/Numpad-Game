extends Node
class_name Direction

signal num_pressed(num:int)

func _input(event):
	if event.is_action_pressed("num_one"):
		num_pressed.emit(1)
	if event.is_action_pressed("num_two"):
		num_pressed.emit(2)
	if event.is_action_pressed("num_three"):
		num_pressed.emit(3)
	if event.is_action_pressed("num_four"):
		num_pressed.emit(4)
	if event.is_action_pressed("num_five"):
		num_pressed.emit(5)
	if event.is_action_pressed("num_six"):
		num_pressed.emit(6)
	if event.is_action_pressed("num_seven"):
		num_pressed.emit(7)
	if event.is_action_pressed("num_eight"):
		num_pressed.emit(8)
	if event.is_action_pressed("num_nine"):
		num_pressed.emit(9)

static func num_to_dir(num:int)-> Vector2:
	var dir = Vector2(0,0)
	match num:
		1: dir = Vector2(-1,+1)
		2: dir = Vector2(+0,+1)
		3: dir = Vector2(+1,+1)
		4: dir = Vector2(-1,+0)
		5: dir = Vector2(+0,+0)
		6: dir = Vector2(+1,+0)
		7: dir = Vector2(-1,-1)
		8: dir = Vector2(+0,-1)
		9: dir = Vector2(+1,-1)
	return dir.normalized()
