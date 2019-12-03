if timer > 0
{
	timer -= 1;
}
else
{
	createPotionParticles(x+75,y-10,10);
	timer = 10;
	
}
