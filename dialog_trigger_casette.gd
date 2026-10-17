extends DialogTrigger


@export var music_manager: Music


func OnDialogStop():
	music_manager.SwitchMusic("rock")
	
	super.OnDialogStop()
