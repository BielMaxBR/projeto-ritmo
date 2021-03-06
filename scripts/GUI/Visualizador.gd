extends Control

const beat = preload("res://sprites/beat.png")
const empty = preload("res://sprites/empty.png")

func _ready():
	CicleManager.connect("quarta", self, "_hit")
	create_beats(CicleManager.disco)

func _hit(val):
	_beat(val)

func create_beats(tamanho):
	for i in range(0,tamanho):
		var sprite = Sprite.new()
		sprite.texture = empty
		sprite.centered = false
		sprite.position.x = empty.get_size().x * i
		sprite.name = str(i)
		add_child(sprite)
	pass

func _beat(val):
	for i in range(0, CicleManager.disco):
		var sprite = get_node(str(i))
		
		if i == val:
			sprite.texture = beat
		else:
			sprite.texture = empty
	pass
