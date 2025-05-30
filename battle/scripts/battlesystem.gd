extends Node
class_name BattleSystemResource

@export var playerArray : partyResource
@export var enemyArray : partyResource
@export var arrayPos : int

@export var playerTurn : bool = true

var currentDealer: charaResource
@export var targetCharacter: charaResource

@export var turn : int

func playerTurnOrNot():
	if playerArray.Party > turn:
		playerTurn = false


func getCurrentDealer():
	var currentDealer = playerArray.party[turn]
	return currentDealer

func _ready():
	playerTurn = true
	if playerTurn == true:
		currentDealer = playerArray.party[0]
	print(currentDealer.charaName)



func getSkillOutcome(selectedSkill : skillResource):
	if selectedSkill == attackResource:
		var damagedealt = (selectedSkill.attackPower * sqrt(currentDealer.strength)) / sqrt(targetCharacter.Defense)
		return damagedealt
