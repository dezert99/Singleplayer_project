hSpeed = 0;
player = obj_player
if(state != ENEMYSTATE.DEAD && collision_rectangle(x-150,y,x+150,y-100,obj_player,false,true)){
    state = ENEMYSTATE.CHASING;
}
else if(state != ENEMYSTATE.DEAD){
    state = ENEMYSTATE.FREE;    
}

if(player.x < x){
    hSpeed = -3;    
}
else {
    hSpeed = 3    
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
y+=vSpeed; 