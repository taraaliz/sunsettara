extends VBoxContainer

@export var fuck : actionResource

func getSkills():
	
	var skillButton = Button.new()
	skillButton.text = fuck.Name
	add_child(skillButton)
