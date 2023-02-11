extends AnimatedSprite

var Boom_Sound = null

func _ready():
	play("default")
	Boom_Sound = get_node_or_null("/root/Game/Boom")
	if Boom_Sound != null:
		Boom_Sound.play()


func _on_Explosion_animation_finished():
	queue_free()
