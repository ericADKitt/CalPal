extends Control

@export var label : Node;
@export var text : String = "Add Something";


func setText(text : String):
	label.text = text

func _on_button_pressed() -> void:
	get_parent().addButtonClicked()
