extends Area2D

var vis_color = Color(.867, .91, .247, 0.1)

func _draw():
	var shape = $GravityWellCollision.shape
	draw_circle(Vector2(), shape.radius, vis_color)

func _on_GravityWell_body_entered(body):
	if (!body.is_in_group("planet")):
		print(str("Body entered gravity well: ", body.get_name()))

func _on_GravityWell_body_exited(body):
	if (!body.is_in_group("planet")):
		print(str("Body exited gravity well: ", body.get_name()))
