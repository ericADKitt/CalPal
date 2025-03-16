extends Control

@export var Background : Node
@export var TitleText : Node
@export var AddIcon : Node
@export var LabelList : Node


func setBGOffset(offset : int):
	Background.region_rect.position.x = offset * Background.region_rect.size.x

func setTitle(title):
	TitleText.text = title

func setAddText(addText):
	AddIcon.setText(addText)


func addButtonClicked():
	get_parent().addButtonClicked
