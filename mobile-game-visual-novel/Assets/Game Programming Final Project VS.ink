Chapter One: First Day
-> one

=== one ===
Ding ding ding! Ding ding ding!
("What's that sound???")
DINGGG!!!
"Ugh...what's that sound?"
* You reached out to grab the source of the sound.
    -> grab
* You reach out.
    -> crash
    
=== grab ===    
It was your alarm clock.
"MMmm.....5 more minutes please"
    -> late

=== crash ===
CRASHHHHH.                                        
You open your eyes to see your beloved mug in shatters along the wooden floor.
"Oh, just wonderful." 
    -> late

=== late ===
15 minutes later...                            
You jump up with a panic look on your face."
"Oh nooooo!!"
You grab your phone to check the time.

9:25.
"I'm going to be late for my first day of classes..."
You run to the bathroom to wash up.

15 minutes later...                                 
You're running down the road to your first college class ever.
You are a first year Game Design student attending Fall University.
Luckily, you were living on campus. Otherwise, attending your first college class would have been a pipe dream.
Since you are already late to class, should you take the scenic route?
* Take the scenic route.
    -> scenic
* Take the regular route. 
    -> non_scenic

=== scenic ===
"I'm already going to be late, why not enjoy the walk to class while I'm at it?" 
You turned your head to look at the falling leaves. 
CRASH.
You fall onto your butt. 
"Hey! You should watch where you're going!"
You look up and see a hot, buff dude standing in front of you. //Thanks Jennifer
"Hey, are you okay?" he asks. 
He reaches out his hand and helps you stand up. 
+ "Yeah, I'm okay."
    -> scenic_neutral
+ "You should have watched where you were going."
    -> scenic_bad
+ "Sorry, I should have been more careful."
    -> scenic_good

=== non_scenic ===
("I have no time for this.")
    -> class_0
    
=== scenic_good ===
"No, no. It was my fault," he says. 
He extends his hand, "My name is James. I'm a first-year Architectural major." 
You take his hand. 
"Hi James, I'm Player and I'm a first-year Game Design major."
You look at the time. 
9:48. 
"Oh, no! I should really get to class. Nice meeting you!" 
You bid your farewells and start sprinting again to class. 
    -> class_0
    
=== scenic_neutral ===
"That's good. I'm glad you're okay. I have to leave for a meeting now. See ya," he excuses himself and walks away.
    -> class_0
    
=== scenic_bad ===
"Sorry, sorry. I should have paid more attention," he places his hand together and apologizes.
"But you were also not quite pay attention," he points out. 
Feeling bad, you apologize and you both head on your merry way. 
    -> class_0 

=== class_0 ===
You arrived at the entrance to your class.
("Maybe no one will notice if I quietly sneak in.")
You slowly push the door open. It CREAKS open.
("Well so much for that...")
Hundreds of eyes turn to stare at you as you walk through the door. 
You start feeling your ears turn red. 
("Should have expected this for a lecture hall...")
You look around for an empty seat to sit down. There is one seat near the back but it is kinda hard to see the front. There is also a seat further to the front in the middle of the aisle. 
Which seat should you choose?
+ You choose the seat near the back.
    -> class_0_back
+ You choose the seat near the front. 
    -> class_0_front

=== class_0_back ===
You walk to the seat and sit down. 
You take out your notebook and pen, ready to take notes to make up for missing the first 25 minutes of class. 
You listen to your Professor talk about ball dropping from cliffs but you could not see too well. 
    -> ending

=== class_0_front ===
You quickly walk down the stairs until you're near the front of the room and squeeze through people until you get to the empty seat and sit down. 

-> ending

=== ending

-> END







