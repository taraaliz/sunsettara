extends Button

@export var character : charaResource
var skill_button_name : skillResource
var skillnumber : int = 0

func getSkillInfo():
	skill_button_name = character.skillsList[skillnumber]
	$%SkillButton.text = "fuck"
	#set_text(character.skillsList[skillnumber].action_name)
	return skill_button_name
