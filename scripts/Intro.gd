extends Node2D

func _ready() -> void:
    var btn := $UI/NextButton
    if btn:
        btn.pressed.connect(_on_next)

func _on_next() -> void:
    get_tree().change_scene_to_file("res://scenes/Puzzle1.tscn")
