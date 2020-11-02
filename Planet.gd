extends Area2D

onready var GravityWell = preload("res://GravityWell.tscn")

func _ready():
	var planetRadius = $CollisionShape2D.shape.radius
	var gravityWell = GravityWell.instance().init(planetRadius * 3, 98)
	add_child(gravityWell)
