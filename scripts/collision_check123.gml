///collision_check(argument[])
var i,numOfColliding=0;
for (i = 0; i < instance_number(argument0); i += 1)
   {
   ID = instance_find(argument0,i);
   if(place_meeting(x,y,ID)){
        if (ID.enabled){
            numOfColliding+=1;
           }
       }
   }
return numOfColliding;
