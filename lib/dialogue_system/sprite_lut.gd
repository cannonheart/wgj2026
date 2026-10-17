extends Resource
class_name SpriteLut

@export var sprites: Dictionary[String, Texture2D]

func to_pretty():
	return sprites
