/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1C84FCB9
/// @DnDArgument : "var" "deck_add"
deck_add = 0;

/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 72E01E7E
/// @DnDArgument : "var" "global.deck"
global.deck = ds_list_create();

/// @DnDAction : YoYo Games.Data Structures.List_Count
/// @DnDVersion : 1
/// @DnDHash : 00F3E2FE
/// @DnDArgument : "assignee" "temp_deck_size"
/// @DnDArgument : "assignee_temp" "1"
/// @DnDArgument : "var" "global.deck"
var temp_deck_size = ds_list_size(global.deck);

/// @DnDAction : YoYo Games.Loops.While_Loop
/// @DnDVersion : 1
/// @DnDHash : 60569A76
/// @DnDArgument : "var" "temp_deck_size"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "44"
while ((temp_deck_size < 44)) {
	/// @DnDAction : YoYo Games.Data Structures.List_Add
	/// @DnDVersion : 1
	/// @DnDHash : 55B36277
	/// @DnDParent : 60569A76
	/// @DnDArgument : "var" "global.deck"
	/// @DnDArgument : "value" "deck_add"
	ds_list_add(global.deck, deck_add);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 264903F0
	/// @DnDParent : 60569A76
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "deck_add"
	deck_add += 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7ED11F7B
	/// @DnDParent : 60569A76
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "temp_deck_size"
	temp_deck_size += 1;
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 714C7491
/// @DnDArgument : "function" "ds_list_shuffle"
/// @DnDArgument : "arg" "global.deck"
ds_list_shuffle(global.deck);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 2F101025
/// @DnDArgument : "function" "ds_list_shuffle"
/// @DnDArgument : "arg" "global.deck"
ds_list_shuffle(global.deck);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 5D2AB22F
/// @DnDArgument : "function" "ds_list_shuffle"
/// @DnDArgument : "arg" "global.deck"
ds_list_shuffle(global.deck);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4ABD1C3B
/// @DnDArgument : "var" "display_cardpos"
display_cardpos = 0;

/// @DnDAction : YoYo Games.Loops.While_Loop
/// @DnDVersion : 1
/// @DnDHash : 0F108B8E
/// @DnDArgument : "var" "display_cardpos"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "44"
while ((display_cardpos < 44)) {
	/// @DnDAction : YoYo Games.Data Structures.List_Get_At
	/// @DnDVersion : 1
	/// @DnDHash : 0DAD4F77
	/// @DnDParent : 0F108B8E
	/// @DnDArgument : "assignee" "cardpos"
	/// @DnDArgument : "var" "global.deck"
	/// @DnDArgument : "index" "display_cardpos"
	cardpos = ds_list_find_value(global.deck, display_cardpos);

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 5D2939B6
	/// @DnDParent : 0F108B8E
	/// @DnDArgument : "msg" "cardpos"
	show_debug_message(string(cardpos));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2CB5EEF5
	/// @DnDParent : 0F108B8E
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "display_cardpos"
	display_cardpos += 1;
}