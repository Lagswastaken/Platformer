extends Node2D


func _ready():
	$AnimationPlayer.play("ButtonUp")
	$AnimationPlayer.play("DoorClosed")
	
var dooropen = false

func _on_Area2D_body_entered(body):
	if body.is_in_group("Player"):
		if dooropen == false:
			$AnimationPlayer.play("ButtonDown")
			$AnimationPlayer.play("DoorOpen")
			dooropen = true
