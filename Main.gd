extends Node2D

func _process(delta):
	$HUD.update_velocity($Ship.linear_velocity.length())
