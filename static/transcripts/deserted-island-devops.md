
> *Austin Parker:* It's amazing what you can do in 30 days and someone with 50,000 Twitter followers.
>
> [laughter]
>
> [background music]

> *Matt Stratton:* It's time for "Arrested DevOps." The podcast that helps you achieve understanding, develop good practices, and operate your team and organization for maximum DevOps awesomeness. I'm Matt Stratton.
>
> We have a record setting episode of Arrested DevOps for you today. The most number of simultaneous guests we've ever had in an episode that we actually will release. That's pretty exciting, but that's not the main reason you should be listening. We've got some great content as well. Before we get into all of that fun, we need to have a word from our sponsors.

> *Announcer:* The worst thing about the Arrested DevOps podcast is when it ends. You're left wondering what to do next, what are you going to listen to on your commute home? How do you occupy your time when walking the dog? What are you going to listen to during the quarterly all-hands meeting?
>
> Fear not, dear listener, there is a solution. You need to subscribe to "Software Defined Talk" right now. It's a weekly podcast that recaps all the news in cloud computing, DevOps, and enterprise software.
>
> The hosts, Coté, Matt Ray, and Brandon Whichard will keep you up to date on all things cloud while offering tips on how to optimize your Costco haul and how to PowerPoint.
>
> It's a fun, free-flowing conversation that will keep you entertained and informed. What are you waiting for? Subscribe to the podcast today by visiting [softwaredefinedtalk.com](http://softwaredefinedtalk.com/) or by searching for Software Defined Talk in your favorite podcast app.

> *Matt:* What we're talking about today is what was the very first DevOps conference to take place in animal crossing? That was an event called Deserted Island DevOps. Took place a few weeks ago and I'm fortunate to be joined by the organizers and speakers of this event.
>
> We're going to talk about how the event came to be and what really made it turn out to be quite possibly one of the best virtual events I've seen/been a part of since we've been in this like now times of weirdness and virtual events.
>
> I'm going to start by letting all my guests introduce themselves so y'all get an idea of what everybody sounds like as we go into some madness and mayhem. Let's start with you, Austin.

> *Austin Parker:* Great, thanks. Hi, I'm Austin Parker. I'm a developer advocate at LightStep.

> *Katy Farmer:* Hi, I'm Katy. I'm a Free-Range Developer Advocate. [laughs]

> *Ian Coldwater:* Hi, I'm Ian Coldwater. I'm a Lead Platform Security Engineer at Heroku.

> *Dave Sudia:* Hi, I'm Dave Sudia. I'm a Senior DevOps Engineer at GoSpotCheck.

> *Kat Cosgrove:* Hey, there. I'm Kat Cosgrove. I'm a Developer Advocate at JFrog.

> *Jacquie Grindrod:* My name is Jacquie Grindrod. I'm working as Developer Advocate at HashiCorp.

> *Mia Moore:* Hi, I'm Mia Moore. I work as a Developer Advocate at IBM.

> *Adrienne Tacke:* Hey, I'm Adrienne Tacke. I'm a Developer Advocate at MongoDB.

> *Aaron Aldrich:* I'm Aaron Aldrich. I am a Developer Advocate for LaunchDarkly.

> *Matt:* Fantastic. I really want to start by getting a little bit of context about how did this happen? How did we end up having a conference that took place inside a video game, so to speak, and this particular video game?
>
> Austin and Katy are the wranglers, instigators, and organizers of this event. I'd love to hear from you. How did this happen? How do we get here?

> *Austin:* Oh, boy. I guess the short version is it happened because we were both bored. That's probably the easiest explanation. COVID happened. The world starts going a little sideways. Katy and I start doing Twitch streams.
>
> It's like, "Oh, how do you stay relevant? How do you get out there and get people's faces out there?" It's like, "OK, we'll start streaming." Then, Katy had the idea that Friday should be the fun day where we do something that isn't talking about technology. We played Animal Crossing. It was the first one. I think was the first one. It was Animal Crossing.

> *Katy:* Yeah, the first one was Animal Crossing because I had never even seen the game before and I had many questions.

> *Austin:* Yeah, so we started out. We did some Animal Crossing and stuck with it over the course of the month doing those Friday streams and doing video games. At some point -- I don't know -- a lot of it was, I said, just me goofing around on Twitter.
>
> Like, "Ha-ha. I'm going to build a trade show booth and Animal Crossing." Someone -- I think Paul McLaughlin -- on Twitter was like, "Oh, we should do a conference Animal Crossing. I believe I actually talked about this on some slacks.
>
> The week or two prior to that, I'd been thinking about it. It was like, "It's going to be April 1st tomorrow, might as well throw up a web page and see if it gets any attraction. If it doesn't, I can always say it was an April Fool's joke." Then we got a hundred signups in a day for event with nothing.

> *Katy:* I remember getting a message from you being like, "I made a joke, but now it's real."

> *Austin:* Yeah. I think that's the hallmark of a good idea.

> *Katy:* [laughs]

> *Matt:* I just realized that I'm making a huge assumption that all of our listeners are obviously familiar with Animal Crossing because they're on Twitter, they must have seen all the things about it. How would you describe it in very succinct way for people who are unfamiliar? How would you summarize the game?
>
> [crosstalk]

> *Austin:* ...2020. [laughs]

> *Katy:* It's just a very calm, kind neighborhood building game where everyone is an animal except for you, and you can make yourself kid outfits.

> *Austin:* For me, it's like doing chore. Normally, it's doing chores. Now with the advent of the Internet even on Nintendo it's not very good at that part of the game. Now it's about flipping turn ups into literally millions of bells, which then became currency, so that I can buy really cute clothes. You chop down trees, you harvest things, you fish.

> *Matt:* As you went through this, what really surprised you about doing this event?

> *Katy:* All of it.

> *Austin:* All of it, yeah. I was hugely surprised by the reception. For as little as I planned, there are a lot of...I try to be true to a lot of things I believe about what should tech events be. A big one is that they should be accessible.
>
> Not just in the way that we maybe think about accessibility as engineers or as technical people or developers or whatever you want to call us. When you think accessibility, it could be to have closed captioning. You need to have all these things.
>
> I totally believe in that too. From the jump, I want this to be extremely...I don't want to be a bunch of speakers that look like me. I don't want it to be something where there's not closed captioning.
>
> When I say accessible, I mean you need to be able to find this stuff in unexpected places. If I think back at my life, one of the things that led me to where I am today is that I was able to learn about things in an unexpected way.
>
> I saw something on a street, or I talked to someone, like a chance encounter at a coffee shop or whatever. That flies in the face of virtual events. The way we think about them in this community as being very marketing-heavy thing, or even just events in general, like a KubeCon, or re:Invent, or whatever.
>
> These are all marketing and sales things where the content is there to convince people's managers into paying for their tickets, but really, it's there so someone can sell you something. If you learn, that's a handy side effect, not necessarily the goal of the organizers in a lot of cases, I feel like.
>
> Things like DevOps days, I was really inspired by that. I was inspired to make something that felt like that, but online. Something that felt like an event with a community that was in an unexpected place. We could have done this through a Zoom call, but we did on Twitch.
>
> I think that's one of the reasons that it got us popular as it was, because it was easy for people to jump in and start watching.

