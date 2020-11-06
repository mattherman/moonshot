extends Node2D

export var rotation_speed = 0.5  # rotation speed (in radians)
export var rotation_dir = 1 # 1 for clockwise, -1 for counter-clockwise
export var orbit_scale = 0.5

func _ready():
	var planet = get_parent()
	var orbit_radius = orbit_scale * planet.gravity_well_radius()
	$Body.position = Vector2(orbit_radius, 0)

func _process(delta):
	rotation += rotation_dir * rotation_speed * delta
