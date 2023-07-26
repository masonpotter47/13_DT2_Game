extends CharacterBody2D

@onready var _animated_sprite = $AnimatedSprite2D

func _ready():
	_animated_sprite.play("lights")

func _process(_delta):
#	if Input.is_action_pressed("ui_accept"):
#		_animated_sprite.play("lights")
#	else:
#		_animated_sprite.stop()
	pass
