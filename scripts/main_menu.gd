extends Control

# Preload turns the string path into a Texture resource
@onready var italian_logo = preload("res://assets/logos/logoItalian.png")
@onready var english_logo = preload("res://assets/logos/logoEnglish.png")

#===MAIN=MENU=SCRIPT==================
func _ready():
	# Assign the preloaded resource, not the string path
	if Global.language == "it":
		$logo.texture = italian_logo
		$playButton.text = "Gioca"
		$optionsButton.text = "Opzioni"
	else:
		# Defaulting to English covers "en" and any fallback cases
		$logo.texture = english_logo
		$playButton.text = "Play"
		$optionsButton.text = "Options"
		
	var version_info = Engine.get_version_info()
	$gdVersion.text = "GODOT VERSION: " + version_info.string
	
	# Ensure the AnimationPlayer exists before playing
	if has_node("AnimationPlayer"):
		$AnimationPlayer.play("duck")
