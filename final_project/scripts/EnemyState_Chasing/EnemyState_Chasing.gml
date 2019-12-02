vSpeed += grav;
hSpeed = 0;
player = obj_player
player_invincible = player.invincibility_timer != 0;

if(place_meeting(x+hSpeed,y,player) && !player_invincible){
	player.player_damage_taken = base_damage;
	player.state = PLAYERSTATE.TOOK_DAMAGE;
	player.hit_direction = image_xscale;
}

if(state != ENEMYSTATE.DEAD && collision_rectangle(x-150,y,x+150,y-100,obj_player,false,true)){
    state = ENEMYSTATE.CHASING;
}
else if(state != ENEMYSTATE.DEAD){
    state = ENEMYSTATE.FREE;    
}

if(player.x < x){
    hSpeed = -3;  
	image_xscale = -1;
}
else {
    hSpeed = 3   
	image_xscale = 1;
}

if (place_meeting(x+hSpeed,y,oWall))
{
    var onePixel = sign(hSpeed);
    while (!place_meeting(x+onePixel,y,oWall)) x += onePixel;
    hSpeed = 0;
}

if (place_meeting(x,y+vSpeed,oWall))
{
    var onePixel = sign(vSpeed);
    while (!place_meeting(x,y+onePixel,oWall)) y += onePixel;
    vSpeed = 0;
    grounded = true;
}
else
{
    grounded = false;
}

if(!place_meeting(x+hSpeed,y,obj_invisible)){
    x+=hSpeed;
}

y += vSpeed; 