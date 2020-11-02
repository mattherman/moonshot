extends Area2D

var vis_color = Color(.867, .91, .247, 0.1)

func _draw():
	var shape = $GravityWellCollision.shape
	draw_circle(Vector2(), shape.radius, vis_color)
