extends TileMap

@export var player: Player

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if player:
		if player.position.x > position.x + 20 * 14 * 2:
			print(position)
			queue_free()
