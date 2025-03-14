extends Control

@export var pageTemplate : Node

func _ready():
	pageTemplate.setTitle("Groups")
	pageTemplate.setBGOffset(2)
	pageTemplate.setAddText("Create Group")
