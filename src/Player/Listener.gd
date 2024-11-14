extends Node2D

signal valid
signal invalid

var listening:bool:
	set(v):
		if v:
			DServer.num_pressed.connect(on_num_pressed)
		else:
			if DServer.num_pressed.is_connected(on_num_pressed):
				DServer.num_pressed.disconnect(on_num_pressed)
		listening = v
	get:
		return listening

#@export_flags("7","8","9","4","5","6","1","2","3") var next = 0\
@export var next:BitMap
# Called when the node enters the scene tree for the first time.
func _ready():
	var bitmap = BitMap.new()
	bitmap.create(Vector2(3,3))
	var result = ResourceSaver.save(bitmap,"res://src/Level/new_bit_map.tres",0)
	print(error_string(result))
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func on_num_pressed():
	pass
