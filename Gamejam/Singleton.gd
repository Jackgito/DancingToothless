extends Node

class_name GlobalSingleton

static var instance: GlobalSingleton

static var leftArrows = []
static var downArrows = []
static var upArrows = []
static var rightArrows = []

static var leftArrowSpawnPosition
static var downArrowSpawnPosition
static var upArrowSpawnPosition
static var rightArrowSpawnPosition

static var screenSizeX

func _ready():
	GlobalSingleton.screenSizeX = get_viewport().size.x
	leftArrowSpawnPosition = Vector2(screenSizeX * (0.2 + 0 * 0.2), 0)
	downArrowSpawnPosition = Vector2(screenSizeX * (0.2 + 1 * 0.2), 0)
	upArrowSpawnPosition = Vector2(screenSizeX * (0.2 + 2 * 0.2), 0)
	rightArrowSpawnPosition = Vector2(screenSizeX * (0.2 + 3 * 0.2), 0)
	#GlobalSingleton.instance = self
	pass

enum ArrowDirection {left, down, up, right}

static func getClosestArrow(arrowDirection: ArrowDirection):
	if arrowDirection == GlobalSingleton.ArrowDirection.left and GlobalSingleton.leftArrows.size() > 0:
		var closestArrow = GlobalSingleton.leftArrows[0]
		
		for arrow in GlobalSingleton.leftArrows:
			var closestDistance = closestArrow.global_position.distance_squared_to(GlobalSingleton.leftArrowSpawnPosition)
			var currentDistance = arrow.distance_squared_to(GlobalSingleton.leftArrowSpawnPosition)
			if currentDistance < closestDistance:
				closestArrow = arrow
		return closestArrow

	if arrowDirection == GlobalSingleton.ArrowDirection.right and GlobalSingleton.rightArrows.size() > 0:
		var closestArrow = GlobalSingleton.rightArrows[0]
		
		for arrow in GlobalSingleton.rightArrows:
			var closestDistance = closestArrow.global_position.distance_squared_to(GlobalSingleton.rightArrowSpawnPosition)
			var currentDistance = arrow.distance_squared_to(GlobalSingleton.rightArrowSpawnPosition)
			if currentDistance < closestDistance:
				closestArrow = arrow
		return closestArrow
		
	if arrowDirection == GlobalSingleton.ArrowDirection.up and GlobalSingleton.upArrows.size() > 0:
		var closestArrow = GlobalSingleton.upArrows[0]
		
		for arrow in GlobalSingleton.upArrows:
			var closestDistance = closestArrow.global_position.distance_squared_to(GlobalSingleton.upArrowSpawnPosition)
			var currentDistance = arrow.distance_squared_to(GlobalSingleton.upArrowSpawnPosition)
			if currentDistance < closestDistance:
				closestArrow = arrow
		return closestArrow
		
	if arrowDirection == GlobalSingleton.ArrowDirection.down and GlobalSingleton.downArrows.size() > 0:
		var closestArrow = GlobalSingleton.downArrows[0]
		
		for arrow in GlobalSingleton.downArrows:
			var closestDistance = closestArrow.global_position.distance_squared_to(GlobalSingleton.downArrowSpawnPosition)
			var currentDistance = arrow.distance_squared_to(GlobalSingleton.downArrowSpawnPosition)
			if currentDistance < closestDistance:
				closestArrow = arrow
		return closestArrow
		
		print("Something went wrong :c")
		
static func storeArrow(arrowDirection: ArrowDirection, arrow):
	if arrowDirection == GlobalSingleton.ArrowDirection.left: GlobalSingleton.leftArrows.append(arrow)
	if arrowDirection == GlobalSingleton.ArrowDirection.right: GlobalSingleton.rightArrows.append(arrow)
	if arrowDirection == GlobalSingleton.ArrowDirection.up: GlobalSingleton.upArrows.append(arrow)
	if arrowDirection == GlobalSingleton.ArrowDirection.down: GlobalSingleton.downArrows.append(arrow)
		

