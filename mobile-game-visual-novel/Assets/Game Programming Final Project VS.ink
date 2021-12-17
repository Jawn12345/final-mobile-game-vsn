VAR playerName = "Jack"

Chapter One: First Day
-> one

=== one ===
#black
#theme1
Ding ding ding! Ding ding ding!
("What's that sound???")
DINGGG!!!
"Ugh...what's that sound?"
+ You reached out to grab the source of the sound.
    -> grab
+ You reach out.
    -> crash
    
=== grab ===    
It was your alarm clock.
"MMmm.....5 more minutes please"
    -> late

=== crash ===
CRASHHHHH.    
#dorm
You open your eyes to see your beloved mug in shatters along the wooden floor.
"Oh, just wonderful." 
    -> late

=== late ===
#black
15 minutes later... 
#dorm
You jump up with a panic look on your face."
"Oh nooooo!!"
You grab your phone to check the time.

9:25.
"I'm going to be late for my first day of classes..."
You run to the bathroom to wash up.

#black
15 minutes later...  
#park
You're running down the road to your first college class ever.
You are a first year Game Design student attending Fall University.
Luckily, you were living on campus. Otherwise, attending your first college class would have been a pipe dream.
Since you are already late to class, should you take the scenic route?

+ [Take the scenic route.]
    -> scenic
+ [Take the regular route.]
    -> non_scenic

=== scenic ===
#scenic
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
#black
You arrived at the entrance to your class.
("Maybe no one will notice if I quietly sneak in.")
You slowly push the door open. It CREAKS open.
("Well so much for that...")
#lecture
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
An hour later. 
//play students talking sound, signalling end of class
"That is all for today! Class is dismissed," your Professor says as everyone starts packing and leaving. 
As you're getting up and ready to leave, someone taps you on your shoulder. 
You turn around to see a beautiful girl with glasses staring at you. 
"Hey, I noticed that you were late today," she says. 
* "Yeah...that was kinda embarrassing."
    -> class_0_front_good
* { grab }
    "Yeah. I accidentally overslept."
    "Oh...that's pretty bold of you," she snickers. 
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

* "I'll head to the library then."
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
* [2nd floor]
    -> library_2fl
* [3rd floor]
    -> library_3fl
* [4th floor]
    -> library_4fl
* [4th floor]
    -> library_4fl
* [5th floor]
    -> library_5fl

=== library_2fl ===
You took the elevator to the 2nd floor of the library. The computer labs seems quite empty. You decided to take a seat near the back of the computer lab. 
You check the homework that your Physics Professor had already uploaded and start working on it. 
    -> head_to_class_1
    
=== library_3fl ===
You took the elevator to the 3rd floor of the library and went into one of the private study rooms. 
As you take out your notebook to start reviewing your notes, you start to hear noises coming from another room. 
"Who's a good boy? Who's the bestest boy?"
That was an interesting phrase...should you go take a look?
* [Find out where the sound is coming from.]
    -> library_3fl_opt1
* [Continue studying.]
    -> library_3fl_opt2

    = library_3fl_opt1 
    You walk around looking at the study rooms around you before you happen upon the source of the commotion.
    It was a student talking to his...
    stuff monkey...and was petting it? 
    You lowkey wished you did not find out (maybe highkey). 
    You head back to your study room but lack the motivation to start studying. 
    You end up pulling out your phone and start browsing social media to rid the earlier image from your mind. 
        ->head_to_class_1
        
    = library_3fl_opt2 
    * {class_0_back}
        -> if_class_0_bad
    * {class_0_front and not class_0_front_bad} 
        -> if_class_0_good
    * {class_0_front_bad} 
        -> if_class_0_neutral
        
        = if_class_0_good 
        You start reviewing the Physics notes that you missed during the first part of class. 
        The notes that the girl provided were really clean and helpful. 
        You can't help but wonder what her name was...
        You slap yourself with both hands. 
        "ALRIGHT, LET'S ACE THIS CLASS!"
        "SHUT UP!" someone screamed from another room. 
        Embarrassed, you go back to reviewing your notes. 
        -> head_to_class_1
        = if_class_0_bad
        You tried reviewing your Physics notes but it was not successful. You should have paid more attention in class. 
            -> head_to_class_1
        = if_class_0_neutral
        You review the notes that you took during the second half of class. It was decently successful, despite not having any notes for the first half of class.
        -> head_to_class_1


