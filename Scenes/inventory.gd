extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	Globals.connect("sm_lev_change", _update_inv_text);
	Globals.connect("om_lev_change", _update_inv_text);
	Globals.connect("lg_lev_change", _update_inv_text);
	Globals.connect("sam_lev_change", _update_inv_text);
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	_update_inv_text()

func _update_inv_text():
	if Globals.SM == 1:
		$HBoxContainer/ItemSlot.text = "Cigarette"
	if Globals.OM == 2:
		$HBoxContainer/ItemSlot.text = "Doll"
	if Globals.LG == 2:
		$HBoxContainer/ItemSlot.text = "Candy"
	if Globals.SAM == 2:
		$HBoxContainer/ItemSlot.text = "Charm"
