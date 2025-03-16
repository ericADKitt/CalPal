extends Control

@export var pageTemplate : Node

func _ready():
	pageTemplate.setTitle("Friends")
	pageTemplate.setBGOffset(1)
	pageTemplate.setAddText("Add Friend")

func addButtonClicked():
	pass
