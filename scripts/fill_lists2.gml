///fill_lists2
//fill lists

var inst = argument0;

var wire = ds_map_create();
var quit = false;

do{
    with (inst){
        var inst2 = instance_place(x,y,obj_wire)
        if instance_exists(inst2){
            if !ds_map_exists(wire, inst2){
                show_debug_message("PUT");
                ds_map_add(wire, inst2, false); 
            }
            
            instance_deactivate_object(inst);
            inst = inst2;
        }
        else{
            if (inst.object_index = obj_input){
                show_debug_message("input");
                quit = true;
            }
            
            else {
                show_debug_message("deact");
                instance_deactivate_object(inst);
                instance_activate_all();
                return (wire);
                ds_map_destroy(wire);
            }
            
                show_debug_message("enable this");
            instance_activate_object(inst);
            
        }
    }
}
until (quit = true)
instance_activate_all();

return(wire);


