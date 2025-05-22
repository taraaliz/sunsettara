extends Resource

class_name charaResource

@export_range(0, 99, 1) var vitality : float
@export_range(0, 99, 1) var strength : float
@export_range(0, 99, 1) var magic : float
@export_range(0, 99, 1) var speed : float
@export_range(0, 99, 1) var defense : float

@export var primaryBloodType : primaryBloodTypeEnum
@export var secondaryBloodType : secondaryBloodTypeEnum
@export var bloodPosNeg : bool
enum primaryBloodTypeEnum {
	O, A, B, C, D
}

enum secondaryBloodTypeEnum {
	A, B, C, D,
}
