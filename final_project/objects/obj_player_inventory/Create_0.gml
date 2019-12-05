globalvar hasKey, hasBook,hasShovel, slot_count, gold, hasJar;
hasKey = false;
hasBook = false;
hasShovel = false;
gold = 0;
hasJar = false;

inv_size_x = 400; //always divisible by 100
inv_size_y = 600; //always divisible by 100
num_cols = inv_size_x / 100;
num_rows = inv_size_y / 100;
col = inv_size_x / num_cols
row = inv_size_y / num_rows
slot = [];
slots = ds_list_create();
used_slots = ds_list_create();
slot_x = 0;
slot_y = 0;
slot_count = 0;
row_count = 1;
col_count = 1;

for(i = 1;i <= num_cols; i+=1)
{
	slot_x = inv_size_x * i/num_cols
	for (j = 1; j <= num_rows; j+=1)
	{
		slot_y = inv_size_y * j/num_rows;
		slot = [slot_x,slot_y];
		ds_list_add(slots,slot);
	}
}