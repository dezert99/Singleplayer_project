_x = argument0
_y = argument1
_num_part = argument2

for (i = 0; i < _num_part;i+=1)
{
	instance_create_depth(_x,_y, -1, obj_leaf);
}