> *Matt:* One of the things that I felt really strongly about, shortly after the event when I was processing through this, I was fairly vocal about it, is I said, "Hey, event organizer trying to do virtual events. Dismiss this event at your peril because a lot of things went right with this."
>
> Very little of it had to do with the game mechanics. A lot of it was that philosophy and that thought. I'd like to ask, the keynote of the event was Ian Coldwater who, if you follow them on Twitter, it should come as no surprise that they enjoy the Animal Crossing.
>
> Ian, I'd love to know, when you started thinking about doing this and being a part of it, and you, if I recall correctly, had alluded to something similar before. I think you might have made a comment about doing KubeCon in Animal Crossing or something. Correct my memory. I want to give proper credit.

> *Ian:* It's funny that you mentioned that KubeCon is a marketing event because to me, when I think of KubeCon, I think of the Contributor Summit, getting to hang out with the people who are friends who work on Kubernetes with me, and getting to do open-source work with them.
>
> I missed those folks a lot and I was feeling that a lot when Cook County you got canceled. We created SIG Friday to various community things to stay in touch, but one thing that Kube folks, I know we're doing, we're hanging around on each other's Animal Crossing Islands.
>
> What I was talking about was OK, we have this weekly Zoom call now what if we made a meet-up in Animal Crossing. We're already hanging out in Animal Crossing. Like, "Why don't we make this a thing?"
>
> Matt, interpreted that as me saying that KubeCon should happen, but Animal Crossing's online multiplayer is pretty bad. Several thousand people in Animal Crossing is probably not going to happen.
>
> I wanted to do something not really formal as such, but a way that we could all hang out, and either just talk about whatever or talk about Kubernetes things in game in a way that was fresh and more fun than Zoom because we are all on Zoom a lot. [laughs] It felt different and it felt better.
>
> That was something that I had suggested. When trade show thread that came up, where it's like, "Ha-ha. Let's do a conference in Animal Crossing." Then Matt showed up and was like, "Hey, I heard Animals was put on KubeCon in Animal [laughs] Crossing."
>
> I had not actually thought that big in terms of putting up a whole conference in that. I had just figured that we would have some relatively informal, small meetup. Austin thought way bigger than I did, which was awesome and which is really exciting to see because it was amazing and it went great.
>
> That became a thing that might happen. I was like, "This is the best thing I've ever heard." [laughs] Obviously, this is great. Let's do this. Then, I forgot to submit to it. In another thread, I was talking about this again because it got brought up. Matt was like, "Hey, do you need keynote for that Austin?" I was like, "Yeah. Hey, do you need a keynote for that Austin?"
>
> Actually, that ended up working out OK. I submitted and got picked for that. That was super exciting. I'm so excited and honored to have been a part of keynoting that. It would have been a part of it, period. It's the thing that I've been most stoked about since the world got weird. It was special and I'm glad that I got to be in it.

> *Austin:* I do want to say like I said in the blog, "It's amazing what you can do in 30 days and someone with 50,000 Twitter followers."
>
> [laughter]

> *Ian:* I have never promoted anything I've been a part of so hard.
>
> [laughter]
>
> [crosstalk]

> *Austin:* It helped a lot.

> *Ian:* Normally, I try to just not be that guy, but I was like, "No, everybody has to go. This is going to be amazing." All of you may do a part of this. I have no regrets at all. It was fantastic. I'm glad I got to help some people get to see it.

> *Matt:* When you're in that role, I want to think about in an event like this because this is in some ways very different than other virtual conferences that we may have done and in some ways, maybe not. I don't know.
>
> Your keynoting, you're setting the stage, so to speak, for the rest of the day. How do you do that in something like this that might be a little different than a more traditional virtual conference? The ones that came three weeks before this. [laughs]

> *Ian:* It's funny that you asked that because I feel like everybody's talks were so amazing that everybody, by the end of the day, I had been so thoroughly one up [laughs] which is great. I'm super excited that everybody thought you were so good and that all of the content was so good.
>
> I had a lot of plans for things that were really specific to in-game. I had a script planned out written on the tablet that immediately died when I started my talk [laughs] with reactions marked on it, and Indian costume changes and stuff as part of the talk.
>
> Discovered immediately that talking into a Zoom call while trying to remember the words that you're saying, while driving slides, while doing in-game reactions and stuff on a switch, which is not a super easy process in Animal Crossing for people who haven't played it.
>
> It's like you have to push a series of buttons and look at a bunch of really tiny icons, and figure out which one is the appropriate one that you have to do. It actually requires some amount of paying attention to and quickly, I was like, "Oh, this isn't happening." [laughs]
>
> What I wanted to do was set the tone -- this, I think I did too -- of it being a place that was warm, positive, and welcoming. Austin and Katy did it to just right from the jump. It was an incredibly inclusive, really warm space.
>
> My keynote was about DevOps and Security being able to work better together of approaching one another with empathy of communicating better with each other. I feel like those topics and themes kept coming up throughout the conference. Even if I didn't have as many emoji reactions as I wanted to, the tone stayed and I feel good about that. It was beautiful.
>
> Matt said that the game mechanics didn't matter, but I think that it did because seeing the people in the audience be able to clap, react, and emote in response to the things that I was saying was awesome, and felt much more real, warm, and supportive than what I usually experience virtual cons as on Zoom, which is just talking into the void.
>
> I think that seeing all of your faces on Zoom in the background was great, but seeing all of your faces in-game was also really great. The audience felt that warmth and support. That was awesome. That's what I got to say about that, I guess.

