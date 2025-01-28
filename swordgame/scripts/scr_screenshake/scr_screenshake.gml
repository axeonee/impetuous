/// @function                   scr_screenshake(_time, _magnitude, _fade);
/// @param  {real}  _time       The length of time - in steps - to shake the screen
/// @param  {real}  _magnitude  The amount of screenshake to apply
/// @param  {real}  _fade       How quickly the screenshake effect will fade out
/// @description    Set the screenshake object variables.
function scr_screenshake()
{
	 with (obj_screenshake)
   {
      shake = true;
      shake_time = argument0;
      shake_magnitude = argument1;
      shake_fade = argument2;
   }
}