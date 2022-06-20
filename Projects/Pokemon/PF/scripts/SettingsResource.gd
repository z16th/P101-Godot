extends Resource
class_name SettingsResource

export var master_db:float

func save():
	ResourceSaver.save(get_save_path(),self)

static func get_save_path():
	var DEV_SAVE_PATH = "res://Projects/Pokemon/PF/saved/settings.tres"
	var SAVE_PATH = "user://saved/settings.tres"
	if OS.is_debug_build():
		return DEV_SAVE_PATH
	return SAVE_PATH

static func get_user_settings():
	if ResourceLoader.exists(get_save_path()):
		return ResourceLoader.load(get_save_path())
	return null
