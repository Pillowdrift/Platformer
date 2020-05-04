tool
extends CanvasLayer

export var first_scene: PackedScene

onready var background: ParallaxBackground = get_node("ForestBackground")

func _input(_event: InputEvent) -> void:
  if Input.is_action_pressed("ui_select"):
    get_tree().change_scene_to(first_scene)
  elif Input.is_action_pressed("ui_cancel"):
    get_tree().quit()

func _process(delta: float) -> void:
  background.scroll_offset += Vector2(delta * 50.0, 0)
  return

func _get_configuration_warning() -> String:
  return "The first scene property can't be empty" if not first_scene else ""