> *Matt:* I think that's a good point. That's a good way to dig deeper onto that comment about the mechanic because the mechanics did matter, but they don't have to be those mechanics. I guess what I was trying to say is what I suspect is a lot of folks would be like, "OK, it was this cutie thing that was in a game and whatever."
>
> I'm like, "No, you're Super serious-type that conference can learn a ton from this." Yes, it doesn't mean you have to host it in Animal Crossing to maybe accomplish that, but take that. What I want people to do is look at those mechanics, look at those things, and look at the outcomes that came out of that, and just not be dismissive of it.
>
> I think you're 100 percent right that I want to just make a make a thought and I want to do less talking on the show than I usually do, but one of the things brought up that is really, really key...
>
> It's a bummer that my co-host Jessica Kerr isn't on the show. She was commenting to me throughout the entire day as she was watching and seeing how the speakers were communicating. One of the things that we have seen as conference speakers is we've lost some of that connection with each other when we do a virtual event.
>
> A mechanic that not everybody would have known is that yes, we were presenting through Zoom, but unlike a lot of other virtual events, where they're like, you join the Zoom when it's your talk. It's you, the host, and maybe some marketing facilitator that's in the Zoom with you. Then, you leave.
>
> We all, for the most part, set and Zoom with each other throughout the entire day. Everybody was very quiet because otherwise you would have been hearing it through the conference, but just even that silence thing really replicated a connection and there was a lot more of that weaving things together.
>
> Dave, I'd love to hear from you on what was your experience speaking at this event? How would you compare it to, I was going to say, other similar experiences? I don't know if you have a lot of similar experiences. [laughs]

> *Dave:* That actually is a great intro because I was sitting here before we started this just reflecting. For me, this was the best of the Internet. There was a pretty extensive talk in the Discord while things going on.
>
> There's some very dark or horrific parts of the Internet, but I was just thinking...I dreamed something awful forums in -- I don't know -- a long, long, long time ago in the early 2000s. I remember getting together with some people from this Internet forum.
>
> We went ghost hunting and ended up getting our licenses taken down by some county sheriff in the far reaches of the Bay area because we're trespassing on private land that we didn't realize. That's what this reminded me of. [laughs]
>
> I got told by someone, "Hey, actually, I know this dude from the something awful forums. He's putting on a DevOps conference in Animal Crossing." I went, [claps] "I'm in." [laughs]
>
> [crosstalk]

> *Austin:* Where is this? This is the most successful gun project in years.

> *Dave:* Yeah, for real. This and "EVE Online". [laughs] I got to be on this. He sent me the link and I went. I submitted a talk and it was like, "OK, this is just a fun, weird thing that I'll do. Here's the talk idea I have. OK, great." I put it in.
>
> Then it ended up being this amazing, wonderful thing that I get to spend the day with these people that I've never met, that are random people from the Internet, essentially, that I got to meet for a day and spend time with. It was great. It was one of those serendipitous things that could only happen this way and it was so fun to do.

> *Matt:* There were some -- I don't want to say technical challenges, but there was...I do recall just for people listening. Zoom and Davis have funny thing with this event. As I'm recalling correctly, you thought that the video was going to be shared. He's like, "I got my background, I got all of this stuff," and they were like, "Yeah, by the way, no." [laughs]

> *Dave:* Yeah, because I did coordinate with my outfits in real life and in the game. I have blue shades in the game in real life. I found this jacket in the game that matches jacket I have [inaudible 21:16] first store a while ago. It's like, "This is perfect." I was all set and then, "Oh, OK." That's fine. I still made the hero image advice in my cool jacket.
>
> It just wasn't the cool jacket I really am. In terms of presenting, like Ian said, getting everything sync up and trying to think about it, I think it seemed to vary between people either not doing any reactions or I felt on my part, going back and I re-watched it later.
>
> I was like, "Oh yeah, that long pause there as we're trying to go, 'Oh, what reaction do I want? Oh, that one. OK.'" "OK, here we go. All right, OK, good. Now, where was I on the top?" and going again.

> *Matt:* There's a point in my talk where I'm stuck at a reaction for three minutes, and I totally didn't realize it was happening. I watched it later and I'm like, "Oh, yeah. OK." Turns out that being a pro-animal crossing conference speaker is not a thing that any of us knew we would aspire to be, but we all do now.

> *Dave:* We just need practice. It's all what it is.

> *Matt:* Yeah. We'll talk about that at the end about when we're going to do this next one because this is how these things get committed, Austin.
>
> One thing I'd like to introduce and hear from some other folks that we kind of go but bring it out. Jess had said to me. She said, "The feeling I get from animal crossing is that it is a really safe place for exploration within the game."
>
> That's, I think, a fairly real assessment. You can't lose a life. You can't lose. It's very hard to mess up. I do it all the time. There's a lot of exploration.
>
> [crosstalk]

> *Matt:* Yeah, you do, right? Even if it gets bitten by a translator, you go back to the airplane. It's all good. What is it that when we think about this as a vehicle for talking about our teams and our things that we're building, the lessons we can learn?
>
> Because it seemed to me like, I pitch just a talk. Then I saw everybody else's abstracts and went, "Oh no, I need to go back and I need to actually connect this because I can't get one up." I did get one up by the way, but not for lack of me trying.

> *Participant:* Didn't we all feel that way?

> *Participant:* Maybe.

> *Participant:* I know I did, and every other person who said something has been like, and then I saw everyone else is talking.

> *Matt:* [laughs]

> *Participant:* Oh no, I got one up.

> *Matt:* It's force multiplication. When we think about that, what are maybe some of the things that come to mind about why is this a great metaphor for DevOps? That's a thing for everybody to think about and I will ask you all later.
>
> Kat, you have a lot of experience with online communities, you worked in that part of the industry. We all do this thing. I'm interested there was a whole other side of this event. That was the participants interacting with each other.
>
> One example, it was a facility...Austin and I were chatting, maybe a couple of days before the event, and I said, "Would it be wacky if people decided to have virtual wacky parties?" Thinking it was a goofy idea.
>
> You know what? People totally did that and they hosted people. They came together, and they made friends and stuff like that. There was a lot of interactivity. Because that's the secret sauce and everyone's trying to do with virtual events, why did it work so well this time?

> *Kat:* I wish that was something we could figure out how to recreate, and still have it feel organic and wholesome. A real connection like it did with this, but I don't know what the secret sauce is there. It felt like magic, honestly. I don't know how we can make that happen again. It was the most pure thing I have seen in tech in a long time.
>
> Maybe, it's something just about the community in and around Animal Crossing that made it work so beautifully. I don't know if it could actually be recreated with virtual conferencing software. I've seen a few platforms where you have a virtual expo hall. There's a booth and there are digital people standing around with corporate-branded T-shirt on it, but that's not the same.
>
> It doesn't feel as intimate, I guess, as going to somebody's Animal Crossing Island and they've spent the time, hours, and energy lovingly creating a little movie theater or something on the third floor of their Animal Crossing home that they had to grind for hours and 1.2 million bells to get.
>
> If they're not time traveling, that's a serious commitment. I don't know. There's a lot of genuine organic human work for no profit out of the goodness of their hearts and just wants to connect with other people that made it happen. I don't think that that's anything that could have...It can't be manufactured. It had to happen organically.

