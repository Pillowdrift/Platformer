tool
extends CanvasLayer

export var next_scene: PackedScene

func _input(_event: InputEvent) -> void:
  if Input.is_action_pressed("ui_select"):
    get_tree().change_scene_to(next_scene)

func _get_configuration_warning() -> String:
  return "The next scene property can't be empty" if not next_scene else ""
