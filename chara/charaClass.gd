extends Resource

class_name charaResource

@export var charaName : String

@export_range(0, 99, 1) var level : float
@export_range(0, 99, 1) var vitality : float
@export_range(0, 99, 1) var strength : float
@export_range(0, 99, 1) var magic : float
@export_range(0, 99, 1) var speed : float
@export_range(0, 99, 1) var defense : float
@export var currentHP : float


@export var primaryBloodType : primaryBloodTypeEnum
@export var secondaryBloodType : secondaryBloodTypeEnum
@export var bloodPosNeg : bool
enum primaryBloodTypeEnum {
	O, A, B, C, D
}

enum secondaryBloodTypeEnum {
	B, C, D, nada
}

func getHpValue():
	var hpValue : float = sqrt(vitality) * pow(level, 1.0/3.0)
	return hpValue

@export var skillsList : Array[skillResource]
