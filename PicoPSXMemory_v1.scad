union(){
  scale([0.2,0.2,0.2]) mirror([1,0,0])difference(){
    hull(){
      translate([0,5*5,0])cube([42*5,71*5,7.5*5]);
      translate([2*5,0,0]) cube([38*5,75*5,7.5*5]);
    }
    translate([7*5,-1,2*5]) cube([(42-14)*5,80*5,7.5*5]);
    scale([5,5,5]) translate([42/2,(75-(51/2)),1]) translate([-21/2,-51/2,0]) cube([21,51,2]);
    
    translate([15,5,0]){
      translate([31,0,0]) pins();
      translate([43,0,0]) pins();
  
      translate([49,-10,5]) cube([8,60,10]);
  
      //translate([69,0,0]) pins(); //Not used by the memorycard
      translate([83,0,0]) pins();
      translate([95,0,0]) pins();
  
      translate([101,-10,5]) cube([8,60,10]);
  
      translate([122,0,0]) pins();
      translate([134,0,0]) pins();
      translate([146,0,0]) pins();
      
      translate([152,-10,5]) cube([8,60,10]);
    }
  }
  translate([-42/2,75-(51/2),0]) pico();
}

//The contacts made from cat 5 singel strand wire
module pins(){ 
  cylinder(h=15,d=5,$fn=24);
  translate([0,40,0]) cylinder(h=15,d=5,$fn=24);
  translate([0,70,0]) cylinder(h=15,d=5,$fn=24);
  translate([0,90,0]) cylinder(h=15,d=5,$fn=24);

  translate([0,45,0]) cube([5,90,10],center=true);
}

//Raspberry Pi Pico holder
module pico(){
  $fn=45;
  hull(){
    translate([ 11.4/2, 47/2,0]) cylinder(h=2,d=2);
    translate([-11.4/2, 47/2,0]) cylinder(h=2,d=2);
    translate([ 11.4/2,-47/2,0]) cylinder(h=2,d=2);
    translate([-11.4/2,-47/2,0]) cylinder(h=2,d=2);
  }
  translate([-13.4/2,-51/2,0]) cube([13.4,51,2]);
  
  translate([ 11.4/2, 47/2,0]) cylinder(h=5,d=1.8);
  translate([-11.4/2, 47/2,0]) cylinder(h=5,d=1.8);
  translate([ 11.4/2,-47/2,0]) cylinder(h=5,d=1.8);
  translate([-11.4/2,-47/2,0]) cylinder(h=5,d=1.8);
}
