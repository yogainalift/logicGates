///fill lists

var inst = argument0;

var wire = ds_map_create();
var quit = false;

while(true){
    with (inst){
        var inst2 = instance_place(x,y,obj_wire);
        if (instance_exists(inst2)){
            show_debug_message(ds_map_find_first(wire));
            while (inst2.enabled){
                instance_deactivate_object(inst2);
                inst2 =  instance_place(x,y,obj_wire);
            }
            
            if !ds_map_exists(wire, inst2){//show_debug_message("PUT");
                ds_map_add(wire, inst2, false); 
            }
            instance_deactivate_object(inst);
            inst = inst2;
        }
        else{
            instance_deactivate_object(inst);
            instance_activate_all();
            return (wire);
            ds_map_destroy(wire);
        }
    }
}
