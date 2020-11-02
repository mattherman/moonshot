extends RigidBody2D

func _ready():
	add_to_group("planet")
	var planetRadius = $SurfaceCollision.shape.radius
	$GravityWell/GravityWellCollision.shape.radius = planetRadius * 6
