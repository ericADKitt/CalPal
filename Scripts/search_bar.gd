extends Control

@export var placeholder : Node;
@export var editableText : Node;

func _on_line_edit_editing_toggled(toggled_on: bool) -> void:
	if toggled_on or editableText.text != "":
		placeholder.visible = false
	else:
		placeholder.visible = true
