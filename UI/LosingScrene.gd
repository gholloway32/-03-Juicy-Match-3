extends Control


func _ready():
	$Label.text = "Whoops out of time score was " + str(Global.score)


func _on_Play_pressed():
	Global.reset()
	var _target = get_tree().change_scene("res://Game.tscn")


func _on_Quit_pressed():
	get_tree().quit()
