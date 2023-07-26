extends CharacterBody2D

@export var maxSpeed = 30

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
	
func _physics_process(_delta):

	
	if Input.is_action_just_pressed("ui_2nd_right"):
		velocity.x += maxSpeed
	velocity = velocity.rotated(rotation)
	move_and_slide()
	
	
	var race_begun = false
	var lights_time = 3.0
	var passed_start_line = false
	#Create a collison detector that detects if the collision shape of
	#the car passes the area 2d which is the start line
	#Use body entered or area entered


	#Create a variable that checks whether the game has begun
	#or not
	
	#Check timing on how long it takes for the light to go green
	# from when the game is started
	#Create a variable called time_taken to check this
	
	
	#Create if statement that checks if time is X seconds
	# race_begun = true
	
	#Check for a jump start by checking if the collison of car
	#has collided
	



#func _on_area_2d_area_entered(area):

