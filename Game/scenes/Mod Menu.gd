extends Control

var repo_url = ""
var target_dir = ""
	
@onready var alert_line = $MarginContainer/VBoxContainer/Label

func clone_repo():
	
	var http_request = $HTTPRequest
	http_request.connect("request_completed", Callable(self, "_on_request_completed"))
	var error = http_request.request(repo_url)
	if error != OK:
		print("Error making HTTP request: ", error)
	
func _on_request_completed(request, response_code, headers, body):
	if response_code == 200:
		var response = JSON.parse(body.get_string_from_utf8())
		if response.error == OK:
			var content = response.result["content"]
			var decoded_content = decode_base64(content)
			
			var dir = Directory.new()
			if not dir.dir_exists(target_dir):
				dir.make_dir_recursive(target_dir)
			



func read_cloned_files(file_path):
	pass

func check_repo_exists(url: String):
	pass
	
	
func _on_line_edit_text_submitted(new_text):
	if(check_repo_exists(new_text)):
		pass
		return
	
	alert_line.show()

func _on_exit_button_pressed():
	get_tree().change_scene_to_file("res://scenes/Menu.tscn")
