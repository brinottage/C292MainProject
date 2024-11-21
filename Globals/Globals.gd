extends Node

# SPEAKING
signal speak_change
var SPEAKING: bool = false:
	set(value):
		SPEAKING = value;
		emit_signal("speak_change");
	get:
		return SPEAKING;

# SHADY GUY
signal sm_lev_change
var SM: int = 0:
	set(value):
		SM = value;
		emit_signal("sm_lev_change");
	get:
		return SM;

# OLD MAN
signal om_lev_change
var OM: int = 0:
	set(value):
		OM = value;
		emit_signal("om_lev_change");
	get:
		return OM;

# LITTLE GIRL
signal lg_lev_change
var LG: int = 0:
	set(value):
		LG = value;
		emit_signal("lg_lev_change");
	get:
		return LG;

# SAD MAN
signal sam_lev_change
var SAM: int = 0:
	set(value):
		SAM = value;
		emit_signal("sam_lev_change");
	get:
		return SAM;

# ITEMS
signal cig_change
var CIG: bool = false:
	set(value):
		CIG = value;
		emit_signal("cig_change");
	get:
		return CIG;

signal doll_change
var DOLL: bool = false:
	set(value):
		DOLL = value;
		emit_signal("doll_change");
	get:
		return DOLL;

signal candy_change
var CANDY: bool = false:
	set(value):
		CANDY = value;
		emit_signal("doll_change");
	get:
		return CANDY;

signal charm_change
var CHARM: bool = false:
	set(value):
		CHARM = value;
		emit_signal("charm_change");
	get:
		return CHARM;
