extends Node2D

var DisplayValue = 0

var savepath = "res://save-file.cfg"
var config = ConfigFile.new()
var load_response = config.load(savepath)

func _ready():
	pass 

func saveValue(section, key):
	config.set_value(section, key, DisplayValue)
	config.save(savepath)
	
func loadValue(section, key):
	DisplayValue = config.get_value(section, key, DisplayValue)
	
