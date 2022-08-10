extends Node


func _ready():
	var path = "C:/Users/User/Documents/Project-01/image.png"
	print("base_dir: ", path.get_base_dir())
	print("basename: ", path.get_basename())
	print("extension: ", path.get_extension())
	print("file: ", path.get_file())
	print("just filename: ", path.get_file().get_basename())
	path.length()
	
	
	print("is_valid_filename: ", path.is_valid_filename())

	print("is_abs_path: ", path.is_abs_path())
	print("is_rel_path: ", path.is_rel_path())
	
	print("simplify_path: ", "../..//Project-01//image.png".simplify_path())
	
