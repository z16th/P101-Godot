extends Tween

func animated_position():
	var sprite:Sprite = get_parent()
	interpolate_property(sprite, "position", Vector2(0,sprite.position.y), Vector2(500,sprite.position.y), 2, Tween.TRANS_BOUNCE, Tween.EASE_OUT)
	start()
	
func progress_tween(initial,final):
	var progress_bar:ProgressBar = get_parent()
	interpolate_property(progress_bar, "value", initial, final,0.2)
	start()

func catch_animation():
	var catch:Label = get_parent()
	interpolate_property(catch, "percent_visible", 0,1,1)
	start()
