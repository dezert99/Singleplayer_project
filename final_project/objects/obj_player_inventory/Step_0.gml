for(i = col_count;i < num_cols; i+=1)
{
	slot_x = i * row;
	for (j = 0; j < num_rows; j+=1)
	{
		slot_y = i * row;
		slot = [slot_x,slot_y];
	}
}
if slot_count == num_cols - 1
{
	col_count = 0;
}
else
{
	col_count = slot_count;
}