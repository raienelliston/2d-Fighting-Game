extends TextEdit

func _ready():
	connect("text_changed", Callable(self, "_on_text_changed"))
	
func _on_text_changed():
	var current_text = text
	print("Text changed: ", current_text)
