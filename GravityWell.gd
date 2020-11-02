extends Area2D

var vis_color = Color(.867, .91, .247, 0.1)

func init(radius, gravity):
	$CollisionShape2D.shape.radius = radius
	gravity = gravity
	return self

func _draw():
	var shape = $CollisionShape2D.shape
	draw_circle(Vector2(), shape.radius, vis_color)
