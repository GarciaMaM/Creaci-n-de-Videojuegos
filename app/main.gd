extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.start("innit_v2_timeline")
	Dialogic.signal_event.connect(_on_dialogic_signal)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_dialogic_signal(argument: String):
	if argument == "begin_story":
		Dialogic.start("infance_timeline")
	if argument == "show_room_bg":
		$ParallaxBackground/ParallaxLayer/room_bg.visible = true
		$ParallaxBackground/black_bg.visible = false
	if argument == "hide_room_bg":
		$ParallaxBackground/ParallaxLayer/room_bg.visible = false
		$ParallaxBackground/black_bg.visible = true
		
		
		
