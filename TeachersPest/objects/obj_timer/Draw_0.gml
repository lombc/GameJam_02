draw_set_font(font_mode_button);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var t = "";
t += string(t_min);
t += ":";
if (t_sec > 9)
{
	t += "" + string(t_sec);
}
if (t_sec < 10)
{
	t += "0" + string(t_sec);
}

t += "." + string(t_mil);


draw_text(5, 5, t);

//draw_text(32, 32, "FPS = " + string(fps_real));