> *Participant:* I just want to say this was the actual open-source development of conferences. It was people just giving their time and effort because it would be wonderful.

> *Participant:* I think Kat's point is excellent. I guess there will be two parts. One, it's a lot easier to form a community around something new just because it's new, shiny, and exciting. It's a little playing field. This was a very low event where it wasn't necessarily about people.
>
> People aren't coming in as experts. I don't think that was the tenor of the event. I don't think it was the tenor of the community. There are people who are well-known. The fact that all of our speakers for the most part are DevRel, you get a certain type that wants to do these things.
>
> In terms of people participating, a lot of was just me getting out of the way. It was Katy and I saying, like, "Well, let's give people a space and just let them play in it. They'll figure it out." The Watch Parties wasn't something we deliberately did.
>
> It was, "Oh, we should have a [inaudible 27:54] filled with talk so we can better do Q&A." Then people all came in there and it's like, "Oh, hey. What if we do Watch Parties?" I was like, "OK, yeah, sure. Here's the channel." People will do stuff if you let them.

> *Ian:* I think though that Austin and Katy aren't giving themselves enough credit for the environment that they actually did a lot of active work to create. A lot of thought and a lot of care was put into making that space inclusive, wholesome, welcoming, accessible, and lovely.
>
> I don't want y'all to downplay that because I actually think that it matters and you should get credit for that work. If we're talking about open-source, we can all see if we look at open-source the differences in the ways that open-source communities play out that are just like, "Whatever. People will just do whatever."
>
> The open-source communities that play out with a lot of intention and care, and put into people being good to one another and creating environments that are welcoming to people. That really happened here and I want to give some credit for that.

> *Katy:* Thank you, Ian. I appreciate that because no tiny amount of work to just be kind. Sometimes people need a reminder. They need to know that you expect kindness. We're very lucky with the community that showed up, but you're right that it takes that tone in the first place to attract those people.
>
> At least on my part, I like to think I'm everyone's friend. Whether they know it or not yet, it's not a factor for me. [laughs] Setting up that environment and letting people know, this is going to be a friendly space where...
>
> That proved itself when people volunteered to help us moderate the channels and things like that. We ended up just with a lot of help because people knew what was expected of them in the community.

> *Participant:* I also want to say on that note. There was tactical things that went into it too. Shout out to Kat for reminding me that night lots of thing that exists on Twitch.
>
> It was a little aggressive at first. [laughs] I think a lot of it was...If you're going to have event like this and you're going to be very public about you're going to have a lot of public channels to talk in, then yeah, you absolutely need good moderation and I cannot...Kudos big enough in the world to our volunteer moderator team.
>
> They all did amazing on an extremely short notice and were just fantastic. One thing I wanted to call out though, one thing that I think helps with the community aspect is...This is maybe relative, like a Twitch thing. You have Twitch Chat.
>
> You have this chat experience where the viewers are expected to participate in and give immediate feedback, and clap, and make noise, and just chat. That gives it a feeling of liveliness that I miss certainly in every virtual event I do where, like people have said, you're just talking to a camera.
>
> Also, it gives us the most adorable moment ever when Matt's kids came into chat. [laughs]

> *Matt:* And they almost got banned because nobody knew they were my kids. 10-year-olds that are being wholesome also look like trolls apparently if you don't know that's what they are.

> *Male Participant:* They did a very good job supporting you.

> *Matt:* Kat, I just wanted to...You talked about all the preparation. What kind of extra prep as a speaker...Because I know I did some stuff. What really went to your homework from an Animal Crossing perspective for doing this event?

> *Kat:* Generally, when I write a talk for a conference, I don't actually work on the slides and start practicing my talk until two or three days in advance. Maybe that's terrible. I know lots of people who do that and lots of people who think that I'm an irresponsible monstrosity for it.
>
> For this conference in particular, when the list of other speakers came out, I was so incredibly intimidated that I went hard on it. First of all, I bought Animal Crossing. I didn't actually have it. I bought it. Jury is still out on whether or not I can expense that. We'll see. I've asked, [laughs] but I wrote that talk two weeks in advance and practiced it a ton.
>
> Which is unusual for me because I generally speak pretty off the cuff. I just get up there and wing it. Usually I'm talking about something I know well enough that I don't have to write myself a script.
>
> For this, I was terrified of messing up in front of several people I very much look up to, and also what was turning out to be a much larger crowd [laughs] than I expected. It was a lot more prep than usual and actually getting Animal Crossing, which I am now addicted to. Thanks for that.

> *Female Participant:* Also, everybody needs to know that Kat showed up with a million bell crown on. It's very important.

> *Kat:* That's true. I did do that. I grinded pretty hard. I got really, really lucky on Stonks on the turnip market and struck it rich. I didn't have cute clothes otherwise. It was the only cute thing I had, so I thought I'd flex on people [laughs] a little bit.

> *Male Participant:* I really like when you got on stage with the crown, and people on the Twitch Chat were going like, "She's flexing on them all."

> *Kat:* [laughs] It's the one thing I had.

> *Male Participant:* This is why...
>
> [crosstalk]

> *Female Participant:* That was actually me. I was like, "Oh my God, that's the flex." Because you hadn't joined the island before your presentation. When you got up there, I was like, "You have the crown? No way. I'm still trying to pay off my mortgage. Mortgage comes first. Crown is way down the line."
>
> I thought that was so impressive. Now knowing that you had just gotten it before the conference, I can't imagine the work that went into that. That's amazing. [laughs]

> *Kat:* I just wanted to look pretty. [laughs]

> *Matt:* This may be the first conference I've ever been a part at where the speakers all talk about their finances in this depth, even though it is virtual currency. That's probably just as well. Jacquie, what drove you to decide that this was a thing you wanted to do?

> *Jacquie:* That's a great question. My [inaudible 34:57] it in chat to our team. It was like, "You guys like conferences. You guys like Animal Crossing. Why doesn't our team do this?" I was like, "I have no idea what I'm going to speak about, but I want to do this."
>
> Then I got pulled into this hackathon. My teammate was like, "We're going to build a videogame." I was like, "Excuse me? What? No, we're not. In three days? No, we're not." We did. It came down to we finished the videogame, we presented on Friday. I think the CFP closed on Sunday.
>
> I took Saturday to just sleep because I did 16-hour days that whole week. Then Sunday, I was like, "I don't know what I'm going to speak about. This seems like the most meta feat I could do. I'm going to talk about building a videogame from inside of the different videogame. [laughs] I was falsely in my head let's just do it.

