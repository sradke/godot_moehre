extends Node2D

func _ready() -> void:
	var spell := GameState.get_spell()
	$UI/Spell.text = "Zausberspruch: " + spell + "!"
	$UI/Thanks.text = "Yippi, die Möhre ist befreit!"
	$UI/BackButton.pressed.connect(_on_back)

func _on_back() -> void:
	get_tree().change_scene_to_file("res://scenes/Main.tscn")
