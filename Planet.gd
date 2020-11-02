extends RigidBody2D

func _ready():
	var planetRadius = $SurfaceCollision.shape.radius
	$GravityWell/GravityWellCollision.shape.radius = planetRadius * 3
