event_inherited();

if(instance_exists(obj_student_bird))
{
	instance_destroy(obj_student_bird);
	
	var inst = instance_create_layer(864, 352, "Student", obj_student_idle);
	with(inst)
	{
		image_xscale = 0.6;
		image_yscale = 0.6;
	}
}
else if(instance_exists(obj_student_eat))
{
	instance_destroy(obj_student_eat);
	
	var inst = instance_create_layer(864, 352, "Student", obj_student_idle);
	with(inst)
	{
		image_xscale = 0.6;
		image_yscale = 0.6;
	}
}
else if(instance_exists(obj_student_idle))
{	
}