=== library_4fl ===
You took the elevator to the 4th floor of the library and start looking for an available study room. 
* {scenic_good}
    -> library_james
* {not scenic_good}
    -> library_no_space
    
    = library_no_space
    You walked around for a few minutes, unable to find one.
    You decided to head to another floor to look for space. 
    You actually spent all of your time looking around for an available space that by the time you finally found one, it was time to head to your next class. 
    -> class_1
    
    = library_james
    You walked around for a few minutes, unable to find one. Dejected, you start heading towards the elevator when...
    "Hey {playerName}!" Someone called out.
    You turn around to find James standing behind you with a laptop tuck under his beefy arms. 
    "Are you looking for a room," he asks. 
    "Yeah, I am."
    "My project meeting just ended with my team and they just left the room we reserved."
    "Would you like to share a room with me?" He asks as he raises one of his hands and places them behind his head. 
    * "Yes, definitely."
        -> library_james_yes
    * "You're so HOT!"
        -> library_james_embarrassed
    
    == library_james_yes
    "I would LOVE to share a room with you...not to be weird or anything."
    He laughs and turns around, motioning you to follow him. 
        -> library_james_continue
    == library_james_embarrassed
    "Wait what?" He sounds startled. 
    He quickly turns around. "I'm going to take that as a yes." 
    Wait...was that your imagination or did his ear turn a bit pink. 
        -> library_james_continue
    == library_james_continue
    He leads you to a group study room and opens the door for you. 
    You walk inside and he follows, closing the door behind him. 
    You both sit down, directly across from one another. There was a minute of awkward silence between the two of you before he started talking.
    "So what brings you to the library?"
    "I wanted to study Physics for a bit."
    "Already? Today's literally the first day of classes."
    "Well I was late to class when you knocked me over this morning. This is to make up for it."
    "Ah, no wonder you look so studious. You don't look the part." He chuckles. 
    "Huh? What's that supposed to mean?" You casted an annoyed glare at him. "But look at you, having a meeting on the first day of class too."
    "Oh, I'm actually a TA. We were just meeting to finalize how project teams were going to work for the class."
    "Oh." You did not expect that response. "Well..I'm going to study my Physics notes for a bit"
    You reached into your bag and accidentally pulled out your journal. 
    James raises an eyebrow. "That does not look like you're studying to me." 
    "I just grabbed the wrong thing. That's all." You pulled out the correct notebook this time and ACTUALLY start studying. 
    "Is that Physics? I can help you study. I was a pretty good Physics student." 
    "Uhh sure."
    He moves over to sit next to you and gives you useful tips to help you memorize concepts...
    Before you knew it, it was time to head to your next class. You had a lot of fun talking to James. 
    "I have to head to my next class now." 
    You pack your things and start walking towards the door.
    "Wait! I also have to leave now." James exclaims as he hurriedly packs his stuff. 
    You leave the room together and take the elevator down to the lobby. 
    As you're about to walk through the doors, you slip and fall right to James's arms. 
    You stare at each for a solid 20 seconds. 
    "Woah! Are you okay?" He asks. 
    "Yeah. I'm fine. I really have to get to class now." You quickly pull yourself upright and starts walking away. 
    You take a quick glance behind you, only to see his startled face. "
    -> class_1
    
=== library_5fl ===
You took the elevator to the 5th floor of the library and went into one of the private study rooms. 
* {class_0_back}
    -> if_class_0_bad
* {class_0_front and not class_0_front_bad} 
    -> if_class_0_good
* {class_0_front_bad} 
    -> if_class_0_neutral
    
    = if_class_0_good 
    You start reviewing the Physics notes that you missed during the first part of class. 
    The notes that the girl provided were really clean and helpful. 
    You can't help but wonder what her name was...
    You slap yourself with both hands. 
    "ALRIGHT, LET'S ACE THIS CLASS!"
    "SHUT UP!" someone screamed from another room. 
    Embarrassed, you go back to reviewing your notes. 
    -> head_to_class_1
    = if_class_0_bad
    You tried reviewing your Physics notes but it was not successful. You should have paid more attention in class. 
        -> head_to_class_1
    = if_class_0_neutral
    You review the notes that you took during the second half of class. It was decently successful, despite not having any notes for the first half of class.
    -> head_to_class_1


