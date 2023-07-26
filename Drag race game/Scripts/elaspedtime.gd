extends Label

var elasped_time := 0.0
var start_delay_timer := Timer.new()
var label_visible = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	elasped_time += delta
	var seconds = int(elasped_time)
	var milliseconds = int((elasped_time - seconds) * 1000)
	
	var formatted_time = "%02d:%03d" % [seconds, milliseconds]
	
	text = formatted_time
 

func _on_timer_timeout():
	
	label_visible = true
	
