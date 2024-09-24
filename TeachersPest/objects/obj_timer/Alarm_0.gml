if (alarm[0] < 6)
{
	alarm[0] = 6;
}

t_mil -= 1;

if t_mil = -1
{
t_mil = 9;
t_sec -= 1;
}

if t_sec = -1
{
t_sec = 59;
t_min -= 1;
}


if(t_sec == 40 && instance_exists(obj_teacher_idle))
{
	instance_destroy(obj_teacher_idle);
	
	var inst = instance_create_layer(192, 352, "Student", obj_teacher_tell);
	with(inst)
	{
		image_xscale = 0.6;
		image_yscale = 0.6;
	}
}
else if(t_sec == 35 && instance_exists(obj_teacher_tell))
{
	instance_destroy(obj_teacher_tell);
	
	var inst = instance_create_layer(192, 352, "Student", obj_teacher_look);
	with(inst)
	{
		image_xscale = 0.6;
		image_yscale = 0.6;
	}	
}	
else if(t_sec == 30 && instance_exists(obj_teacher_look))
{
	instance_destroy(obj_teacher_look);
	
	var inst = instance_create_layer(192, 352, "Student", obj_teacher_idle);
	with(inst)
	{
		image_xscale = 0.6;
		image_yscale = 0.6;
	}
	
	if(instance_exists(obj_student_bird) || instance_exists(obj_student_eat))
	{
		room_goto(rm_gameover);
	}
	
}