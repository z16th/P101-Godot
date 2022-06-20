extends Resource
class_name FPokemonResource

export(Texture) var sprite:Texture
export var catch_difficulty:int = 10
export var name:String

func save(path):
	ResourceSaver.save(path,self)
