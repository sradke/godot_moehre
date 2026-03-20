extends Node2D

func _ready() -> void:
	$UI/SubmitButton.pressed.connect(_on_submit)
	$UI/LineEdit.text_submitted.connect(_on_submit_text)

func _on_submit_text(text: String) -> void:
	_check(text)

func _on_submit() -> void:
	_check($UI/LineEdit.text)

func _check(text: String) -> void:
	var n := text.strip_edges().to_lower()
	if n == "hasium":
		GameState.part2 = "Hasium"
		get_tree().change_scene_to_file("res://scenes/Final.tscn")
	else:
		$UI/Feedback.text = "Fast! Tipp: \n" + \
			"a= 1  b= 2  c= 3  d= 4  e= 5  f= 6  g= 7\n" + \
			"h= 8  i= 9  j=10  k=11  l=12  m=13  n=14\n" + \
			"o=15  p=16  q=17  r=18  s=19  t=20  u=21\n" +\
			"v=22  w=23  x=24  y=25  z=26"