> *Matt:* That's interesting. You talk about you manager popping it in, because I've...Kat talked about can I expense Animal Crossing? The way on the professional side of this, it's been very interesting to me to also see how it was responded to.
>
> I just started a new job. I didn't remember the timing of this. I probably did some interviews after I started the new job. Part of me was like, "I'm going to keep this a little under the radar because I don't know. I work for a big giant company and I work for government clients and things like that. Is this part of the image?"
>
> I actually sent it to the Red Hat social media people, and they were like, "Oh my God. I'm going to tag the Animal Crossing account. Maybe they'll pick it up." I was like, "Yeah, I don't think it's going to happen."
>
> It's been very interesting to see how something that seems off the cuff struck a chord with a lot of professional folks, so to speak as this opportunity. I think that's interesting. Then also the press. This got a lot of attention. Jacquie, you had commented on that [laughs] on Twitter about the articles.

> *Jacquie:* I was like, "If I can go back and tell university Jacquie that 'Vice' mentioned something we did, and then somebody else wrote an article about a thing I wrote, I don't even know."
>
> To your earlier point about what is this crossover between DevOps and Animal Crossing. A little bit of this I think is evident with my team too in terms of how HashiCorp is a very DevOps workflows focused company. We try to enable workflows. Kindness and humble are some of our values.
>
> A lot of that overlap between DevOps and Animal Crossing is that you're building this space where you want to empower people. You want them to be welcomed and to feel like they can come here and build their things and do what they need to do.
>
> I think it had that crossover of I want to help you to build things. That's why I'm here speaking. As a DevOps practitioner, I wanted to build things that help my dev build things and not feel this pain of deploying or building pipelines or manual builds that don't work all the time, and just stuff like that. I think that's where a lot of that overlap is.

> *Matt:* I keep coming back to thinking about this, for a lack of a better word, I'm going to call it speaker camaraderie. In the greet room time before this, that was a lot of it. We're like, "We're all talking to each other again. Hey, miss you all. It's been a couple of weeks," and blah, blah, blah.
>
> That comes back to that collaborating and building. When I realized a week before the event that my talk needed a better title and everything, Jacquie was like, "What about this?" People were trading slides. "Ooh, those are amazing. I got to step up my slide game. I'm going to take your thought. I'm going to do this."
>
> It was easy because Austin had set up the Discord before. That's something that usually tends to not happen with these events. You really don't have a mechanism to interact with the other speakers before it happens.
>
> Somebody said something the other day on Twitch, somewhere I was talking. They said, "How do you replicate the 'speaker dinner' in virtual events?" I think that's how you do it was like that. There was the opportunity from that. Even though it wasn't built for collaboration, but that's what we ended up doing. That's a key thing.
>
> Adrienne, we haven't talked to you yet, [laughs] gotten your two cents. Especially thinking about the things we've talked about in the threads, what stands out to you about your experience with this or what the event was about?

> *Adrienne:* I really enjoyed everyone's focus on bringing the Animal Crossing jokes and world and everything about it into their talks. I know that when I saw the CFP, which was actually shared with me by Svetlana. She's the creator of the Tulula app that does the aggregations for call for papers.
>
> She sent that to me, and she's like, "I think this would be something you're interested in." I'm like, "Oh you bet I'm interested in this." When I read the CFP, I wasn't normally thinking of what do I want to talk about. I actually said, "What is it in Animal Crossing that I could make really awesome parallels for?"
>
> Because the CFP seemed to focus on the more creative you are, the better you are. I really wanted to be a part of it, [laughs] so I'm like, "I'm going to give them such a creative CFP that they cannot turn it down."
>
> That was my mindset going into it. When I saw everyone else's, same thing with the emotes, and all of those things together made it really special and something that I'm always going to remember. A lot of us speak. A lot of people think it must be awesome to go traveling all the while and going to all these places, meeting all these people.
>
> Even that for me personally and honestly and genuinely, this conference talked all of that for me just because it was such an awesome, novel idea. Again, like everybody else, I'm super honored to be a part of it.

> *Matt:* That's interesting when you said, "I am going to nail..." I think that's the thing. We've had this as a little bit of a thread through this conversation almost where everybody was like, "I am bringing my super A game to this event."
>
> Which might sound a little bit funny, because normally it'd be like, "I'm going to keynote velocity. I'm going to be keynoting..." I'm going to be doing this thing in front of all these kind of thing, but this was like, "But this is the Animal Crossing event. I'm really going to bring it."
>
> One of the things I'm curious about -- and it open this up a little bit, and Austin you might have some insight -- is we talked about the people who were watching or participating. There was that thought of maybe part of the reason that participation was so, for lack of a better word, wholesome or whatever was because that's what Animal Crossing people are like.
>
> I don't know how many, if even the majority of the...What was the number of viewers, Austin? About...

> *Austin:* 100,000.

> *Matt:* Were they all people that were really familiar? I think there were some that weren't. I'm interested about that too. Was this just did we find that slice of DevOps/Animal Crossing people and they all were there, but that was all of it? I think that Venn diagram is a little different.

> *Austin:* In talking to people post-show, certainly there was a ton of people that were not Animal Crossing people that showed up. I know a lot of people who were like posting posting this. I got a friend that works at Postmates. He tossed it into their Slack in the general channel, which is however many thousands of thousands of people.
>
> I think there was a lot of like, "Oh, these are tech people." Maybe they're not Animal Crossing people, but this is such a interesting concept that they at least tuned in for a little while, watched a talk or two.
>
> I also think we got a lot of people that weren't tech people. We were charting...The best I saw us do was third in a category for concurrent Animal Crossing streams.

> *Matt:* [laughs]

> *Austin:* Which is big enough to get people dropping in. Who knows who's watching Twitch in the middle of the day looking for Animal Crossing streams?

> *Matt:* [laughs] Looking for Animal Crossing streams, yeah.

> *Austin:* I hope it was people who got inspired, that saw this and were like, "Huh, that's interesting. You can do this as a job?" It's something different than the usual affair, I guess. Other than that, I don't know. The biggest thing I would say it does feel very special and unique. We caught lightning and put it into a bottle.

> *Ian:* Also, even within the subsets of tech, there were a lot of security folks I know who showed up to that one who were not familiar with DevOps or DevOps philosophy or DevOps culture or anything like that.
>
> That was their first exposure to it and they were super stoked about it. It attracted a lot of people who might not necessarily watch a DevOps virtual conference.

> *Matt:* Mia, I know you have a lot of thoughts around community building and when that comes in. That was some of the things that you talked about. What has stood out to you? What are the things either that you learned or that you were proven correct? [laughs]

