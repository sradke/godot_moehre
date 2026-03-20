extends Node2D

func _ready() -> void:
    var btn := $UI/StartButton
    if btn:
        btn.pressed.connect(_on_start)

func _on_start() -> void:
    get_tree().change_scene_to_file("res://scenes/Intro.tscn")
