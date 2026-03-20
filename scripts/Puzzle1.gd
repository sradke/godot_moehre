extends Node2D

const VALID := ["moehrindo"]
var count = 0;

func _ready() -> void:
	$UI/SubmitButton.pressed.connect(_on_submit)
	$UI/LineEdit.text_submitted.connect(_on_submit_text)

func _on_submit_text(text: String) -> void:
	_check(text)

func _on_submit() -> void:
	_check($UI/LineEdit.text)

func _check(text: String) -> void:
	var n := GameState.normalize_answer(text)
	if n in VALID:
		GameState.part1 = "Möhrindo"
		get_tree().change_scene_to_file("res://scenes/Puzzle2.tscn")
	else:
		count=count+1
		match count:
			1:
				$UI/Feedback.text = "Nicht ganz. Benutze deine Fata..."
			2:
				$UI/Feedback.text += "\nTipp 1: Orange Wurzel -> Möhre. Davon brauchen wir 'Möhr'"
			3:
				$UI/Feedback.text += "\nTipp 2: Aaach... das Gegenteil von 'out'... 'in'"
			4:
				$UI/Feedback.text += "\nTipp 3: Döner gibt es doch meistens am Donnerstag -> also 'do'"	
			5:
				$UI/Feedback.text += "\nTipp 5:  Möhr + in + do -> zusammensetzen ohne Lücke"	
		
