extends CanvasLayer

func _ready():
	get_tree().paused = true
	%Restart.pressed.connect(on_restart_pressed)
	%Quit.pressed.connect(on_quit_pressed)


func on_restart_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/main/main.tscn")


func set_defeat():
	%TitleLabel.text = "Defeat"
	%DescriptionLabel.text = "You lost!"


func on_quit_pressed():
	get_tree().quit()
