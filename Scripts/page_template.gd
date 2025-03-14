extends Control

@export var Background : Node
@export var TitleText : Node
@export var AddIcon : Node
@export var LabelList : Node


func setBGOffset(offset : int):
	Background.region_rect.x = offset * Background.region_rect.w / 3

func setTitle(title):
	TitleText.text = title

func setAddText(text):
	AddIcon.setText(text)


func addButtonClicked():
	LabelList.addLabel("New Label")
