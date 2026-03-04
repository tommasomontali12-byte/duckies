extends Control


func _ready() -> void:
	$Scene1.show()
	$Scene2.hide()
	$AnimationPlayer.play("duckBounce")

func _on_scene_1_duration_timeout() -> void:
	$Scene1.hide()
	$Scene2.show()

func _on_splash_screen_duration_timeout() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
