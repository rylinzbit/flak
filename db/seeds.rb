# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
# Blogs
Blog.create(title: 'To Spar or Not to Spar', content: 'This is the question. The biggest and hardest question that is to be asked.', photo: 'pic1.jpg')
Blog.create(title: 'Dip, Dodge, Dive, Duck, and Darth Vader', content: 'Alliteration is always fun. Alliteration always avoids awkwardness', photo: 'pic2.jpg')
Blog.create(title: 'I Knoweth Not', content: 'Tis thy time to sayeth that I knoweth not of much', photo: 'pic3.jpg')
Blog.create(title: "What's in a Book", content: "I am often asked what makes Fight Like a Knight (FLaK) different from other organizations that teach swordfighting. My answer is always “authenticity.” If we disregard fencing (as it is well-documented has been studied for centuries and is a wholly different art-form) and focus solely on FLaK’s core curriculum of medieval-style combat using period weapons such as broadswords, longswords, axes and various polearms, the differences become quite apparent. FLaK training is based on the reality of a to-the-death swordfight between two similarly-armored combatants. The battles are full-speed, full-contact and unchoreographed engagements where a small set of rules exist solely for the safety of the modern-day fighters, much like where in a martial-arts sparring match, strikes to the eyes or throat are not allowed even though in a real encounter they would be among the primary targets. So what is this “authenticity?” Before we can get into that we need to look at a few things. Most modern-day swordfighting is taught from the few historical books that exist on the subject (the most widely used being the Talhoffer manuscripts – more on this in another post), which is, in and of itself, dubious. During the middle ages, the training and techniques used by an army or even an individual would have been highly guarded secrets. Imagine if Duke William II of Normandy ordered the publishing of a book on how the French-Norman army trained and the tactics it deployed on the battlefield. The English would have decimated them and the Battle of Hastings would not be as we know it today. So, we have to question WHO published these works. Surely not an actual active swordsman, knight, or military leader, for his very life would depend on any advantage he could gain, and his training methods would be at the fore. Thus, it seems far more likely that these earlier treatises were scribed by a witness, or someone who had a passing familiarity with actual combat. This brings us to the next point, which is that techniques described in these books in the context of two similarly armored and armed opponents, being some sort of leather and metal armor, a broadsword and a shield, are highly ineffective. I say this for two reasons, first and foremost of which is the fact that most of the techniques described and illustrated in the documents pertain to judicial engagements to settle some legal matter, where the combatants are unarmored and the fight is not mortal. These are very posed, choreographed, specific maneuvers that, in the course of a real swordfight, for which the opportunity would rarely present itself. The second, and more profound reason for the ineffectiveness of the techniques described in these book and taught by other swordfighting schools is simply that there is little to no attention placed on what it would take to kill your opponent. This is the core of FLaK’s teachings, and it starts with the simple philosophy that if you cease to throw killing blows, you have lost the fight, and are, for all intent and purpose, fertilizer for the lilies that will surely grow over your corpse. The kinesthetics required to consistently deliver lethal blows to an armored opponent are not addressed or taught, and for the most part, the instruction places the fighter in highly undesirable positions that would result in the almost immediate death when pitted against a skilled combatant. FLaK is authentic swordfighting at its core, cased in a minor set of rules for safety, where, ultimately, participants learn the skills that they would have required to survive day-to-day life in the middle-ages. For actors, these skills translate into powerful, dynamic and exciting physical performances that set them apart from their peers and cast-mates. Anyone training with FLaK will garner composure, balance, core-strength, kinesthetic-awareness, and the “I know how to handle myself” stride comes with being a seasoned swordfighter equipped with the tools take on the mightiest of foes. In honor and chivalry.", photo: 'pic4.jpg')
Blog.create(title: "Shiver Me Timbers", content: "there she blow matee. And nything piratey you can think of.", photo: 'pic5.jpg')
Blog.create(title: "A Silly Song with Larry", content: "When I was just two years old I left my lips out in the cold and they turned blue, what could I do? Oh my they turned blue, what could you do? Oh they turned blue. On the day I got my tooth I had to kiss my great aunt Ruth, she had a beard and it felt weird.", photo: 'pic6.jpg')
Blog.create(title: "I give him a HUH and a HIGH-YA and I kick him sir", content: "I say, good sir, do you knoweth of thy Muffin Man? The oneth that liveth on Drury Lane? Tis a good fellow he is. Always making thy divinity in buttery muffins. Tis a good cook is he. Sometimes he can be-eth a smidge of a sissy, but thy mans hands always be floured so what must the common man except.", photo: 'pic7.jpg')
# 
# Blog comments
BlogComment.create(name: "Bob the Builder", comment: "I build shit", blog_id: 4)
BlogComment.create(name: "Mr. Wonderbread", comment: "I Believe in a thing called love, blah blah blah blah blah", blog_id: 2)
BlogComment.create(name: "Shnickle Fritz", comment: "This really spoke to me. Thank you for sharing.", blog_id: 4)
BlogComment.create(name: "Bill Nye", comment: "I am the science guy. So logically speaking, this all makes perfect sense and I believe it to be scientifically proveable.", blog_id: 4)
BlogComment.create(name: "Davith", comment: "email me at emaildavith@gmail.com", blog_id: 4)
BlogComment.create(name: "Arn", comment: "So this knight thing...is it historically accurate or is this merely a gimmick that has been reproduced, unsuccessfully might I add, by Hollywood over and over and over and over and over and over again and again. Its like like slapping the word 'natural' on a chicken breast. The word natural has no significant meaning anymore. So how 'authentic' are we talking?", blog_id: 4)
BlogComment.create(name: "Ryebread", comment: "This has gotten a little out of control. Arnie, you might want to lower your voice, and Davith, stop giving your email out to strangers.", blog_id: 4)
BlogComment.create(name: "Squidward", comment: "I hate Spongebob Square Pant", blog_id: 3)
BlogComment.create(name: "Anonymous", comment: "To be or not to be.... I still don't know what the answer is.", blog_id: 3)
BlogComment.create(name: "The Pool", comment: "Golly-gee... I'm wet.", blog_id: 1)
BlogComment.create(name: "The Beach", comment: "I am pretty sure I have crabs", blog_id: 1)
BlogComment.create(name: "Hero", comment: "Its pronounced heh-row not hero. get it right", blog_id: 4)


