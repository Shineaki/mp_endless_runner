extends Node2D

const map_floor = preload("res://Scenes/Map.tscn")
@onready var player: Player = $Player
var current_segment = 0
var map_segments = []

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if player.position.x > current_segment * 40 * 14:
		print("Creating new map")
		var map_segment = map_floor.instantiate()
		map_segment.player = player
		map_segment.position = Vector2(current_segment * 40 * 14 + 40 * 14, 0)
		current_segment += 1
		add_sibling(map_segment)
