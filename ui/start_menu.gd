extends Node2D

@export var world: Node2D
@export var world_parent: Node2D

@export var sprite: Node2D
@export var a: Node2D
@export var sandwich: Node2D
@export var adventure: Node2D
@export var button: Control

@export var audio: AudioStreamPlayer2D

@export var chomp: AudioStreamPlayer2D
@export var bigchomp: AudioStreamPlayer2D


signal start

func _ready():
	visible = true
	
	var tw = create_tween()
	tw.tween_interval(1.0)
	tw.tween_callback(func():
		audio.play())
	tw.tween_callback(func():
		_spawn_letter(a, 0.13)
		_spawn_letter(sandwich, 0.54)
		_spawn_letter(adventure, 1.2)
		_spawn_letter(button, 2.2)
		)
	tw.tween_interval(2.0)

func _spawn_letter(letter, delay):
	letter.visible = true
	letter.scale.y = 0.0
	var tw = create_tween()
	tw.tween_interval(delay)
	tw.tween_callback(func():
		letter.scale.y = 1.2)
	tw.tween_interval(0.1)
	tw.tween_callback(func():
		letter.scale.y = 0.8)
	tw.tween_interval(0.1)
	tw.tween_callback(func():
		letter.scale.y = 1.1)
	tw.tween_interval(0.1)
	tw.tween_callback(func():
		letter.scale.y = 1)

func start_game():
	bigchomp.play()
	
	button.visible = false
	
	var tw = create_tween()
	tw.tween_interval(0.1)
	tw.tween_callback(func():
		sprite.scale.y = 0.8)
	tw.tween_interval(0.1)
	tw.tween_callback(func():
		sprite.scale.y = 0.6)
	tw.tween_interval(0.1)
	tw.tween_callback(func():
		sprite.scale.y = 0.3)
	tw.tween_interval(0.1)
	tw.tween_callback(func():
		sprite.scale.y = 0
		sprite.visible = false)
	
	tw.tween_interval(0.4)
	tw.tween_callback(func():
		a.scale.y = 0
		chomp.play()
		)
	tw.tween_interval(0.4)
	tw.tween_callback(func():
		sandwich.scale.y = 0
		chomp.play()
		)
	tw.tween_interval(0.4)
	tw.tween_callback(func():
		adventure.scale.y = 0
		chomp.play()
		)
	
	tw.tween_interval(1.0)
	tw.tween_callback(func():
		world_parent.add_child(world)
		queue_free()
		)

func _input(event: InputEvent) -> void:
	if event is InputEventKey:
		if event.keycode == KEY_E:
			world_parent.add_child(world)
			queue_free()