=== head_to_class_1 ===
Before you knew it, it was time to head to your next class. 
    -> class_1
    
=== dorm_0 ===
#dorm
When you arrive at your dorm and was about to head into your room, you see your suitemate, and only friend, pop his head out of his room. 
"Hey! Welcome back. I heard you scrambling this morning. Is everything okay? How was your first class? Do you need coffee?"
"Woah woah woah! Slow down, Josh. But yes, good, and no to your questions."
"If you need anything just text me. I have class now, so I'm heading off. See ya!" 
And he's gone. 
Your only friend and suitemate, Josh, is a really popular guy. He's super charismatic, charming, and friendly. 
That's how he became friends with you - your poor, single, lonesome butt. A very nice butt though. 
Sighing, you head back to your room to do the Physics homework your Professor already assigned. 
Unfortunately, you got distracted by corgi butts and spent the whole time looking at them. 
-> head_to_class_1

=== class_1 ===
#classroom
You arrived at the entrance of your next class. 
This class is the Introductory Seminar course that every first year student has to take but honestly, you have no idea what the class is going to be about.
* {class_0_front} 
    -> mysterious_girl
* {not class_0_front}
    You find an empty desk and sit down.
    -> class_1_starts
    
    = mysterious_girl
    As you're deciding where to sit, you see the girl you talked to this morning. 
    You walk over to her but your awkward self doesn't know what to say. 
    * "Hey!"
        -> mysterious_girl_greeting
    * "Blurheuh"
        -> mysterious_girl_ignores
    * "..."
        -> mysterious_girl_ignores
        
    = mysterious_girl_greeting
    She turns her head to face you. 
    * {class_0_front_good or class_0_front_neutral} 
        -> mysterious_girl_notes
    
    = mysterious_girl_notes
    "Thanks for your notes today."
        -> mysterious_girl_greeting_continue
        
    = mysterious_girl_greeting_continue
    "I didn't catch your name this morning." 
    "Oh, it's you. I almost did not recognize you for a second. My name's Cynthia." 
    "Nice to meet you Cynthia, I'm {playerName}."
    She nods. Her face expressed no signs of emotions. It was difficult to tell what she was thinking.
    You tried to think of something to keep the conversation going. 
    "So...uh what major are you in?" 
    "I'm a Physics major and a Computer Science minor," she replies. 
    "Wowww. That's impressive. I'm a Game Design major."
    She raises an eyebrow. "You're a Game Design major taking Introductory Physics?"
    "I thought the class would be fun and I needed a Science elective either way."
        -> class_1_starts
        
    = mysterious_girl_ignores
    No response. 
    She didn't even turn her head.
    Dejected, you walk away and sit at another desk. 
        -> class_1_starts
        
    = class_1_starts
    The Professor walks in. You could hear her 4 inch heels clattering as she walks to the front of the room. 
    "Hello! Welcome to Introductory Seminar. I am your Professor, Linda Takahashi. Please make sure you are in the right section and class." 
    She pauses to write the course and section number on the board, as well as her contact information. 
    "If you need to reach me, you can contact me through email and I will try to respond within 1-2 business days."
    "I'm pretty sure many of you are wondering what this class is about and why is the College requiring everyone to take it."
    "Every Professor has a different method to teach the course; however, the goal is to have students develop interpersonal relationships, so that students can continue on in life and develop more meaningful connections."
    Oh..this is what the class is about. For some reason, you feel really uneasy. 
    Professor Ramone continues on, "Before we get started, I will hand out your first homework assignment. This will be due at the start of our next class, in 2 days." 
    She passes a stack of papers to one of the students sitting in the front row. 
    "Your first assignment will be relatively simple. All you need to do is to ask someone that you do not know really well to go somewhere." 
    "It could be a classmate, a stranger, an acquaintance. You need to ask them out somewhere and have them sign their names on the piece paper being passed around." 
    "If you have any questions about the assignment, you can save them for the end of class. I will officially start the lecture now." 
    As she starts discussing tips to make the first move, your mind can't help but wonder who could you possibly ask. 
    After class ends, you head back to your dorm, still thinking about who to ask. 
    -> dorm_1
    
=== dorm_1 ===
#dorm
"Hello?" You called out, but there was no response. It seems like your suitemate is not home tonight. 
You lie down on your bed, still wondering about the assignment. 
You think about the people that you've met today. 
You close your eyes and think, who should you ask?
#black
* {class_1.mysterious_girl_greeting} [Cynthia]
    -> ask_cynthia
