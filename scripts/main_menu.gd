extends Control

#===MAIN=MENU=SCRIPT==================
func _ready():
	var version_info = Engine.get_version_info()
	$gdVersion.text = "GODOT VERSION: " + version_info.string
	$AnimationPlayer.play("duck")
	
	
