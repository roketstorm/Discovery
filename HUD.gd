extends Control


var player_node = get_node("DemoLevel").get_node("Player")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ButtonUp_toggled(button_pressed):
	if button_pressed:
		pass
