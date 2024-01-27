# Arrow.gd (script attached to the Arrow node)

extends Area2D

var speed = 300  # Adjust the speed of the arrow

func _process(delta):
	position.y += speed * delta

	# Remove the arrow when it goes off the screen
	if position.y > get_viewport_rect().size.y + 100:
		queue_free()
		
func _on_Arrow_body_entered(body: Area2D) -> void:
	
		print("DELETE")
		queue_free()
