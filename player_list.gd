extends VBoxContainer



@export var party : partyResource
@export var member_template : PackedScene

func _ready():
	for i in party.party:
		var instance = member_template.instantiate()
		add_child(instance)
	
