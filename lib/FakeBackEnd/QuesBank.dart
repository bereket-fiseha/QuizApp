import 'package:quiz_world/models/Ques.dart';

class QuesBank{

static final List<Ques> list =[
  new Ques(1,"Inertia is a vector quantity. It has both magnitude and direction.","false",4),
  new Ques(2,"An object at rest has no inertia..","false",2),
  new Ques(2,"If an object is accelerating, a net force must be acting upon it.","true",3),
  new Ques(2,"In an object is not moving, no forces are acting upon it.","false",4),
  new Ques(2,"In air, a baseball and a tennis ball would have the same terminal velocity.","false",4),
  new Ques(2,"Friction is a force that opposes motion.","true",4),
];

static List<Ques> returnQues(){
return list;

}

}