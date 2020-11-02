extends RigidBody2D

export var thrust = 22
var thrust_vector = Vector2()

func _ready():
	add_to_group("moon")
	set_process(true)
	$Orbit.set_as_toplevel(true)
	linear_velocity = Vector2(0, 150)
	
func _draw():
	draw_line(Vector2(0,0), thrust_vector * thrust, Color(255, 0, 0), 1)
	
func _process(delta):
	$Orbit.add_point(global_position)
	if ($Orbit.get_point_count() > 2048):
		$Orbit.remove_point(0)
	update()
	
func _integrate_forces(state):
	var gravity_vector = state.total_gravity.normalized()
	#print(normalized_gravity)
	thrust_vector = gravity_vector.tangent()
	#print(tangent)
	applied_force = thrust_vector * thrust * mass
	#print(applied_force)
