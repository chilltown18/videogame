extends CharacterBody2D

@export var follow_speed: float = 190.0
@export var reaction_lag_sec: float = 0.08
@export var target_ball_path: NodePath

var _ball: Node2D
var _reaction_timer: float = 0.0
var _desired_y: float = 0.0

func _ready() -> void:
	if target_ball_path != NodePath():
		_ball = get_node_or_null(target_ball_path)

func _physics_process(delta: float) -> void:
	if _ball == null:
		velocity = Vector2.ZERO
		move_and_slide()
		return

	_reaction_timer -= delta
	if _reaction_timer <= 0.0:
		_desired_y = _ball.global_position.y
		_reaction_timer = reaction_lag_sec

	var dy := _desired_y - global_position.y
	velocity = Vector2(0.0, clamp(dy, -1.0, 1.0) * follow_speed)
	move_and_slide()

func choose_shot_type() -> String:
	var r := randf()
	if r < 0.55:
		return "flat"
	elif r < 0.8:
		return "topspin"
	elif r < 0.95:
		return "slice"
	return "lob"
