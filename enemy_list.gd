extends VBoxContainer


@export var enemy_party : partyResource
@export var member_template : PackedScene

func _ready():
	for i in enemy_party.party:
		var instance = member_template.instantiate()
		add_child(instance)
	
