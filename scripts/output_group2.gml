///output_group(map, obj_ID)
wire = argument0;
if !ds_map_exists(wire, argument1){
    ds_map_add(wire, argument1, obj_wire);
}
return wire;
