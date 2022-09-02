extends Node2D


func _ready():
	pass


func _on_Area2D_area_entered(area):
	GameStats.final_time = GameStats.get_time()
	get_tree().change_scene("res://Scenes/EndScreen.tscn")
