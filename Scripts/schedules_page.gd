extends Control

@export var pageTemplate : Node

func _ready():
	pageTemplate.setTitle("Schedules")
	pageTemplate.setBGOffset(0)
	pageTemplate.setAddText("Add Schedule")
