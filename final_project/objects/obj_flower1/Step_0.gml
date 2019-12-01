if timer > 0
{
	timer -= 1;
}
else
{
	createPotionParticles(x,y,10);
	timer = 10;
	
}
