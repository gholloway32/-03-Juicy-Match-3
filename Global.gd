extends Node

var camera = null

var score = 0
var time = 60
signal changed
var scores = {
	0:0,
	1:0,
	2:0,
	3:10,
	4:20,
	5:50,
	6:100,
	7:200,
	8:300,
	9:1000
}

func _ready():
	randomize()	

func reset():
	score = 0
	time = 60
func _unhandled_input(event):
	if event.is_action_pressed("menu"):
		get_tree().quit()

func change_score(s):
	score += s
	emit_signal("changed")
	if score == 200:
		var scene = get_tree().change_scene("res://UI/Endgame.tscn")
func update_time(t):
	time += t
	emit_signal("changed")
	if time <= 0:
		var scene = get_tree().change_scene("res://UI/LosingScrene.tscn")
