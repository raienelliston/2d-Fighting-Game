extends Control

var repo_url = ""
var target_dir = ""

func clone_repo():
	pass
	
func read_cloned_files(file_path):
	pass

func check_repo_exists(url):
	pass
	
	

func _on_exit_button_pressed():
	get_tree().change_scene_to_file("res://scenes/Menu.tscn")

func _on_line_edit_text_submitted(new_text):
	pass # Replace with function body.
