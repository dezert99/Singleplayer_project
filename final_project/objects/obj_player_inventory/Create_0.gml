globalvar hasKey, hasBook, slot_count;
hasKey = false;
hasBook = false;
inv_size_x = 400; //always divisible by 100
inv_size_y = 600; //always divisible by 100
num_cols = inv_size_x / 100;
num_rows = inv_size_y / 100;
col = inv_size_x / num_rows
row = inv_size_y / num_cols
slot = [];
slot_x = 0;
slot_y = 0;
slot_count = 0;
row_count = 0;
col_count = 0;