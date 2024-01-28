extends Node2D

var arrow_scene = preload("res://tscn/arrows/Arrow.tscn")
var colors = [Color.GREEN, Color.RED, Color.BLUE, Color.YELLOW]
var arrowRotation = [90, 0, -180, -90]
#var noteJumpDistance = 2.15 # Approximately

func _ready():
	# Connect the timer timeout signal to the spawn_arrow function
	var timer = get_node("Timer")
	timer.timeout.connect(_on_timer_timeout)
	# Start the timer with your desired interval
	var beats_per_minute = 135
	timer.wait_time = 120.0 / beats_per_minute # Seconds per beat
	timer.start()

func _on_timer_timeout():
	spawn_arrow()

func spawn_arrow():
	# Create a new arrow instance
	var arrow_instance = arrow_scene.instantiate()
	# Set arrow properties (color, rotation, position)
	set_arrow_properties(arrow_instance)
	# Add the arrow as a child of the spawner
	add_child(arrow_instance)

func set_arrow_properties(arrow):
	var arrow_index = randi() % 4
	
	# Choose a random color from the colors array
	var arrow_color = colors[arrow_index]
	arrow.modulate = arrow_color

	# Choose a random angle
	arrow.rotation_degrees = arrowRotation[arrow_index]

	# Set the spawn location based on the provided coordinates
	var screenSizeX = get_viewport().size.x
	arrow.position.x = screenSizeX * (0.2 + arrow_index * 0.2)
	arrow.position.y = 0
