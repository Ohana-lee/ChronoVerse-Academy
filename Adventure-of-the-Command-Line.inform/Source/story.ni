"Adventure of the Command Line" by Ohana

Include Git Commands by Ohana.
Include Menus by Emily Short.
Include Basic Screen Effects by Emily Short.
Release along with an interpreter.

[add git pull? What is narratively and educationaly sensible
make a note: ran a test on exped user]

Volume 1 - Global Variables

Book 1 - Variables

The player's name is a text that varies.

The item's name is a text that varies.

The tutorial-part is a number that varies. The tutorial-part is initially 0.

The assignment-part is a number that varies. The assignment-part is initially 0.

The commit-status is a truth state that varies. The commit-status is false.

The tutorial-done is a truth state that varies. The tutorial-done is false.

Definition: a direction (called thataway) is viable if the room thataway from the location is a room.	

Book 2 - Tables

Table of Accessable Rooms
name
the classroom
--
--
--
--
--

Table of Mergable Rooms
name (room)
101-branch
201-branch
AR-Main
AR-101
AR-102

Table of Fruits [aka Table of all items that can be tracked]
Fname (thing)	name (room)	target(room)
banana	201-branch	201-branch
apple	101-branch	101-branch
orange	storage room	101-branch
strawberry	storage room	201-branch
grape	storage room	AR-101
peach	storage room	AR-102
watermelon	storage room	AR-101
pear	storage room	AR-102
table	AR-101	AR-101
drawer	AR-101	AR-101
plant	AR-102	AR-102
ball	AR-102	AR-102

Table of Tracked Fruits
Fname(thing)	name(room)
apple	101-branch
--	--
--	--

Table of Tutorial Results
Fname(thing)	name(room)
apple	101-branch
orange	101-branch
strawberry	101-branch


Table of Tracked Items
Fname(thing)	name(room)
stool	AR-Main
mug	AR-Main
folder	AR-Main
--	--
--	--
--	--
--	--

Table of Assignment Results
Fname(thing)	name(room)
stool	AR-Main
mug	AR-Main
folder	AR-Main
grape	AR-Main
watermelon	AR-Main
peach	AR-Main
pear	AR-Main

Book 3 - Understanding sth

Understand "sit on [something]" as entering.
Understand "gets up" as exiting.
Understand "get up" as exiting.
Understand "leave" as exiting.
Talking to is an action applying to one visible thing. 
Understand "talk to [someone]" or “converse with [someone]” as talking to.
Understand "sit down" as entering.
Understand "sit" as entering.
Understand "take seat" as entering.
Understand "ls" as looking.

[Reading is an action applying to one visible thing.]
Understand "open [something]" as examining.
Understand "read [something]" or "read" as examining.
 
Volume 2 - Before game starts

When play begins:
	say "Hello there! Welcome to the world of magic (that is made up of code)! [paragraph break]";
	say "Before you start, can you help me fill in this questionnaire first?[line break]";
	say "https://forms.office.com/e/1X7gkP6Ec2 [paragraph break]";
	say "Do you need a tutorial on basic controls of this game? (yes/no) [line break]";
	say " > ";
	if the player consents:
		say "[line break]First the '>' symbol is where your command line is. [line break]If this appears on the last line, that means you can type your input there.";
		say "If the '>' symbol did not appear, that means you are in the middle of a dialogue.";
		say "To proceed on the dialogue, press the 'Enter' or 'Return' button to show the next dialogue. [line break]";
		wait for any key;
		say "Yes, just like this.[paragraph break]";
		wait for any key;
		say "To move between rooms, do [Bold type]cd target room name [Roman type].";
		wait for any key;
		say "To look around the room, do [Bold type]ls[Roman type].";
		wait for any key;
		say "To examine objects in the same room as you, do [Bold type]examine object name [Roman type] [line break]";
		wait for any key;
		say "To talk to other people, do [Bold type]talk[Roman type] or [Bold type]talk to person name [Roman type][line break]";
		wait for any key;
		say "To pick up an item, do [Bold type]pick up item name[Roman type].";
		wait for any key;
		say "To undo a command, do [Bold type]undo[Roman type].";
		wait for any key;
		say "Now, do you know who you are? (yes/no)[line break]";
		say " > ";
	otherwise:
		say "Great! Then do you know who you are? (yes/no)[line break]";
		say " > ";
	if the player consents:
		say "[line break]No you don't. Don't lie to me.";
		wait for any key;
	otherwise:
		say "[line break]No worries. I'll tell you who you are.";
		wait for any key;
	say "You are a student from a Magic Academy named Enchanted Code Academy. The academy is known for its Git Commands Course and you've always wanted to learn Git commands.";
	wait for any key;
	say "Now let's get you into Git commands. [line break]";
	wait for any key;
	say "[paragraph break]Git Config is the very first command you will come across when you first use Git commands.";
	wait for any key;
	say "This command takes your username as input and configures user info across all local repositories. ";
	wait for any key;
	say "However, when inputting your username, please only use ONE word for it ( ie No spaces in between!)";
	wait for any key;
	now the command prompt is "Now use the format 'git config --global user_name your_name_here to tell me your name.[paragraph break]> ".

