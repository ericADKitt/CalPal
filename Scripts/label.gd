extends Control

@export var LabelTitle : Node;

func changeTitle(title : String):
	LabelTitle.text = title;
