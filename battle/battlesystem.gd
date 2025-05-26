extends Node
class_name BattleSystemResource

@export var playerArray : partyResource
@export var enemyArray : partyResource
@export var arrayPos : int

@export var playerTurn : bool = true

@export var currentDealer: charaResource
@export var targetCharacter: charaResource



func _ready():
	playerTurn = true
	if playerTurn == true:
		currentDealer = playerArray.party[0]
	print(currentDealer.charaName)
	$%AudioStreamPlayer.play


func getSkillOutcome(selectedSkill : skillResource):
	if selectedSkill == attackResource:
		var damagedealt = (selectedSkill.attackPower * sqrt(currentDealer.strength)) / sqrt(targetCharacter.Defense)
		return damagedealt