Instead of looking when collecting names: do nothing.

Rule for printing the banner text when collecting names: do nothing.

Rule for constructing the status line when collecting names: do nothing.

After reading a command:
	if player's command includes "fuck you":
		say "Why fuck me? Don't fuck me! *cries*（ ＴДＴ） [line break]";
		reject the player's command.

Volume 3 - Rooms set up

A tChair is a kind of container. A desk is a thing that is scenery. 

Book 1 - Bedroom

[Only use doors to tell where each room is in relative to other rooms, or else inform gets confused]
Your Bedroom is a room. The printed name of Your Bedroom is "[player's name]'s Bedroom". The description is "This is your bedroom. As cozy as ever.  (❁´ω`❁)*✲ﾟ*". 

There is a bed, a desk and a bedside shelf in the bedroom. There is a clock on the bedside shelf. The bed is a container and enterable. The player is in the bed. There is a cat plushie in the bed. There is a Git commands reference book on the desk.

Instead of entering bed when the tutorial-part is less than 7:
	say "It's not the time to get in bed now...  (눈‸눈)";
	reject the player's command.
	
Instead of sleeping when the tutorial-part is less than 7:
	say "You just woke up, why would you sleep again? ꐦ≖ ≖";
	reject the player's command.

Instead of sleeping when the assignment-part is 4 or the assignment-part is 7:
	say "You jumped into bed and fell asleep.[paragraph break]";
	wait for any key;
	say "*snoring sounds*[paragraph break]";
	if the assignment-part is 4:
		choose a blank row in the Table of Tracked Items;
		now Fname entry is grape;
		now the name entry is AR-101;
		choose a blank row in the Table of Tracked Items;
		now the Fname entry is watermelon;
		now the name entry is AR-101;
	wait for any key;
	say "It's a brand new day and it's time to work on your assignment.[line break]";
	wait for any key;
	if the assignment-part is 7:
		now Maya is in AR-Main;
		say "Today is the day where you will be merging your branches. Be ready for that!";
		wait for any key;
	say "You got out of bed[line break]";
	increment the assignment-part; [changes on assignment-part here]
	wait for any key;
	say "Do you know what you need to do today? (yes/no)[line break]> ";
	if the player consents:
		say "Great! Good luck on your work.";
	otherwise:
		if assignment-part is 5:
			say "You need to track the required items in branch AR-102.[line break]";
			wait for any key;
			say "Understand ? (yes/no)[line break]> ";
			if player consents:
				say "Great! Good luck on your work. [line break]";
			otherwise:
				say "Re-read the last sentence until you understand. Good luck![line break]";
		otherwise if assignment-part is 8:
			say "You need to talk to Maya to do the final checking and merge your branches.[line break]";
			wait for any key;
			say "Maya is waiting for you in AR-Main.[line break]";
			say "Understand ? (yes/no)[line break]> ";
			if the player consents:
				say "Great! [line break]";
			otherwise:
				say "Re-read the last sentence until you understand. Good luck![line break]";
				[reject the player's command;]
	say "assigment part: [assignment-part]";
	if the player is in the bed:
		now the player is in the bedroom.
	
The description of the clock is "The clock shows that it's 8:00am now. Class starts at 8:30.".
The description of the cat plushie is "A squishy and chonky cat.".
[The description of the Git commands reference book is "You bought this reference book to aid your studies in Git commands".]

The chair, the bed, the door and the bedside shelf and the clock is scenery.	

Chapter 1 - Reference book

Instead of examining the Git commands reference book:
	say "tutorial part: [tutorial-part][line break]";
	say "assignment part: [assignment-part][line break]";
	say "You sat down and start reading the reference book.[line break]";
	if the assignment-part is 3:
		wait for any key;
		say "[Bold type] Chapter 1 - About Git Commands [Roman type][paragraph break]";
		wait for any key;
		say "Git Commands is a set of powerful spells that alters time and space. [line break]";
		wait for any key;
		say "You can use it to revert changes made to files and objects or even merge certain spaces into one. [line break]";
		wait for any key;
		say "It facilitates collaboration in team projects. [paragraph break]";
		wait for any key;
		say "[Bold type]1.1 Repositories[Roman type][line break]";
		wait for any key;
		say "A repository, (aka repo), is a place where you can store your code, your files and each file’s revision history[line break]";
		wait for any key;
		say "A remote repository is a repository stored in a remote place called GitHub.[line break]";
		wait for any key;
		say "A local repository is a repository stored in your local space.[line break]";
		wait for any key;
		say "A repository can have multiple collaborators and it can be either public or private.[paragraph break]";
		wait for any key;
		say "[Bold type]1.2 Branches[Roman type][line break]";
		wait for any key;
		say "A branch is a parallel version of your code that is contained within the repository.[line break]";
		wait for any key;
		say "Changes made on a branch do not affect other branches until you cast git merge on them.[line break]";
		wait for any key;
		say "Merge conflicts occur when you merge branches that have competing commits.[line break]";
		wait for any key;
		say "In such cases, you will have to resolve all conflicts before you can merge them. [line break]";
		wait for any key;
		say "(Good news, you will not run into any merge conflicts in this game.)[paragraph break]";
		wait for any key;
		say "[Bold type]1.3 Exercise[Roman type][paragraph break]";
		wait for any key;
		say "Q1 What cannot be found in a repository?[line break]";
		now the command prompt is "A. Tracked folders[line break]B. Tracked files[line break]C. Local files outside the repository[line break]D. Different versions of a tracked file[paragraph break]> ";
	if the assignment-part is 6:
		say "[Bold type]Chapter 2 – About Tracking and Committing[Roman type][paragraph break]";
		wait for any key;
		say "[Bold type]2.1 Commits[Roman type][paragraph break]";
		wait for any key;
		say "A commit is like a save file that contains meaningful changes you’ve made.[line break]";
		wait for any key;
		say "Each commit has a unique ID that identifies: the specific changes, when the changes were made and who made the changes.[line break]";
		wait for any key;
		say "Although you can revert commits that have been pushed,[line break]";
		wait for any key;
		say "it is considered bad practice as it makes things hard for your collaborators.[paragraph break]";
		wait for any key;
		say "[Bold type]2.2 Tracking files[Roman type][paragraph break]";
		wait for any key;
		say "Each file in your working directory can be in one of the two states: tracked or untracked.[line break]";
		wait for any key;
		say "Tracked files are files that you have cast ‘git add’ on.[line break]";
		wait for any key;
		say "Untracked files are everything else.[line break]";
		wait for any key;
		say "You can cast ‘git add’ on untracked files to turn them into tracked files.[line break]";
		wait for any key;
		say "The counter-spell of ‘git add’ is ‘git reset’.[paragraph break]";
		wait for any key;
		say "[Bold type]2.3 Exercise[Roman type][paragraph break]";
		wait for any key;
		say "Q1 What can you identify from a commit ID (excluding the commit message)?[paragraph break]";
		now the command prompt is "A. the person who made the changes[line break]B. reason why the changes are made[line break]C. number of times the committer cast a spell[line break]D. today’s date[paragraph break]> ";
	otherwise:
		say "You bought this reference book to aid your studies in Git command.[line break]You don't want to read this now.[line break]".
		
Chapter 2 - Practice Exercise

To decide whether asking Q1:
	if the command prompt is "A. Tracked folders[line break]B. Tracked files[line break]C. Local files outside the repository[line break]D. Different versions of a tracked file[paragraph break]> ", yes;
	no.

After reading a command when asking Q1:
	[say "What's your answer?";]
	if the player's command includes "C":
		say "that's correct.";
		wait for any key;
		say "Q2 What is a merge conflict?[line break]";
		now the command prompt is "A. Competing commits between branches[line break]B. Disagreement between repositories[line break]C. Hostility between collaborators[line break]D. Dispute between files[paragraph break]> ";
		reject the player's command;
	otherwise:
		say "that's not correct.".
		
To decide whether asking Q2:
	if the command prompt is "A. Competing commits between branches[line break]B. Disagreement between repositories[line break]C. Hostility between collaborators[line break]D. Dispute between files[paragraph break]> ", yes;
	no.

After reading a command when asking Q2:
	if the player's command includes "A":
		say "that's correct.";
		wait for any key;
		say "Q3 What spells cannot be cast on branches?[line break]";
		now the command prompt is "A. git fetch[line break]B. git config[line break]C. git push[line break]D. git commit[paragraph break]> ";
		reject the player's command;
	say "that's not correct.";
	reject the player's command.
		
To decide whether asking Q3:
	if the command prompt is "A. git fetch[line break]B. git config[line break]C. git push[line break]D. git commit[paragraph break]> ", yes;
	no.
	
After reading a command when asking Q3:
	if the player's command includes "B":
		now the command prompt is ">"; [<-- this line is very very very important]
		say "That's correct. *Explanation on the answer*[line break]";
		now the assignment-part is 4;
		reject the player's command;
	say "that's not correct.";
	reject the player's command.
	
To decide whether asking Q4:
	if the command prompt is "A. the person who made the changes[line break]B. reason why the changes are made[line break]C. number of times the committer cast a spell[line break]D. today’s date[paragraph break]> ", yes;
	no.
	
After reading a command when asking Q4:
	if the player's command includes "A":
		say "that's correct";
		wait for any key;
		say "[line break]Q2 What spell can you cast to turn tracked files into untracked files?[paragraph break]";
		now the command prompt is "A. git undo[line break]B. git add[line break]C. git reset[line break]D. git untrack[paragraph break]> ";
		reject the player's command;
	say "that's not correct.";
	reject the player's command.	
	
To decide whether asking Q5:
	if the command prompt is "A. git undo[line break]B. git add[line break]C. git reset[line break]D. git untrack[paragraph break]> ", yes;
	no.

After reading a command when asking Q5:
	if the player's command includes "C":
		now the command prompt is "> ";
		say "that's correct. exercise done.[line break]";
		wait for any key;
		say "You feel sleepy and decided to call it a day.";
		wait for any key;
		say "(Tip: Go to sleep to start a new day.)";
		[now the tutorial-part is 8;]
		say "tutorial part: [tutorial-part][line break]";
		say "assignment part: [assignment-part][line break]";
		now the assignment-part is 7;
		[now the tutorial-part is 8;]
		reject the player's command;
	say "that's not correct.";
	reject the player's command.

Book 2 - Corridor

The bedroom door is south of your Bedroom and north of the corridor. It is a door and openable. The description of the corridor is "This is a corridor that connects your bedroom and the classroom." The printed name of the corridor is "The Corridor".

Book 3 - Classroom

Understand "Magic Classroom" as the classroom.

The classroom door is north of the classroom and south of the corridor. It is a door and openable. 
The description of the classroom is "This is the classroom you take Magic lessons in. For some reason, it is more comfortable to sleep here than your room （¯﹃¯） (especially when the professor is talking). You see your assigned seat in the corner. Take a seat to start the tutorial. ". The printed name of the classroom is "Magic Classroom".  

There is a chair and your desk and teacher's desk in the classroom. The chair is a container and enterable. There is a wand on the teacher's desk. The wand is portable. The description of the wand is "This is your brand new wand provided by the school.". The desk is scenery. 
The description of the chair is "This is your assigned seat. Take a seat.". The description of your desk is "This is your desk. ". 

Dr Github is a person. Dr Github is in the classroom. The description of the Dr Github is "This is the professor who will teach you the set of magic spells named Git Commands. Since this is the first lesson in this unit, you do not know his name yet.".

Instead of entering chair:
	say "Do you want to start the tutorial? (yes/no)[line break]";
	if the player consents:
		say "[paragraph break]";
		if the player does not have the wand:
			say "You need your wand to perform magic, go pick up your wand first.[line break]";
			say "You got up from your seat.[line break]";
			reject the player's command;
		otherwise:
			now the description of the classroom is "This is the classroom you take Magic lessons in. For some reason, it is more comfortable to sleep here than your room （¯﹃¯） (especially when the professor is talking). You see your assigned seat in the corner.";
			say "[Bold type]Professor[Roman type]: Welcome everyone, to the unit of Git Commands. First of all, I am your professor. You can call me Dr. Github. Now I will teach you one of the basic spells in Git. [line break]";
			wait for any key;
			say "[Bold type]Dr. Github[Roman type]: The first spell is called [green letters]git checkout[default letters]. It is used for teleporting yourself to other branches. [line break]";
			wait for any key;
			[say "Dr. Github: But mind you, not all rooms (aka branches in reality) can be teleported to. (But in reality, you can use this to go to any branch you have access to)"]
			say "[Bold type]Dr. Github[Roman type]: now do [green letters]git checkout 101-branch[default letters] to go to 101-branch, I'll meet everyone there. [line break]";
			wait for any key;
			say "Dr. Github vanishes into thin air as he casts the spell. ๛ก(ｰ̀ωｰ́ก) Maybe you should give it a try too? [line break]";
			now the printed name of Dr Github is "Dr. Github";
			now the description of the Dr Github is "This is the professor who will teach you the set of magic spells named Git Commands.";
			now Dr Github is in 101-branch;
			choose a blank row in the Table of Accessable Rooms;
			now name entry is 101-branch;
			now the tutorial-part is 2;
			[say "tutorial-part: [tutorial-part] done [line break]";]
	otherwise:
		say "Come back when you're ready!";
		reject the player's command.

Book 4 - Practice Rooms

Chapter 1 - 101-branch

[add sign in room to show what commands can be used]
[stop people from picking teaching materials up]

Section 1 - Room description

The 101-branch is a room. The description of 101-branch is "This is one of the branches where you will practice magic spells learnt. Talk to Dr Github to continue the tutorial. [line break]Tip: Talk to Dr. Github (ie type 'talk' in the command line) whenever you have completed the instructions he gave you.". There is an apple in 101-branch.

Section 2 - Talking to Dr GitHub

Instead of talking to Dr Github:
	if tutorial-part is 2:
		say "[Bold type]Dr. Github[Roman type]: Congratulations everyone, you have now mastered your very first spell! *clap* *clap* *clap* [line break]";
		wait for any key;
		say "[Bold type]Dr. Github[Roman type]: As a side note, you can do [green letters]git branch[default letters] to check which branches you can teleport to.";
		wait for any key;
		say "[Bold type]Dr. Github[Roman type]: Now here goes the 2nd spell, [green letters]git fetch[default letters] ! [line break]";
		wait for any key;
		say "[Bold type]Dr. Github[Roman type]: What git fetch does is [Italic type]to update the branch[Roman type]. Others may have made some changes to branch but you can't see it yet. [line break]";
		wait for any key;
		say "[Bold type]Dr. Github[Roman type]: So you need to use this spell to make the changes visible to you. Now say after me, [green letters]git fetch[default letters]! (∩^o^)⊃━☆ﾟ.*･｡[line break] (Tip: Talk to Dr. Github again after updating the branch)";
		now the tutorial-part is 3;
		reject the player's command;
		[]
	if tutorial-part is 3 and the location of the orange is 101-branch:
		say "[Bold type]Dr. GitHub[Roman type]: Great, now you've learnt 2 new spells. Let's put them into practice. [line break]";
		wait for any key;
		say "[Bold type]Dr. GitHub[Roman type]: [Italic type]Go to 201-branch, update that branch, and return to this branch. Report to me once you have everything done. [Roman type][line break]";
		now the tutorial-part is 4;
		choose a blank row in the Table of Accessable Rooms;
		now name entry is 201-branch;
		reject the player's command;
		[]
	if tutorial-part is 4 and the location of the strawberry is 201-branch:
		say "[Bold type]Dr. GitHub[Roman type]: Good Job everyone. Let's move on. [line break]";
		wait for any key;
		say "[Bold type]Dr. GitHub[Roman type]: The next spell is [green letters]git add[default letters]. This spell [Italic type]tracks items in the room [Roman type]so you can revert to their old state if needed. [line break]";
		wait for any key;
		say "[Italic type](Mysterious Voice: Reverting a commit is not implemented in this game... game... game...) [Roman type][line break]";
		wait for any key;
		say "[Bold type]Dr. GitHub[Roman type]: Hmm? ｢(ﾟﾍﾟ) Am I hearing things? Anyway, let's try [Italic type]tracking the orange.[Roman type] [line break]";
		wait for any key;
		say "[Bold type]Dr. GitHub[Roman type]: After me, [green letters]git add orange[default letters]! (∩^o^)⊃━☆ﾟ.*･｡ (Talk to Dr. GitHub after you have done the command)[paragraph break]";
		now the tutorial-part is 5;
		reject the player's command;
		[]
	if tutorial-part is 5 and there is a Fname of orange in the Table of Tracked Fruits:
		say "[Bold type]Dr. GitHub[Roman type]: Very well, now before going to the next part, I have a little tip for you. [line break]";
		wait for any key;
		say "[Bold type]Dr. Github[Roman type]: If you ever casted [green letters]git add[default letters] on something you don't want, do [green letters]git reset[default letters] followed by the object's name as the counter spell. [line break]";
		wait for any key;
		say "[Bold type]Dr. GitHub[Roman type]: This might come in handy for the next practice. But for now, let's keep the orange on the tracking list.[line break]";
		wait for any key;
		say "[Bold type]Dr. GitHub[Roman type]: So now, [Italic type]go to 201-branch and track the strawberry[Roman type]. [line break]";
		wait for any key;
		say "[Bold type]Dr. GitHub[Roman type]: Talk to me when you are done. [line break]";
		now the tutorial-part is 6;
		reject the player's command;
		[]
	if tutorial-part is 6 and there is a Fname of strawberry in the Table of Tracked Fruits:
		say "[Bold type]Dr. GitHub[Roman type]: You guys sure learn fast. Now pay attention, cause I'm going to teach you one of the most complicated spells in Git commands. [line break]";
		wait for any key;
		say "[Bold type]Dr. GitHub[Roman type]: In the world of magic, anything is possible - you can even merge rooms! [line break]";
		wait for any key;
		say "[Bold type]Dr. GitHub[Roman type]: [green letters]git merge[default letters] is a spell that [Italic type]merges a branch of your choice to the master branch[Roman type] (which is 101-branch in this case). [line break]";
		wait for any key;
		say "[Bold type]Dr. GitHub[Roman type]: Let's try merging now. Say [green letters]git merge 201-branch[default letters] (∩^o^)⊃━☆ﾟ.*･｡[line break]";
		now the tutorial-part is 7;
		reject the player's command;
		[]
	if tutorial-part is 7 and there is a strawberry in 101-branch:
		say "[Bold type]Dr. GitHub[Roman type]: After all of the hard work just now, you do not want to lose them, right? [line break]";
		wait for any key;
		say "[Bold type]Dr. GitHub[Roman type]: So, here are the last 2 spells I have to teach you today. [line break]";
		wait for any key;
		say "[Bold type]Dr. GitHub[Roman type]: [green letters]git commit[default letters] and [green letters]git push[default letters]. These commands always come in pairs. [line break]";
		wait for any key;
		say "[Bold type]Dr. GitHub[Roman type]: Whenever you are done working on a branch, remember to do [green letters]git commit[default letters] to save the changes. [line break]";
		wait for any key;
		say "[Italic type](Mysterious voice: In reality, do [green letters]git commit -m 'message here' [default letters] instead to leave a message with your commit ('-m' means to include a main message in the commit))[Roman type][line break]";
		wait for any key;
		say "[Italic type](Mysterious voice: Or you will confuse yourself in the future... future... future... )[Roman type][line break]";
		wait for any key;
		say "[Italic type](Mysterious voice: But to keep things simple, you just need to do [green letters]git commit[default letters] in this game... game... game...)[Roman type][line break]";
		wait for any key;
		say "[Bold type]Dr. GitHub[Roman type]: Σ(;ﾟдﾟ) What is that voice? Is there something wrong with me? [line break]";
		wait for any key;
		say "[Bold type]Dr. GitHub[Roman type]: *Coughs* Anyway, after [green letters]git commit[default letters], always do [green letters]git push[default letters]. So other people can see the changes you made when they do [green letters]git fetch[default letters]. [line break]";
		wait for any key;
		say "[Bold type]Dr. GitHub[Roman type]: In exams and assignments, you MUST do [green letters]git commit[default letters] and [green letters]git push[default letters] so that I can see what you did. If I can't see your changes because of this, you will be getting an instant 0. <(｀^´)> [line break]";
		wait for any key;
		say "[Bold type]Dr. GitHub[Roman type]: Now commit and push your changes. [line break]";
		now the tutorial-part is 8;
		reject the player's command;
	if tutorial-part is 8 and tutorial-done is true:
		[]
		now the commit-status is false;
		say "[Bold type]Dr. GitHub[Roman type]: Congratulations! You have now mastered the basic of Git commands![paragraph break]";
		now the description of 101-branch is "This is one of the branches where you will practice magic spells learnt.";
		wait for any key;
		say "[Bold type]Dr. GitHub[Roman type]: *Looks at watch* OK, listen. Here is today's assignment. [line break]";
		wait for any key;
		say "[Bold type]Dr. GitHub[Roman type]: For this assignment, I will assign you into a pair.[line break]";
		wait for any key;
		say "[Bold type]Dr. GitHub[Roman type]: Each pair will have three branches to work on. [line break]";
		wait for any key;
		say "[Bold type]Dr. GitHub[Roman type]: One master branch and two other branches. [line break]";
		wait for any key;
		say "[Bold type]Dr. GitHub[Roman type]: You should only submit the master branch and the master branch must have everything I required. [line break]";
		wait for any key;
		say "[Bold type]Dr. GitHub[Roman type]: Here is the detail instructions of this assignment. [line break]";
		wait for any key;
		say "A paper with the instructions written on it appeared in front of you. Do [green letters]examine assignment instruction[default letters] to read the paper. [line break]";
		[give player the items they need and dismiss]
		now the player carries the assignment instruction;
		choose a blank row in the Table of Accessable Rooms;
		now name entry is AR-Main;
		choose a blank row in the Table of Accessable Rooms;
		now name entry is AR-101;
		choose a blank row in the Table of Accessable Rooms;
		now name entry is AR-102;
		now Maya is in 101-branch;
		wait for any key;
		say "You can now access branch AR-Main, AR-101 and AR-102.[line break]";
		wait for any key;
		say "[Bold type]Dr. GitHub[Roman type]: Your partner's name will be written on the instruction paper. Now, dismiss! [line break]";
		wait for any key;
		say "(Tip: Maybe talk to your partner after reading the instruction paper?)";
		now the assignment-part is 1;
	otherwise:
		say "Dr. GitHub: Please follow/complete the instructions I mentioned. [line break]";
		reject the player's command.
		
Section 3 - Talking to Maya

Instead of talking to Maya:
	if assignment-part is 1:
		say "[Bold type]Maya[Roman type]: Hello [player's name]! Nice to meet you! Do you have any plans for this assignment?[line break]";
		wait for any key;
		say "[Bold type][player's name][Roman type]: Hello! Maybe we could split up the workload? [line break]";
		wait for any key;
		say "[Bold type][player's name][Roman type]: I can work on AR-102 and you can work on AR-101. [line break]";
		wait for any key;
		say "[Bold type]Maya[Roman type]: Shall we set an internal deadline? Like two days later? [line break]";
		wait for any key;
		say "[Bold type]Maya[Roman type]: Then we can merge our branches to AR-Main.[line break]";
		wait for any key;
		say "[Bold type][player's name][Roman type]: Sure!";
		wait for any key;
		say "[Bold type][player's name][Roman type]: *Stomach growling sound* [line break]";
		wait for any key;
		say "[Bold type][player's name][Roman type]: Sorry... I think I need to grab some food first...[line break]";
		wait for any key;
		say "[Bold type]Maya[Roman type]: It's alright! I'll be in AR-101 if you need me.[line break]";
		wait for any key;
		say "[Bold type]Maya[Roman type]: See you later![line break]";
		say "After setting up a plan for the assignment, You decided to go to the canteen and grab some food. [line break]";
		say "You waved goodbye to Maya.[line break]";
		wait for any key;
		say "(Tip: You can access the Canteen through the corridor.)";
		now the description of the corridor is "You can access your bedroom, the classroom and the canteen through this corridor.";
		now the assignment-part is 2;
		reject the player's command;
	[]
	if assignment-part is 2:
		say "[Bold type]Maya[Roman type]: Hi [player's name], I've updated the branch. What about you?[line break]";
		reject the player's command;
	if assignment-part is 4:
		say "[Bold type]Maya[Roman type]: Hi, [player's name], how's your progress?[line break]";
		reject the player's command;
	if assignment-part is 8:
		say "[Bold type]Maya[Roman type]: Good morning [player's name], did you tracked all your required items?[line break]";
		if the player consents:
			say "[Bold type]Maya[Roman type]: Great! Let's start the merging.[line break]";
			wait for any key;
			say "[Bold type]Maya[Roman type]: Do you remember how to do the merging?[line break]";
			if the player consents:
				say "[Bold type]Maya[Roman type]: Nice! You can merge your branch now.[line break]";
				wait for any key;
				say "[Bold type]Maya[Roman type]: Tell me when you're done. [line break]";
			otherwise:
				say "[Bold type]Maya[Roman type]: The spell is [Bold type]git merge branch_name[Roman type][line break]";
				wait for any key;
				say "[Bold type]Maya[Roman type]: Try it yourself![line break]";
				wait for any key;
				say "[Bold type]Maya[Roman type]: And don't forget to tell me when you're done![line break]";
				now the assignment-part is 9;
		otherwise:
			say "[Bold type]Maya[Roman type]: Oh... Then you should do it now.[line break]";
			wait for any key;
			say "[Bold type]Maya[Roman type]: Come back when you're ready! [line break]";
	[numbers might need some changes]
	if the assignment-part is 10:
		say "[Bold type]Maya[Roman type]: You've merged your branch?[line break]";
		wait for any key;
		say "[Bold type]Maya[Roman type]: Oh great! :D I'll merge my branch now.[line break]";
		wait for any key;
		say "Maya waves her wand in the air and shouts 'git merge AR-101'! (∩^o^)⊃━☆ﾟ.*･ [line break]";
		[now the grape is in AR-Main;
		now the watermelon is in AR-Main;]
		repeat with N running from 1 to the number of rows in the Table of Tracked Items:
			choose row N in the Table of Tracked Items;
			if the name in row N of the Table of Tracked Items is AR-101:
				now Fname in row N of the Table of Tracked Items is in the location of Maya;
				now the name entry is the location of Maya;
			otherwise if the name entry is the location of Maya:
				next;
		wait for any key;
		showme the contents of the Table of Tracked Items;
		now the command prompt is "[Bold type]Maya[Roman type]: Can you cast the git commit and git push spell? (yes/no)[line break]> ";
	otherwise:
		say "[Bold type]Maya[Roman type]: Hi [player's name]!".
		
To decide whether Maya is begging:
	if the command prompt is "[Bold type]Maya[Roman type]: Can you cast the git commit and git push spell? (yes/no)[line break]> ", yes;
	no.

After reading a command when Maya is begging:
	if the player's command includes "yes":
		say "[Bold type]Maya[Roman type]: Thank you![line break]";
		now the command prompt is "> ";
		reject the player's command;
	say "[Bold type]Maya[Roman type]: Please...";
	reject the player's command.

The AR-101 is a room. There is a table and a drawer in the AR-101. 

[There is a debugger in 101-branch. The debugger is a container. The description of the debugger is "In case of emergency (e.g. you get stuck in this room and can't leave), please enter the debugger to return to the classroom.". ]

Chapter 2 - 201-branch

The 201-branch is a room. The description of 201-branch is "This is one of the branches where you will practice magic spells learnt.". There is a banana in 201-branch. 
		
Book 5 - Storage Rooms

The storage room is a room. There is an orange, a grape, a peach, a watermelon, a pear and a strawberry in the storage room. The printed name of the storage room is "--".

Maya is a person. Maya is in the storage room. The description of Maya is "A sweet girl who is your classmate and partner of the assignment.".

Chapter 1 - Do not eat or pick up fruits

The apple, orange, strawberry, banana, grape and peach is edible.

Instead of taking a noun:
	if the noun is a thing:
		if there is a Fname of the noun in the Table of Tracked Fruits:
			say "Dr. Github: Please do not touch the teaching materials. [line break]";
			reject the player's command;
		otherwise:
			now the player carries the noun;
			say "You took the [noun].";
	otherwise:
		say "This is not something you can pick up.".
			
Instead of eating a noun:
	if the noun is a edible thing:
		if there is a Fname of the noun in the Table of Fruits:
			say "Dr. Github: You are not allowed to eat during lesson. Go grab some food later if you are that hungry. [line break]";
			reject the player's command;
		otherwise:
			now the noun is nowhere;
			say "You ate the [noun].";
	otherwise:
		say "This is not edible. Are you OK?[line break]";
		
Chapter 2 - Assignment papers

There is a assignment instruction in the storage room. The description is "[line break]+-------------------------------------------------------------------------------------------+[paragraph break][Bold type]Formative Assignment Instructions[Roman type][line break]Name: [Italic type]Maya, [player's name][Roman type] [paragraph break]1. You have three different branches to work on:[line break]	AR-Main, AR-101, AR-102. [line break]2. AR-Main is the master branch, all branches should be merged to it in the end.[line break]3. The following items should be tracked: [line break]	grape, peach, folder, stool, mug, watermelon, pear[line break]4. You can only use [Bold type]git checkout branch-name[Roman type] to access the branches for this assignment. [line break][Bold type]Tips: [Roman type][line break]- If needed, do [Bold type]drop item name[Roman type] to drop off an item in the branch you are currently at. [line break]- Do [Bold type]git branch[Roman type] to list out the branches you can teleport to. [line break]- Do [Bold type]git status[Roman type] to check your tracking list. [line break]- Don't forget to do [Bold type]git commit[Roman type] and [Bold type]git push[Roman type] to submit.[paragraph break]+-------------------------------------------------------------------------------------------+[line break]".

Book 6 - Assignment Rooms

Chapter 1 - Rooms set up

The AR-Main is a room. There is a stool, a folder and a mug in the AR-Main. The description of AR-Main is "This is the main branch of your assignment.".

Every turn:
	if the assignment-part is 1:
		now the description of AR-101 is "This is one of the three branches of your assignment. Maya will be working on this branch.";
	otherwise:
		now the description of AR-101 is "This is one of the three branches of your assignment.".

The AR-102 is a room. There is a plant and a ball in the AR-102. 

Every turn:
	if the assignment-part is 1:
		now the description of AR-102 is "This is one of the three branches of your assignment. You will be working on this branch. It's a little late, so you decided to only update the branch and leave the rest for tomorrow.[line break]";
	otherwise if the assignment-part is 5:
		if there is a Fname of pear in the Table of Tracked Items:
			if there is a Fname of peach in the Table of Tracked Items:
				now the assignment-part is 6;
				say "You've done your part of work for the assignment.[line break]";
				wait for any key;
				say "You decided to go back and read the reference book.[line break]";
	otherwise:
		now the description of AR-102 is "This is one of the three branches of your assignment.".

[Instead of picking up ]

[The bedroom door is south of your Bedroom and north of your Office. It is a door and openable. The description is "You are now in your office. *inserts description about your office*". The printed name of Your Office is "[player's name]'s Office". ]

Book 7 - Canteen

The canteen door is east of the corridor and west of the Canteen. It is a door and openable. The description of the Canteen is "The canteen is filled with the aroma of delicious food. You get hungry just by staying here. Try looking around to find something to eat.". The meal deal is a container. The meal deal is edible. The meal deal is in the Canteen. There is a egg mayo sandwich, a bag of chips and a cup of coffee in the meal deal.

Instead of eating the meal deal:
	now Maya is in the AR-101;
	say "You happily chomp on the sandwich until nothing is left.[line break]";
	now the grape is in AR-101;
	wait for any key;
	say "Then you munched your chips while you took a sip of your coffee.[line break]";
	now the watermelon is in AR-101;
	wait for any key;
	say "After a few minutes, the entire meal deal is in your stomach.[line break]";
	now the meal deal is nowhere;
	wait for any key;
	say "You are now satisfied and have decided to visit the assignment rooms.[line break]".
	[wait for any key;
	say "(Tip: remember to update Maya on your progress.)[line break]".]


[testing??]