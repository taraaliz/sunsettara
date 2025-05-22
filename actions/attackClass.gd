extends skillResource

class_name attackResource

@export var attackPower : float

@export var affinity : affinityTypes
@export var general : generalTypes
@export var target : attackTargetEnum

enum generalTypes {
	physical, elemental, celestial
}
enum affinityTypes {
	blade, blunt, blast,
	fire, water, earth, air,
	moon, sun
}
enum attackTargetEnum {
	single, all, targettable
}

 
#func getDamageDealt():
	#var DamageDealt = attackPower * sqrt(strength) / sqrt(defense)
	#return DamageDealt
