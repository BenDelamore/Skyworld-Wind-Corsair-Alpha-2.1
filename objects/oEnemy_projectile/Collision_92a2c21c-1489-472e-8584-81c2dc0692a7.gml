/// @description Insert description here

oPlayer.hp -= 5
oCameraTarget.shake = 3
	
audio_play_sound(sfx_crash_1,100,false)

instance_destroy();
	
