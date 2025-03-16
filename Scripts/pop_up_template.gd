extends Control

@export var title : Node

@export var boxTopLeft : Vector2
@export var boxBottomRight : Vector2

func setTitle(titleText):
	title.text = titleText

func isInMenuBox(pos : Vector2):
	return (boxTopLeft.x < pos.x and boxTopLeft.y < pos.y and pos.x < boxBottomRight.x and pos.y < boxBottomRight.y)

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if !isInMenuBox(event.global_position):
			get_parent().closePopUp
