extends VBoxContainer

@export var character : charaResource
@export var skill_template : PackedScene
@export var v_box : VBoxContainer

func _ready():
	for skill in character.skillsList:
		var instance = skill_template.instantiate()
		add_child(instance)
		
