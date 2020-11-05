extends RigidBody2D

export var orbit_scale = 0.79
export var showOrbit = false
var thrust

# 150 / 30 / 0.55, radius ~= 228.8
# 180 / 36 / 0.79, radius ~= 328.6

func _ready():
	add_to_group("moon")
	set_process(true)
	$Orbit.set_as_toplevel(true)
	var planet = get_parent()
	var planet_gravity_radius = planet.gravity_well_radius()
	linear_velocity = Vector2(0, 180)
	position = Vector2(orbit_scale * planet_gravity_radius, 0)
	thrust = 36

func _process(delta):
	if (showOrbit):
		$Orbit.add_point(global_position)
		if ($Orbit.get_point_count() > 2048):
			$Orbit.remove_point(0)
		update()

func _integrate_forces(state):
	var gravity_vector = state.total_gravity.normalized()
	var thrust_vector = gravity_vector.tangent()
	applied_force = thrust_vector * thrust * mass
	print(str("applied_force.length = ", applied_force.length())) #3011.8000, 3599.9998
	print(str("linear_velocity.length = ", linear_velocity.length())) #149.1875, 179.8015
