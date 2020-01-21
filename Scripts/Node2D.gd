extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	$CanvasLayer.queue_free()
	
	# Add the next level
	var next_level_resource = load("res://Node/Map1.tscn")
	var next_level = next_level_resource.instance()
	self.add_child(next_level)
