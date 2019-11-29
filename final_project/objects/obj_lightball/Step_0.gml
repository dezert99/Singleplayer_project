hSpeed = random_range(0,1.5);
vSpeed = random_range(0,1.5);
if left == 0
{
	x += hSpeed;
}
else
{
	x -= hSpeed;
}
if bottom == 0
{
	y -= vSpeed;
}
else 
{
	y += vSpeed;
}
if x <= LB left = 0;
if x >= RB left = 1;
if y >= BB bottom = 0;
if y <= TB bottom = 1;