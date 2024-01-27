extends AnimatedSprite2D

const tolerance = 1

var sprite: AnimatedSprite2D
var detectionArea

func _ready():
	detectionArea = $OkArea
	sprite = self
	print(detectionArea)

func _process(delta):
	if Input.is_action_pressed("ui_left"):
		sprite.set_frame(1)
		sprite.play("pressKey")
		#handle_keys()
	else:
		sprite.set_frame(0)

func _input(event):
	var okDot = $Perfect/Ok.global_position
	var goodDot = $Perfect/Good.global_position
	var perfectDot = $Perfect.global_position
	var flippedOkDot = $Perfect/FlippedOk.global_position
	var flippedGoodDot = $Perfect/FlippedGood.global_position
	
	var closestLeft: GlobalSingleton = GlobalSingleton.getClosestArrow(GlobalSingleton.ArrowDirection.left)
	print()



#func handle_keys() -> void:
	#for obj in detectionArea.get_overlapping_bodies():
		#print("DELETE")
		##obj.queue_free()