> *Mia:* I think what everyone else has said about this just being a once in a lifetime, we try to in a very genuine way, so it happened to work kind of thing. That's absolutely true. I don't know that it's replicable for future events to say, "Be genuine and do these things and it will turn out exactly as good," but there's still a lot that we can learn.
>
> Earlier, I don't remember if it was you or someone else who mentioned that maybe the community was so positive because the Animal Crossing community is so positive. I think that's a good point. A lot of people who tend to play it do it as a form of relaxation and things like that.
>
> If you've gotten deep into Animal Crossing, you also know there's the dark side of the community. Which is like, "I only want the cute villagers. I'm going to kick the ugly ones out." People can get a little nasty about Animal Crossing, which is funny because to me it's such a...
>
> It's been a long time anxiety reliever for me is like playing Animal Crossing at the end of the day, and doing my little methodical chores, and talking to my neighbors and everyone's friendly and whatever.
>
> Then, as with anything, there's people who want to get the perfect whatever. Sometimes the methods can be a little meaner, or they charge millions of bells for a village or things like that. I think with any gaming content, especially on Twitch, there's always the fear of getting trolls, getting the people in Twitch Chat who tend to be a little bit meaner.
>
> Vibe setting or tone setting is really important. Maybe I should say tone instead of vibe. [laughs] Katy did a great job at that. Austin did a great job with that. From the first talk, people understood what we were trying to build here and what was and wasn't going to be tolerated.
>
> I was also really nervous submitting for this because I love Animal Crossing so much. I'm also a newer speaker. I was like, "I don't know that I have a lot of experience here. I don't know that this is where I want to start. This thing that I care about a lot and don't want to mess up."
>
> When all the speakers were starting to be announced, I was like, "Oh my gosh, there's some big names in here. There's people I've seen speak before. This is terrifying." I was really excited at the same time because were on the Discord and were emailing back and forth and whatever.
>
> Once I started seeing pieces of other people's presentations, I was like, "I can go as hard on the Animal Crossing as I want to. That's encouraged." I was definitely nervous that I was going to show up and be like, "Animal Crossing is the best, right?" Everyone's going to be like, "It's just the method for the conference. We're not that excited about it."
>
> Tthat wasn't it at all, which was great. I am old-school Animal Crossing fan. I have been playing since 2004, I believe, because that was the summer that I listened to the "Phantom of the Opera" soundtrack from the movie and played Animal Crossing literally all day. I was definitely an indoor kid.
>
> Since then, it's been crazy to see the new game just blow up everywhere. With the online functionality existing in a lot of an easier way, it's just a whole other game. There's a whole other side of it that's been unlocked.
>
> I don't know. I think part of it is setting rules, setting guidelines on what the tone and what appropriate behavior should be in the space. I also think it's just an organic thing that happened because it was at the beginning of when Animal Crossing came out. Everyone was stuck at home anyway. There's a lot of external factors.
>
> For the record, I think it would have gotten great even if Animal Crossing hadn't just come out because there's a pretty strong player base. I think it would have gotten great even if we weren't all stuck at home because Animal Crossing would still have been pretty popular.
>
> Even without all that passion around the game and being stuck at home, there's just people that would be like, "Oh, this is interesting. I want to see what's going on here."
>
> After my talk, my partner came over after he made sure I was off. He was like, "Everybody loved it." I was like, "Who's everybody?" It turns out he had posted it on Facebook. He had told people my talk wasn't technical so they could tune in even if they weren't technical." I'm like, "Oh my God."
>
> He had posted it in his work Slack. He's part of an engineering organization. He said all of them watched it too. Then a lot of them stayed for the rest of the day. I really appreciated the...No matter who he sent it to, they seemed to have positive feedback.
>
> I got a lot of my friends being like, "Oh, so this is what you do?" and finally understanding my job. My parents got to watch it and they thought it was cool. I just feel like it bridged the gap between a lot of communities that don't normally interact with each other. It was just a really cool experience.

> *Matt:* Thinking about that, with the different communities interacting. I think there was a pretty good...I don't want to say good. Yeah, it was good. It was pretty great cross-section of discipline and of focus area and things like that. That's where we go back to Aaron for a minute. Aaron laying in some hard core resilient stuff in a cutesy little avatar, which is rad. [laughs]
>
> I'm going to share this because it's a safe place. Maybe it was a couple of days before the conference, Aaron was like, "I need some help cutting some slides." He and I do this all the time and everything. He gave them slides and I was like, "Slide 30 is when your talk starts." [laughs]
>
> The thing is, with ideas around resiliency, you almost have to do that. When you're getting into that, and where I want to go back to this had to do with the interleaving of talks and why things like single track is so powerful, but then all of us...Aaron, I know you have thoughts about this. I'm just going to let you talk.

> *Aaron:* [laughs] I like that. I'm going to end this without asking a question and just let you talk. Good luck. [laughs]

> *Matt:* [inaudible 50:55] talk about that.

> *Aaron:* Absolutely. I started with about 60 minutes' worth of content. I'm like, "Matt, I need to fit this into 25 minutes long." [laughs] It worked out really well and we all got there. I think he talked about the single track. I'm a huge fan of single track conferences because it lets somebody that's been and can build on it. Inevitable, it happens. I don't know.
>
> Whether it's some coincidence or when we're curating talks, we happen to do this subconsciously or consciously, but inevitably, these themes start to emerge over a single track, especially if the speakers are there and participating which is the biggest aspect of it. Why DevOpsDays, I think, often works so well is because you have these speakers that are there.
>
> You're like, "I've seen the three talks before mine. Oh, I can see how that relates to what I'm about to say, so let me tie this in. I can bring the audience on the journey with me." Rather than just, "Here's my 30-minute spotlight and I'm out."
>
> You can actually tie the whole thing in this longer journey which helped a ton for me. I had two spots on my talk that I was like, "Yeah, there's a whole other 30 minutes I could talk, but Matt, just gave that talk. Just go watch that one again if you missed it.
>
> "There's a whole other 25 minutes I could fit here, but Katy's about to talk. Just go listen to Katy talk about that. That'll cover that portion of my talk well."
>
> What sucks is I can't do that the next time I give this talk and when I have to figure out how to fit this content in, but that's a hugely powerful thing of single track conference, and especially ones where speakers are around and present for the entire conference as well.

