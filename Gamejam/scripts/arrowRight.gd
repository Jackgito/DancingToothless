extends Node2D

var sprite : AnimatedSprite2D

func _ready():
	sprite = $AnimatedSprite2D

func _process(delta):

	if Input.is_action_pressed("ui_right"):
		sprite.set_frame(1)
		sprite.play("pressKey")
	else:
		sprite.set_frame(0)
