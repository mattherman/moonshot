extends RigidBody2D

func _ready():
	add_to_group("planet")
	$GravityWell/GravityWellCollision.shape.radius = gravity_well_radius()
	
func gravity_well_radius():
	var planetRadius = $SurfaceCollision.shape.radius
	return planetRadius * 6