> *Matt:* One of the very interesting things that happened as the event was occurring is I completely changed my opinion on prerecorded talks because of this event, for the most part. I'm running an event that is pivoting to virtual. It's an event that is always very participant-forward, so we've been trying to figure out how to optimize for that.
>
> I had done several virtual events before this. I was being very stubborn and saying you cannot convince me that there is anything of value with me doing this live because there's no feedback, there is none of that stuff.
>
> All you're doing by doing it live -- and I'm not talking about this event -- this event, there was obvious reasons to do it live. For most of them, the only thing that comes from doing it live is added complexity of having to stream it and deal with this and all these things. I'm not getting anything out of it.
>
> Then this event happened and I went, "Ah." But if you can do this, then...Because I think that's the thing is that idea of being present throughout. It doesn't necessarily have to be single track. If you have a curated track, those things can work.
>
> I want to think about what are the things that other events can learn from? I think this probably will be primarily from the perspective of speakers because that's what our interaction was. What can they learn? What lessons should be learned for future virtual events that don't necessarily take place inside Animal Crossing?

> *Katy:* Earlier, Adrienne said you wanted to write such a creative CFP that we couldn't say no. That's exactly what happened, first of all. Mission accomplished. It felt like we were so lucky with the CFPs that we received.
>
> There were no bad ones. [laughs] It was super tough to narrow it down and we kept saying, "Can we fit one more talk? Can we fit one more talk?" [laughs] Until we thought one of us will...

> *Austin:* Two more talks?

> *Katy:* Yeah, we did... [laughs]

> *Austin:* We did two more talks, actually.

> *Katy:* Yeah, we kept expanding because it felt like people were pitching the right ideas. When it's about community, when you're going hard on the game metaphors -- as a former writer, yes to game metaphors always -- [laughs] the stronger you can tie it in, the better.
>
> Also, I think one of the things we can learn is what you said, "I want to write a CFP so creative that they can't say no as someone who submits a fair number of proposals." I don't take that attitude to everyone because I don't care about every conference the same amount.
>
> Sometimes, I'm like, "I don't I think I have a CFP that I could throw at this." This idea that like, "I want to be part of this enough to make a better proposal." is, I think, something to learn from.

> *Ian:* I think that was part of the pressure of it coming up and what we're all talking about, how we felt like we had to up our game because I submitted one and I was like, "This is a talk I have an idea for. I'll add some Animal Crossing flavor."
>
> Then it got accepted, but when I put it in, I was like, "10 people are going watch this." [laughs] It's OK that I put in this thing that I'd have an idea for and then it became clear that more than 10 people were going to watch this. I was like, "This has to be good. I put more thought into this for the talk I gave at KubeCon and certainly, more people watched it."

> *Male Participant:* I think this ties in to your earlier question about how this all loops on DevOps and what we can learn from all of it. This group of speakers seem to be in contact well before the conference started. We had this discord room, and we were all in contact and started sharing ideas for this talk.
>
> The passion just built on itself. Everyone that was, maybe, like, "10 people watch this talk." and like, "Oh, you built a whole theme for Animal Crossing? You've got the font. OK, let me take that too." There was all this collaboration.
>
> This community just among the speakers, they got built up and built this momentum that everyone brought their A-game because we're all in it together and wanted this thing to be successful, which was huge. Building that connection, building those little communities that want to drive this forward and giving them, just enabling them to do the best they can, that's the best takeaway here.
>
> Your speakers do all talk to each other, and then just make the thing that you want to make and make it as cool as you can. That was a huge pressure for me to bring my A-game for my talk too.

> *Female Participant:* It was fun, novel, and something that people were excited about which I think matters a lot. It doesn't have to be Animal Crossing, but in a moment when it's the 15th GoToWebinar of the week or whatever, those got less enthusiasms and like, "Oh, this is literally something new, exciting, and awesome. We want to bring our A-games for this."

> *David:* There's something to that, like the metaphor of getting the right people on the bus. Coming into the Zoom at a certain point, I realize, "Oh, these people all know each other from other stuff." I mostly know them from seeing them on stages, but I immediately felt part of the community and group.
>
> I think that this has been discussed a hundred times tonight of how welcoming this community was to everyone and how well that was done. That was a big part of it as well.

> *Female Participant:* There's a lot of talk about people feeling when after wanting to do that. I talked with me a little bit about this, but coming in and with what David just said too, these are a lot of people including you, hi, that following was really, really scary.
>
> Coming into this are just like, "I don't want to worry about getting one up. I just want to keep up because I know that a lot of these people are people I look up to often from an attendee-view to a stage, quite literally looking at." [laughs]
>
> Coming in this time, there's just so much preparation. Then as mentioned, the more we saw, the viewers growing. When Austin shared we hit a thousand people, I was just like, "I would love to speak even if I don't know anything about. No." [laughs] It was nice seeing all that come together and everyone's support.

> *Kat:* The speaker list was definitely a huge motivation for me working way harder on this talk than I normally do. It was also that I was getting to talk about something that was just fun for once, instead of having to fit in a product pitch or having been required to use my employer's tools.
>
> I did talk about something I'd built in the course of my work at JFrog, but it was the part of that thing that I never get to talk about because it's not technically impressive. It's just fun. It was an opportunity to teach people and it made it. It felt like effortless to work on even though it was way more work than I usually put in on a talk.
>
> I don't usually provide resources or make custom slides. I use whatever deck the marketing team says I have to use. It was also weirdly satisfying to get accepted over my boss who has clout. I don't have clout, so I was sure that he was going to get in with his clout KubeCon talk.

> *Matt:* Does he have a million-belt crown though? I don't think...

> *Female Participant:* He does not. He does not, but the next time it's for sale on my island, I'll let you know. You can come grab one. I still have not bought one even though it's been on my island because - I don't know-- I'm equally responsible in games where I pay bills as real life.
>
> [laughter]

> *Female Participant:* I'm not fun in that way. My husband's like, "All you ever put...Your favorite type of video game, your favorite genre video game is video game where you also pay bills." Because I also really love The Sims. He's like, "Why do they have bills in these games?" I'm like, "I don't know. I love it."

> *Female Participant:* Even The Sims?

> *Female Participant:* I don't know. I feel like it's because I'm a Virgo, but I blame a lot on being a Virgo.

> *Female Participant:* [laughs]

