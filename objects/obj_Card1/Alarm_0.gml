/// @DnDAction : YoYo Games.Data Structures.List_Get_At
/// @DnDVersion : 1
/// @DnDHash : 513EC4B9
/// @DnDArgument : "assignee" "deckfirst"
/// @DnDArgument : "assignee_temp" "1"
/// @DnDArgument : "var" "global.deck"
var deckfirst = ds_list_find_value(global.deck, 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2CAAA02F
/// @DnDArgument : "var" "deckfirst"
/// @DnDArgument : "value" "35"
if(deckfirst == 35){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 22393F8C
	/// @DnDParent : 2CAAA02F
	/// @DnDArgument : "spriteind" "_10_of_clubs"
	/// @DnDSaveInfo : "spriteind" "_10_of_clubs"
	sprite_index = _10_of_clubs;
	image_index = 0;}