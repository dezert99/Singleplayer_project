//Start of the attack
if (sprite_index != argument0)
{
	sprite_index = argument0
	image_index = 0;	
	ds_list_clear(hitByAttack);
}

//Uses attack hitbox & checks for hits
mask_index = argument1;
var hitByAttackNow = ds_list_create() // instances hit by attack in this frame
var hits = instance_place_list(x,y,obj_test_enemy,hitByAttackNow,false); // places instances of enemy hit by hitbox in list
if (hits > 0)
{
	for (var i = 0; i < hits; i++)
	{
		//if this instance has not yet been hit by this attack, hit it
		var hitID = hitByAttackNow[| i]
		if (ds_list_find_index(hitByAttack,hitID) == -1)
		{
			ds_list_add(hitByAttack,hitID);
			with (hitID)
			{
				EnemyHit(standard_sword());
			}
		}
	}
}
ds_list_destroy(hitByAttackNow);
mask_index = spr_malek_idle;
