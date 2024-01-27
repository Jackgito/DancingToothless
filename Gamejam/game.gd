extends Node2D

func _ready():
	var screenSizeX = get_viewport().size.x
	var screenSizeY = get_viewport().size.y

	var arrowLeft = $ArrowLeft
	var arrowRight = $ArrowRight
	var arrowUp = $ArrowUp
	var arrowDown = $ArrowDown
	
	# Set the coordinates of the arrow
	set_arrow_coordinates(Vector2(screenSizeX * 0.2, screenSizeY * 0.92), arrowLeft)
	set_arrow_coordinates(Vector2(screenSizeX * 0.4, screenSizeY * 0.92), arrowDown)
	set_arrow_coordinates(Vector2(screenSizeX * 0.6, screenSizeY * 0.92), arrowUp)
	set_arrow_coordinates(Vector2(screenSizeX * 0.8, screenSizeY * 0.92), arrowRight)

func set_arrow_coordinates(new_position: Vector2, arrow):
	arrow.position = new_position
