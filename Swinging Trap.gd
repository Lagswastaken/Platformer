extends Node2D


func _ready():
	$AnimationPlayer.play("Swing")


	pass


func _on_Area2D_body_entered(body):
	if body.is_in_group("Player"): 
		print("player dead")
