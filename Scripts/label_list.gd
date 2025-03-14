extends Control

@export var labelDistance : float = 96.0;

@export var labelScene : PackedScene = preload("res://Scenes/label.tscn");

func addLabel(title : String):
	var newLabel : Node = labelScene.instantiate();
	add_child(newLabel);
	newLabel.changeTitle(title);
	
	arrangeLabels();


func arrangeLabels():
	var labels : Array[Node] = get_children();
	for i in range(len(labels)):
		labels[i].position = Vector2(0, labelDistance * i)