> *Female Participant:* Who knows? I wanted to go back a little bit to talking about making this event live. I do a lot of content for my day job for Twitch TV. I'm usually behind the scenes of what we do on the IBM Developer channel. We try to make fun technical content.
>
> You may decide whether or not we're successful, but I encourage you to check it out because we are open to feedback. It's been a fun learning experience because I've had to push back a little bit on pre-recorded content going on Twitch.
>
> I think there's a viewer expectation that it's not prerecorded, which might be different in other communities. Like on YouTube, I have seen prerecorded talks presented as a "live" event, and I don't think it's gone terrible or anything.
>
> On Twitch, people expect a messier experience, like something might go wrong and that's OK. Especially with technical content. You might run into a bug that's literally just a syntax error that you should know better than this, but because you're coding in front of people, shit happens.
>
> I think that there is a lot of honesty to doing a live content like that, because it can be scarier in a lot of ways. It's like doing a live demo during a talk. You're praying to the demo gods. You have a backup, but it's really cool when it works. In the same way, I think that it's more powerful if you can get people in the virtual room together.
>
> We talked a lot about having the speakers in our Zoom room and having that connection there, but I also think us being present in the Twitch chat or in the Discord chat was important, not just for our own talks but for the entirety of the day. I think the large majority of us were able to take the day off and just do the conference.
>
> I don't know if I would have done that if I wasn't a speaker. I don't know that I would have felt like I could take the time for a virtual conference. I think that's something a lot of people are running into. It feels like, "Oh, it's a virtual conference. I can have it on my second monitor."
>
> That's not really how conferences work. That's also not how work works, so you end up doing both half-assed. To me, made me realize if I'm going to attend a virtual conference, I want to spend my day on it. I want to treat it like I'm flying out.
>
> It's all the good parts of a conference without having to stay at a Holiday Inn and try to eat a continental breakfast and deal with whatever shitty parts of traveling and all that. I don't know. There's something to everyone being there.
>
> I think you can tell, as an audience member, when it's prerecorded and you can tell when the people just aren't as involved on the day of, even if it took a lot of effort to put together behind the scenes. I think there's magic to live content if it's done well and if it's done right. Obviously, this was a good example of it.

> *Matt:* That being said, my question, Austin and everybody else is, a sequel, is it going to be Empire or is it going to be Highlander 2? [laughs]

> *Austin:* Oh, good Lord. I've put as much thought into this as I put into the original idea. Right now, my tentative plan/thing in my head is to do more...There's two parts. I think we need to do another one of these, obviously. Like next year, a big one.
>
> Over the summer into the fall, we'll probably be doing some shorter still Animal Crossing theme. Maybe we'll branch out into other games. I don't know.

> *Matt:* I don't have time to learn another game. [laughs]

> *Austin:* Minecraft, I don't know. No, not Minecraft. Fortnite. Kids love Fortnite. Let's see if we can get in top 10 Fortnite streams on Twitch. They have that creative mode now after all.

> *Female Participant:* There have been giant shows in Fortnite.

> *Austin:* Let's call Epic and let's...

> *Female Participant:* Use Fortnite.

> *Male Participant:* Does Imbriaco still work there?

> *Austin:* Probably. They had a 50-story tall Travis Scott, so we can get a 50-story tall Ian.

> *David:* You make me young again, Austin. I'm back on Twitter now. I'm going to know how Fortnite works.

> *Austin:* I'm just dragging all sorts of people into the information era.
>
> [crosstalk]

> *Female Participant:* I refuse.

> *Matt:* This is basically the way that I'm relevant to my kids. This is what it took for my children to watch me give a conference talk was to do it in Animal Crossing.
>
> [crosstalk]

> *Female Participant:* My kids also watched this one. They were super stoked about it and they don't always.
>
> [crosstalk]

> *Aaron:* ...watch too, but half because we could just put it on TV, because it was on Twitch, which was amazing.

> *Male Participant:* One of the worst things I've done in my career, or at least my current iteration of my career is I have gotten multiple people at my job that weren't on Twitter into Twitter. [laughs] I feel so bad about that. Pray for me.

> *Male Participant:* I completely quit it, but now I just keep it in this circle and that's OK.

> *Female Participant:* Do you ever think like, "Ah, this is why I'm going to hell."?

> *Male Participant:* That's probably one of the reasons.
>
> [laughter]
>
> [crosstalk]

> *Austin:* It's really touching to hear how much work people put into this and I feel bad because 90 percent of what you all saw in that stream was done literally the week leading up to it. This started as just a random thing.
>
> I didn't even tell my job necessarily until later that month when it got popular and there was several hundred people signed up. I was like, "Oh, well, will you all pay for some stuff? Will you give me money to get good captioning?" Then it turned to 800 people, 900 people, 1,000 people, and it's like, "OK, I have to actually put in effort now.
>
> That sounds bad, but a lot of what people saw was actually very much not last minute, but it was very much done in that [inaudible 66:45] . I don't know how to do a lot of this until I did it. I still don't know how to use a vector illustration tool, but I figured out enough to make a rounded curve and to overlay some colors on things.

> *Matt:* That's probably the best metaphor for DevOps you got right there. Which is it comes from the practitioners. It comes from the doing. You learn by doing. You learn by going.
>
> This has been a great conversation. Before we wrap up with our usual ending stuff...Normally we go around and ask everybody where we can see you and all this kind of stuff, but that will be a whole episode in itself.
>
> That being said, does anybody have something they want to plug? Any upcoming...Speaking somewhere? Or, I don't know. You got good turn on prices, which won't be relevant a week from now when this gets published but I had to get something in.

> *Austin:* The only thing I'd say is keep an eye on [desertedislanddevops.com](http://desertedislanddevops.com/) for more information and a schedule about Deserted Island's sessions, which is the tentative name for the next thing, and of course for Deserted Island DevOps 2021.

> *Matt:* The only thing I have to plug is another project where I'm going to try to emulate Austin and learn how to produce things, but not quite at the level of him. We have a new thing called Irreverent DevOps Party Games, which is, for lack of a better word, a live streamed gameshow with a DevOps flavor.
>
> If you go to [devopspartygames.com](http://devopspartygames.com/), you can read about it. It's going to be online at [twitch.tv/mattstraton](http://twitch.tv/mattstraton) on Tuesday, June 2nd at 8:00 PM Central. Kat is going to be one of our first contestants. This is either going to be amazing or terrible. Tune in and find out.
>
> Speaking of which, you can tune to [arresteddevops.com/desertedislanddeveops](http://arresteddevops.com/desertedislanddeveops) -- because you can tune it to a static website -- for the show notes of which there are many and many, many guests listed.
>
> If you go to [arresteddevops.com/iTunes](http://arresteddevops.com/iTunes) and leave us a review on the iTunes store, this theoretically helps people find the show better from what the SEO people tell me. If it's a particularly clever review, we may read it on the show, or we may not.
>
> If you're into things like Spotify and iHeartRadio, you can find us there. Find us wherever good quality podcasts are sold. Thanks everybody for being a part of this, both the event and this episode. Both things were an incredible experience. As always, I'm Matt @mattstratton. This is the rest of "DevOps."
>
> [background music]

> *Matt:* Remember, there's always DevOps in the...

> *Participants:* Banana stand!

> *Matt:* ...the banana stand!