extends CharacterBody2D

var speed = 350  # Adjust the speed of the arrow
var time = 0
func _process(delta):
	position.y += speed * delta

	# Remove the arrow when it goes off the screen
	if position.y > get_viewport_rect().size.y + 100:
		queue_free()
		
	#time += delta
		#
	#if position.y > 644 and position.y < 648:
		#print(time)
