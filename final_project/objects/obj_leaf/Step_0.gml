x += xspd
y += yspd

yspd += grav_amt

image_angle += rot_spd

image_xscale -= size_decay
image_yscale -= size_decay

if image_xscale < 0
{
	instance_destroy()
}