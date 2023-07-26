extends CharacterBody2D

@export var maxSpeed = 30

# Called when the node enters the scene tree for the first time.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
	
func _physics_process(_delta):

	if Input.is_action_just_pressed("ui_right"):
		velocity.x += maxSpeed
	velocity = velocity.rotated(rotation)
	move_and_slide()
	
var last_posistion
var speed
var ui_label

func _ready():
	last_posistion = position
	ui_label = get_node("SpeedLabel")

func position_detector(delta):
	var current_position = position
	var displacement = current_position - last_posistion
	speed = displacement.length() / delta
	
	last_posistion = current_position
	
	ui_label.text = "Speed: " +str(speed)
