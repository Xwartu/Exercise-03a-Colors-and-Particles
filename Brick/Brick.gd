extends KinematicBody2D

onready var HUD = get_node("/root/Game/HUD")
var row = 0
var col = 0
var dying = false

func _ready():
	HUD.connect("changed",self,"_on_HUD_changed")
	update_color()

func update_color():
	if HUD.color_blocks:
		pass
	else:
		pass

func emit_particle(pos):
	if HUD.particle_blocks:
		if row == 0:
			$Color.color = Color(224,49,49)
	else:
		$Color.color = Color(1,1,1,1)
	
	
func _on_HUD_changed():
	update_color()


func die():
	dying = true
	$Color.color.a = 0
	collision_layer = 0
	collision_mask = 0
