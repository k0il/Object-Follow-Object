extends Node

var mouseDrag

func _ready():
	$Actor/Sprite.modulate = Color("f40000")
	pass

func _physics_process(delta):
	if mouseDrag:
		$Actor.set_position(get_viewport().get_mouse_position())
		var mousepos = get_viewport().get_mouse_position()-Vector2(80,80)
		$Tween.interpolate_property($ObjectA,"position",$ObjectA.position,mousepos,1.0,Tween.TRANS_BACK,Tween.EASE_OUT)
		$Tween.start()


func _on_Actor_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			mouseDrag = true
		else :
			mouseDrag = false
	pass # replace with function body


func _on_Actor_body_entered(body):
	$Actor/Sprite.modulate = Color("5eff33")
	pass # replace with function body


func _on_Actor_body_exited(body):
	$Actor/Sprite.modulate = Color("f40000")
	pass # replace with function body
