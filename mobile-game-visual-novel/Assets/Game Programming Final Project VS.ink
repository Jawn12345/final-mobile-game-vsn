VAR playerName = "Jack"

Chapter One: First Day
-> one

=== one ===
Ding ding ding! Ding ding ding!
("What's that sound???")
DINGGG!!!
"Ugh...what's that sound?"
+ You reached out to grab the source of the sound.
    -> grab
+ [You reach out.]
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

+ Take the scenic route.
    -> scenic
+ Take the regular route. 
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
"Hi James, I'm {playerName} and I'm a first-year Game Design major."
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
"But you were also not quite paying attention," he points out. 
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
You listen to your Professor talk about balls dropping from cliffs but you could not see too well. 
    -> class_0_ending

=== class_0_front ===
You quickly walk down the stairs until you're near the front of the room and squeeze through people until you get to the empty seat and sit down. 
You take out the notebook and pen, ready to take notes to make up for missing the first 25 minutes of class. 
Your Professor is performing a live demonstration of the effects of gravity on a ball and a crumpled piece of paper. 
//play students talking sound, signalling end of class
"That is all for today! Class is dismissed," your Professor says as everyone starts packing and leaving. 
As you're getting up and ready to leave, someone taps you on your shoulder. 
You turn around to see a beautiful girl with glasses staring at you. 
"Hey, I noticed that you were late today," she says. 
* "Yeah...that was kinda embarrassing."
    -> class_0_front_good
* { grab }
    "Yeah. I accidentally overslept."
    "Oh...that's pretty bold of you," she chuckles. 
    -> class_0_front_neutral
* { crash }
    "I accidentally broke my beloved mug this morning."
    "Oh...that sucks. Must have been a rough morning," she says nonchalantly. 
    -> class_0_front_neutral
* "Yeah, so what?"
    -> class_0_front_bad

=== class_0_front_good ===
"No worries, it happens. Although it was brave of you to sit in the front despite your...little disturbance," she laughs. 
"Ugh. Don't remind me about it."
"Here," she hands me a notebook. 
"These are the notes that you missed this morning. Just return it to me by next class," she says. 
    -> class_0_ending

=== class_0_front_neutral ===
"But here, take a picture of my notes," she says as she hands me her notebook.
You took a picture of her notes and handed the notebook back to her. 
"Thanks."
She nods and walks off. 
    -> class_0_ending
    
=== class_0_front_bad ===
"I was going to offer you my notes...but it doesn't seem like you will be needing them anymore," she sighs and leaves. 
    -> class_0_ending

=== class_0_ending === 
("I still have some time before my next class. I wonder if I should head back to my dorm or to the library.")

* "I'll head to library then."
    -> library_0
* "I'll head back to my dorm then."
    -> dorm_0

=== library_0 ===
#library
10 minutes later...
You pushed through the doors of the library. 
The school's library has 6 floors including the basement. The lobby and the basement are lounges for students to sit and relax. The 2nd floor has the computer labs, while the 3rd through 5th floors have private and public study spaces. 
("Hm...which floor should I go to?")
    -> lib_fl_options_1

=== lib_fl_options_1 ===
* 2nd floor
    -> library_2fl
* 3rd floor
    -> library_3fl
* 4th floor
    -> library_4fl
* 4th floor
    -> library_4fl
* 5th floor
    -> library_5fl

=== library_2fl ===
You took the elevator to the 2nd floor of the library. The computer labs seems quite empty. You decided to take a seat near the back of the computer lab. 
You check the homework that your Physics Professor had already uploaded and start working on it. 
    -> ending
    
=== library_3fl ===
You took the elevator to the 3rd floor of the library and went into one of the private study rooms. 
As you take out your notebook to start reviewing your notes, you start to hear noises coming from another room. 
"Who's a good boy? Who's the bestest boy?"
That was an interesting phrase...should you go take a look?
* Find out where the sound is coming from. 
    -> library_3fl_opt1
* Continue studying. 
    -> library_3fl_opt2

=== library_4fl ===
You took the elevator to the 4th floor of the library and went into one of the private study rooms.

    -> ending
=== library_5fl ===
You took the elevator to the 5th floor of the library and went into one of the private study rooms. 
    -> ending

=== library_3fl_opt1 ===
You walk around looking at the study rooms around you before you happen upon the source of the commotion.
It was a student talking to his...
stuff monkey...and was petting it? 
You lowkey wished you did not find out (maybe highkey). 
    ->ending
    
=== library_3fl_opt2 ===
{class_0_back} 
    -> library_3fl_opt2_bad
{class_0_front and not class_0_front_bad} 
    -> library_3fl_opt2_good
{class_0_front_bad} 
    -> library_3fl_opt2_neutral

    -> ending

=== library_3fl_opt2_good ===
You start reviewing the Physics notes that you missed during the first part of class. 
    -> ending
    
=== library_3fl_opt2_bad ===
You tried reviewing the your Physics notes but it was not successful. You should have paid more attention in class. 
    -> ending
    
=== library_3fl_opt2_neutral ===

    -> ending
    
=== dorm_0 ===

-> ending

=== ending

-> END









