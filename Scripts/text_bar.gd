extends Control

@export var searchBarSprite : Node
@export var lineEdit : Node

func setBarColour(barColour : Color):
	searchBarSprite.modulate = barColour

func setPlaceholder(placeholder : String):
	lineEdit.placeholder_text = placeholder