# Testimonials
Testimonial.create(content: "BEFORE I WAS AN ACTOR, I WAS A COLLEGIATE FENCER. I FENCED ONSTAGE FOR SEVERAL YEARS DOING SHAKESPEARE AND EVEN CHOREOGRAPHED FIGHT SEQUENCES MYSELF. IN ALL MY YEARS OF EXPERIENCE, CHRISTOPHER BURNS IS ONE OF THE VERY BEST SWORDPLAY EXPERTS I'VE EVER WORKED WITH. I'VE PUT MY LIFE AND SHOW IN HIS HANDS BEFORE AND WOULD HAPPILY DO IT AGAIN", name: "JIM BEAVER", projects: "SUPERNATURAL, DEADWOOD, THE LION IN WINTER", likes: 6)
Testimonial.create(content: "WE ARE SO GLAD THAT WE HAD THE CHANCE TO WORK WITH THE MULTI-TALENTED CHRISTOPHER BURNS! HE MASTERFULLY CHOREOGRAPHED A FIGHT SEQUENCE AND TAUGHT IT TO TWO OF OUR ACTORS FOR OUR FINALE, THEN WAS ON-HAND ON SET TO ENSURE THAT EACH MOVE WAS REALISTIC, SAFE, AND LOOKED AMAZING. HE BROUGHT OUR TALE TO LIFE.", name: "PAULA RHODES", projects: "A GOOD KNIGHT'S QUEST, THE LION IN WINTER", likes: 7)
Testimonial.create(content: "CHRIS IS PROFESSIONAL, KNOWLEDGEABLE AND SAFE. WHEN IT COMES TO SWORD FIGHTING, HE GETS IT. I DID A SHOOT WITH CHRIS WHERE WE HAD A SHORT WINDOW FOR TRAINING AND WERE WORKING WITH COMBATANTS OF VARYING SKILL LEVELS. THANKS TO CHRIS, THE DIRECTOR GOT A GREAT FIGHT AND EVERYONE LEFT WITH ALL THEIR FINGERS AND HEADS. HE'S A PRO!", name: "DOUGLAS SARINE", projects: "ASK A NINJA, A GOOD KNIGHT'S QUEST", likes: 1)
Testimonial.create(content: "CHRIS IS THE BEST AT PLAYING WITH SWORDS. I'VE SEEN HIM HANDLE TWO AT A TIME WITHOUT MISSING A BEAT.", name: "APPLE WATSON", projects: "BEAT STREET 2, GAME OF THONGS", likes: 1)
Testimonial.create(content: "HE DOES STUFF", name: "TEST NAME", projects: "PROJECT 1", likes: 1)
Testimonial.create(content: "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", name: "SEGUNDO TEST", projects: "PROJECT PROTECT 2", likes: 0)
Testimonial.create(content: "Sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in.", name: "TEST AAA", projects: "PROJECT AAA", likes: 2)
Testimonial.create(content: "We are here to test...sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostru.", name: "MASTER", projects: "Changing Tire, Baking with butter", likes: 0)

# Admin
admin = Admin.create! :email => 'admin@email.com', :password => 'password', :password_confirmation => 'password'