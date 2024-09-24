event_inherited();



if(instance_exists(obj_student_idle))
{
	instance_destroy(obj_student_idle);
	
	var inst = instance_create_layer(672, 224, "Student", obj_student_bird);
	with(inst)
	{
		image_xscale = 0.6;
		image_yscale = 0.6;
	}
	global.scoring += 1;
}
else if(instance_exists(obj_student_eat))
{
	instance_destroy(obj_student_eat);
	
	var inst = instance_create_layer(672, 224, "Student", obj_student_bird);
	with(inst)
	{
		image_xscale = 0.6;
		image_yscale = 0.6;
	}
	global.scoring += 1;
}
else if(instance_exists(obj_student_bird))
{
	global.scoring += 1;
}