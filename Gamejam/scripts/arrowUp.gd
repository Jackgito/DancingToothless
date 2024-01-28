extends Area2D

var sprite: AnimatedSprite2D

func _ready():
	sprite = $AnimatedSprite2D

func _process(delta):
	if Input.is_action_pressed("ui_up"):
		sprite.set_frame(1)
		sprite.play("pressKey")
	else:
		sprite.set_frame(0)

	var overlapping_bodies = get_overlapping_bodies()
	if Input.is_action_pressed("ui_up"):
		for body in overlapping_bodies:
			body.queue_free()
			Global.score += 1
