/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1C84FCB9
/// @DnDArgument : "var" "deck_add"
deck_add = 0;

/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 72E01E7E
/// @DnDArgument : "var" "deck"
deck = ds_list_create();

/// @DnDAction : YoYo Games.Data Structures.List_Count
/// @DnDVersion : 1
/// @DnDHash : 00F3E2FE
/// @DnDArgument : "assignee" "temp_deck_size"
/// @DnDArgument : "assignee_temp" "1"
/// @DnDArgument : "var" "deck"
var temp_deck_size = ds_list_size(deck);

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
	/// @DnDArgument : "var" "deck"
	/// @DnDArgument : "value" "deck_add"
	ds_list_add(deck, deck_add);

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 1BEDB63C
	/// @DnDParent : 60569A76
	/// @DnDArgument : "msg" "temp_deck_size"
	show_debug_message(string(temp_deck_size));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 264903F0
	/// @DnDParent : 60569A76
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "deck_add"
	deck_add += 1;

	/// @DnDAction : YoYo Games.Data Structures.List_Count
	/// @DnDVersion : 1
	/// @DnDHash : 2939FE4B
	/// @DnDParent : 60569A76
	/// @DnDArgument : "assignee" "temp_deck_size"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "deck"
	var temp_deck_size = ds_list_size(deck);
}