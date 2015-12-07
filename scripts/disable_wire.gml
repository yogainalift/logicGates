///disable_wire(map wire)
wire = argument0;
var count = 0;
for(i=ds_map_find_first(wire); 
    count<ds_map_size(wire);
    i=ds_map_find_next(wire,i)) {
        i.enabled = false;
        count += 1;
}
