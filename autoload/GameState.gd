extends Node

var part1: String = ""
var part2: String = ""

static func normalize_answer(s: String) -> String:
	var t := s.strip_edges().to_lower()
	t = t.replace("ö", "oe").replace("ä", "ae").replace("ü", "ue").replace("ß", "ss")
	return t

func get_spell() -> String:
	var p := part1.strip_edges()
	var q := part2.strip_edges()
	if p == "":
		return q
	if q == "":
		return p
	return p + " " + q