* {class_1.mysterious_girl_ignores} [The girl in your class]
    -> ask_mystery_girl
* {scenic_good} [James]
    -> ask_james
* {scenic and not scenic_good} [That guy you bumped into]
    -> ask_bumped_guy
* {dorm_0} [Your suitemate]
    -> ask_suitemate
* [No one]
    -> ask_no_one


=== ask_cynthia ===
"I've made up my mind. I'll ask Cynthia!"
The following day.
#classroom
You go to find Cynthia and see her sitting in front of one of the classrooms.
"Hey, so this is a weird question, but would you like to grab a cup of coffee together?"
* {class_1.mysterious_girl_greeting and class_0_front_good}
    -> cynthia_good
* {class_1.mysterious_girl_greeting and class_0_front_neutral}
    -> cynthia_bad
    
    = cynthia_good
    She looks at you. 
    It is as if she is pondering something. 
    Your heart beats nervously as you prepare for her response. 
    "Hmm..."
    "Sorry..."
    Your heart felt as if it had dropped to the ground.
    "Sorry for the long pause." She smiles. "I would love to grab coffee together. Tomorrow after classes?"
    A mix of relief and disbelief washes over your face. "Wait really?"
    "Yes." She responds. 
    You couldn't believe it. You managed to ask someone out successfully! 
    You two then exchanged phone numbers before parting ways. 
        -> ending
        
    = cynthia_bad
    She looks at you. 
    It is as if she is pondering something. 
    Your heart beats nervously as you prepare for her response. 
    "Hm..."
    "This is for the assignment right? Sorry, I don't really like coffee and I already asked someone."
    She then walks off. 
    Your heart sinks as you see her slowly walking away...
-> ending

=== ask_mystery_girl ===
"I've made up my mind. I'll ask the girl in my class!"
The following day.
#classroom
You find the girl that was in your class. 
"Hey...this is a bit of a weird question, but would you like to study Physics at the library together?"
She looks at you...
and then walks off. 
    -> ending
    
=== ask_james ===
"I've made up my mind. I'll ask James!"
The following day.
#library
You go to find James at the library. 
You see him sitting in one of the chairs and you walk up to him. 
"Hey James, so I have a question I would like to ask you. Would you like to grab brunch some time?"
He looks up to stare at you. 
* {scenic_good and library_4fl.library_james} 
    -> james_good
* {scenic_good and not library_4fl.library_james}
    -> james_bad
    
    = james_good
    "{playerName}..."
    Your heart beats nervously. You can feel your sweat trickling down your back.
    "I would love to. Can I have your phone number then? I know a good place that we can go to. Do you want to go right now if you don't have class?" 
    You stare at him in shock. 
    He looks at you anxiously.
    "Yes! I would love to." You quickly respond.
    Screw class! You got a date to get to. 
    You exchange numbers and you both walk off to his recommended brunch place. 
        -> ending
        
    = james_bad 
    "I'm kinda busy at the moment. Maybe next time?"
    "No worries, I completely understand!" You quickly nod before walking away. 
    To be fair, you only bumped into him once, why would he go out with you?
    -> ending
    
=== ask_bumped_guy ===
"I've made up my mind. I'll ask the person I bumped into on my way to Physics class!"
The following day.
#scenic
You find the person again walking through the scenic route you like going through.
You walk up to him.
"Hey, sorry for bumping into yesterday, but would you like to grab a drink together?"
You stare at him anxiously. 
"Uhh...sorry. I don't know you that well..."
He then excuses himself and leaves, leaving you by your lonesome self. 
    -> ending
    
=== ask_suitemate ===
"I've made up my mind. I'll ask Josh!"
The following day.
#dorm
You knock on Josh's door. 
He opens the door rubbing his eyes, "Do you know what time it is? What's up?"
You take a deep breath. 
"Josh, will you go have dinner with me tonight?"
Josh's eyes blink wide open. 
"Hm..sure. Why not?"
    -> ending
    
=== ask_no_one ===
"I've made up my mind. I'll ask no one!"
The following day.
You lie in bed scrolling through social media, and playing games.
-> ending

=== ending
#black
That's all of the story for now!
I would like to thank everyone for playing. 
#end
-> END

