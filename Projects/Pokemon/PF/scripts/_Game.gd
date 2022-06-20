extends Node

func _ready():
	pass

#--------------------------------------------- CURRENT SCENE

signal updated_current_scene

var current_scene setget set_current_scene

func set_current_scene(scene):
	var _scene
	if typeof(scene) == TYPE_STRING:
		_scene = load(scene).instance()
	if _scene is Node:
		current_scene = _scene
		emit_signal("updated_current_scene", current_scene)

#--------------------------------------------- SOUND

const MUTE = -80
const DEFAULT_DB = -12
var master_db setget set_master_db, get_master_db

func set_master_db(value:float):
	master_db = value
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), master_db)

	var settings_resource = SettingsResource.get_user_settings()
	if not settings_resource:
		settings_resource = SettingsResource.new()
	settings_resource.master_db = master_db
	settings_resource.save()

func get_master_db():
	var settings_resource = SettingsResource.get_user_settings()
	if settings_resource and "master_db" in settings_resource:
		return settings_resource.master_db
	return DEFAULT_DB
