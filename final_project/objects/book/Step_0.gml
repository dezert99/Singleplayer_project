if (collision_rectangle(x-128,y,x+128,y-128,obj_player,false,false) && keyboard_check_pressed(ord("E")))
{
	hasBook = true;
}
if hasBook 
{
	instance_destroy(instance_nearest(x,y,torch_light));
	slot_count += 1;
	instance_destroy();
}
