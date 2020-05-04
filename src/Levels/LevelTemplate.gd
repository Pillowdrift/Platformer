extends Node2D

# Support esc to exit for easy development
func _input(_event: InputEvent) -> void:
  if Input.is_action_pressed("ui_cancel"):
    get_tree().quit()
