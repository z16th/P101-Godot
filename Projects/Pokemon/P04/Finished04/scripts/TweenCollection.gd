extends Tween

func animation_tween():
	var sprite:Sprite = get_parent()
	interpolate_property(sprite,"scale",sprite.scale,Vector2(-3,3),1)
	start()
	yield(self,"tween_completed")
	interpolate_property(sprite,"scale",sprite.scale,Vector2(3,3),1,Tween.TRANS_ELASTIC,Tween.EASE_IN)
	start()

func text_tween():
	var label = get_parent()
	interpolate_property(label,"percent_visible",0,1,1)
	start()

func progress_tween(final):
	var progress_bar:ProgressBar = get_parent()
	interpolate_property(progress_bar,"value",progress_bar.value,final,0.3)
	start()
