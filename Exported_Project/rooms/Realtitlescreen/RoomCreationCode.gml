if(asset_get_index("obj_gmlive") != -1)
	instance_create(0,0,obj_gmlive)

global.finalgame_parry = false
global.showcollisions = true
global.vkcount = false
global.heatmetervisible = true
global.forcehidecontrols = false
global.forceshowcontrols = false
global.hidetiles = false
//gml_pragma("PNGCrush")
scr_checkcrashcount()

if(!variable_instance_exists(obj_player1,"__checkedstartup")){
	scr_startupcommand()
	obj_player1.__checkedstartup = 1
	obj_virtual_controller_manager.alarm[1] = 2
}

global.coop = 0;
global.currentsavefile = 1;
global.mach_color1 = make_colour_rgb(96, 208, 72);
global.mach_color2 = make_colour_rgb(248, 0, 0);
global.afterimage_color1 = make_colour_rgb(255, 0, 0);
global.afterimage_color2 = make_colour_rgb(0, 255, 0);
global.smallnumber_color1 = make_colour_rgb(255, 255, 255);
global.smallnumber_color2 = make_colour_rgb(248, 0, 0);
global.optimize = 0;
global.autotile = 1;
global.font_small = font_add_sprite_ext(spr_smallfont, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!._1234567890:?", 1, -2);
global.smallnumber_fnt = font_add_sprite_ext(spr_smallnumber, "1234567890-", 1, 0);
pal_swap_init_system(shd_pal_swapper);

with (obj_player1)
    state = states.normal;

global.loadeditor = 0;
