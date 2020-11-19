> *Tim Banks:* If you don't have black women that are rising through your ranks, you're fucking up.
>
> [background music]

> *Matt:* It's time for "Arrested DevOps" the podcast that helps you achieve understanding, develop good practices, and operate your team and organization for maximum DevOps awesomeness. I'm Matt Stratton. By the way, I'm exceedingly proud of that intro. I hope that as someone has figured out that there's a little clever bit to it.
>
> I don't know if anybody in the last six years to figured it out. Anyway, that's not part of the normal intro, but I'm just talking anyway, we have a super great show for you today. That's not about our intro. Before we get into that, let's have a word from our sponsors.
>
> This episode is sponsored by Circle CI. Designed for modern software teams Circle CI is continuous integration and delivery platform, helps developers push code with confidence. Trusted by thousands of companies from four-person startups to fortune 500 businesses. Circle CI helps teams take their software from idea to delivery quickly, safely and at scale.
>
> Visit [arresteddevops.com/circleci](http://arresteddevops.com/circleci) to learn why high performing DevOps teams use Circle CI to automate and accelerate their CI/CD pipelines.
>
> Joining me today is the one, the only Tim banks. Tim, welcome to Arrested DevOps. I'm super happy to have you on tonight.

> *Tim Banks:* I'm happy to be here, Matt.

> *Matt:* This Friday of November.

> *Tim:* Friday 13th, today.

> *Matt:* Friday the 13th. Let's pretend this as a metaphor. It really isn't. This is just something I want to talk about. There's been a little bit of sauciness shall we say, no pun intended on DevOps Twitter in the last couple days about of all things chili.

> *Tim:* Chili is important. It's really important. There are metaphors. I'm going to talk about it. Then we'll bring it back. I'll tell you how it...I'm big in the chili, big in the chili. Like this. It's tech, jujitsu and chili. I have a recipe for chili. I can't speak it. I have to make it.
>
> You have got a way of doing things. You got ingredients. Just like my old grandmother would make tortillas or something like that. I don't know the recipe. I couldn't write it down but you make it.

> *Matt:* You could show me but you can't tell me.

> *Tim:* Yeah, and may have to kill you afterward, but that's OK. You'll at least know.

> *Matt:* There's parts when you would turn around, you can't see [inaudible 2:48] .

> *Tim:* Yeah, you'll have an NDA for sure on the telly. Chili has basically two ingredients. It's got meat, and it's got heat. That's it. No beans, no spaghetti, no cinnamon buns. What are those Northerners put on stuff like that?

> *Matt:* Yeah, I mean...

> *Tim:* Somebody was talking about Cincinnati chili over spaghetti. I was like...

> *Matt:* It's a thing, and I'll tell you something. I was very confused about this. I went to visit a friend of mine out in LA years ago. He took me to this well-known divey chili lunch counter, that's across the street from a bunch of studios. It's well-known where a bunch of studio people like to eat and all this stuff and it's part of LA.
>
> He told me they have all the different ways you can get it and he introduces me to the guy behind the counter. He's like, "This is my friend, Matt, from Chicago." "You're from Chicago, I know how you want it." He gives it to me without beans, which was good, but a certain level was right, and over spaghetti.
>
> I'm like, "I've lived in Chicago my whole life. Before I ever went to Cincinnati, I never saw chili over spaghetti." I don't know why this guy thought that was a Chicago thing, but I will inform you it is most definitely not a Chicago thing.

> *Tim:* I wouldn't be horrified if that happened to me, I got to be honest. I'm trying to imagine. In Austin, we have the Texas Chili Parlor. They've got very sensitive, but it's Texas. You may get shot if you put chili over spaghetti here.

> *Matt:* It's like a New York City kind of...

> *Tim:* Yeah, I'm glad you remember that. You get the hood saying, "Chili without beans is like hot dogs." I'm like, "Yes, because it's chili."

> *Matt:* Chili, and then there would be a chili dog, or also it would be a bean stew dog.

> *Tim:* Yeah, right? Something I get it. It's 2020, and however you want to identify, I respect that. Chili is sacred. You can't put beans and chili, you can't put canned tomatoes and chili. I'm sure it's tasty. I've had tasted it and it's fine. It's just not chili, that's all.
>
> No, there are no hard feelings. There are people that have serious discussions, 20, 30, 40 replies. I'm like, "Bro, look man, it's not that big a deal. You can be wrong. It's OK." I have more firmly held opinions about chili than I have about anything else in the world.

> *Matt:* How much heat does it have to have? I'm not a super-duper spicy, I'm working on it. My kids don't eat super spicy, but we want to do it right. It's got to have heat, but it doesn't have to be 10-alarm-melt-your-eyeballs-off to still be considered chili.

> *Tim:* My average public consumption, what I call gringo-fied chili is to be honest, pretty fucking hot. It's going to be pretty hot. If you're not into spicy food at all, you shouldn't eat it. If you like spicy food, you should eat it and it'll be hot.
>
> Now the way I like it when I'm making it for me or some other people that are like really into chili hot foods, it's hot. 80 to 140 thousand scoville's hot. It's hydrated period chilies. It's a matter of how far I reduce the base. It's how hot it gets? No, a little bit. I add a little chilies in it. I don't use habaneros because they taste gross. I don't use extracts. I don't use ghost peppers.
>
> The thing with chili is it has to taste good. What you have to do is you have to make the horrifying decision of, "Do I take another bite because it tastes so good? Do I stop because it's going to burn my face off five seconds after I get it in my mouth?" That's how you know, it's good chili when you see people debating with themselves on whether or not to have that other bite.

> *Matt:* I am dying to see how you're going to tie this back to the metaphor. We've pulled the listeners about as far as we can.

> *Tim:* No, I like that. Everybody has a way of making chili. I was going to say, "This is the way you make chili." What does DevOps mean, at an organization?

> *Matt:* Is it a mechanism for how you do work? Is it a group of people that write automation and infrastructure code? Those are two different answers to that question.

> *Tim:* Is it a job title? Is it a methodology? Is it a culture? Is it a group? The answer is, "It all depends on where you are." DevOps engineer, DevOps team or group...You can have the same person, the same title. They're going to have 20 different job responsibilities, depending on where you go.
>
> I mentioned on another podcast with a certain person with whom you have a culinary rivalry...

> *Matt:* About?

> *Tim:* How the terms, the term 'role' is different based on org to org. DevOps is the same. You got a region to region, chili means one thing. Chili can mean something else, somewhere else. It's only chili but the way Texas define it as having no beans, no tomatoes.
>
> [laughter]

> *Matt:* The metaphor falls apart, because there isn't one definition. There's is no definition of DevOps. There is a definition of chili.

> *Tim:* You go to place to place it will called different. Then even within the region, how their grandmamma made it, or how their parents made it or how they're used to having it. Everyone puts their own spin on things. That's the same thing is with DevOps. More importantly, it's the same thing within any role. What is a software engineer supposed to know?

> *Matt:* That's true. It's not just within tech. You talked about with a term role. What a CIO does is different. We think there's standardization of title. It's what does it mean within your organization? I'll give you my favorite example ever.
>
> You ever worked at a bank Tim? You know what your title is at a bank? Everybody at the bank is a vice president. I was assist admin at JPMorgan Chase. My title was vice president. In fact, actually if your title is vice president and you work at a bank that actually means you are not in leadership. Leadership does not have a vice president title. They have a different title.
>
> I had a friend of mine who worked, basically had the same job I did, which was assist admin. Another friend, we were going through her [match.com](http://match.com/). He came up in her [match.com](http://match.com/). I was looking at it. He said that he was a vice president of a large financial institution.
>
> It was very much a "Futurama," "You are technically correct, sir."

> *Tim:* [laughs]

> *Matt:* I was like, "Anybody who's going to want to date you based on that is going to be very disappointed when they find out what your actual job is.
>
> [laughter]

> *Matt:* Not that there's anything wrong with that job.

> *Tim:* The funny part is, you are this title or you're this role at this company. Then, "I want to go to another company." Same titles, same role. Even the same level at the use it elsewhere or whatever. It's a completely different set of responsibilities.
>
> Either the center responsibilities is so far different from what I've been doing that I don't even know what I should go for. You realize, "I've been doing all this stuff all this time. They've been paying me this much. I go to another org. I'd be level higher or whatever, or senior whatever."
>
> You have that disparity and you're never going to standardize. That's right, thank God, but I really do think for leveling so people can know where they are. It'd be nice to have some...like they have journeymen or something like that in a lot of trades. A lot of crafts wouldn't have that. These things where you have to learn this is and this we call that. It would be nice to have something like that in tech.

> *Matt:* Then you have to have something like a union. I'm not saying that's a bad thing by the way. [laughs] I'm saying as long as we don't have things like that. All that stuff you're talking about, about having the different levels like an electrician for example. That's regulated by unions.

> *Tim:* It is.

> *Matt:* Certification boards which are all things that we probably could use in our industry.

> *Tim:* I agree. To the extent that we are going to call ourselves engineers and we should call ourselves engineers. We should also have those standards. We should also have that...whether it's a union or whether it's some certification, standardization processing the [inaudible 11:20] or whatever.
>
> We should probably think about doing that. It allows us to circumvent a lot of problems we have with tech as far as how to treat people, how to get paid. Definitely a lot of issues with inclusion or diversity when it comes to paying people what they deserve to get paid.
>
> We also then tend to make the case that people can train on this in high school and community college or other boot camp side of the things and get into this.
>
> You don't have to have a bachelor's degree or a master's degree or a doctorate to be a master electrician. They do work that people's lives depend on. That process of going through and defining these things, I think, lowers a lot of barriers.
>
> It makes it a lot less arbitrary especially when you get some cultures and some toxic assholes that get there and interview and like, "Well, I'm going to test you on trivia because this is what I had to know. I want you to do an inverted binary tree even though you're never going to do one in real life for this role."
>
> Junior entry level thing, we want you to do for our white boarding interview. No, we shouldn't have that to turn a very long story into a slightly less long story I do think that you're right. It is time for us to maybe think about these things whether it's unionization or whether it's some certification board, but certainly we do need to standardize. We need to standardize skill sets.
>
> We need to standardize maybe even some practices in where this pays the biggest benefits not with big companies. They're pretty standard whether you want to admit it or not or whether it's apparent or not. They're pretty much standard as far as what you expect now.
>
> Smaller companies and especially startups. You get to a startup and I know I'm going on a soapbox here, but you just come along for the ride.
>
> You get to a startup and they're going to come in here and they're going to expect this junior person does like, "Hey, we're going to want you to work 60 hours this week, 70 hours, 80 hours. You're going to do this thing. We're not going to get any equity. Hey, you're going to realize my vision."
>
> These are the founders saying that. If we have something like a union or somebody has standardized saying, "You know what, this engineer's going to work over 40 hours. You're going to pay them this much. Otherwise you're not going to get a certified engineer."

> *Matt:* All day DevOps history, Keck Cosgrove's talk was all over the place awesome. She talked quite a bit about...specifically about gatekeeper. The whole talk was about gatekeeping and if I needed to summarize it. She gave this example of one particular job posting that was for a junior engineer. It was a description of an entire team.

> *Tim:* Hire a team full of two seniors and a few juniors and some mid-levels.

> *Matt:* How does that thing happen? Part of it is because there is no standard like this is what this job is. You don't have that where you have a junior electrician have sub...Someone's like, "Well, I got to hire a junior electrician." Here's what they want them to do.
>
> You get this because part of it is the like, "Well, I want more for less and I want to ask for the stars, but I put on my empathy hat a little bit." I'm like the people writing these job descriptions are either going to be someone who doesn't completely know the job which is totally fine to be that person or it's probably an engineer, someone who doesn't know how to write job recs either.
>
> You're getting two things together and somewhere there's a lost in translation. What might've come from the hiring manager as, "These are all nice to haves," suddenly get turned into the whole description of everything that you might ever do.
>
> We as engineers want to be complete. This is what gives us résumés that are 12 pages long. I'm as an engineer, I have to list every single technology I've ever touched in my life. I'm telling you as when I was a CIS admin I had every model ProLiant that I worked on, on my résumé. I don't recommend doing that by the way.

> *Tim:* We had the thread. Was it Emily Freeman that had that thread? My résumé is four pages long.

> *Matt:* The other thing that was interesting with Emily's thread and I responded a certain way. Then I went and I said, "No, no, no, you got to go look at the question." The question was because I started to qualify it to say like, "Yes, this is my résumé but also I have been in the industry for 20 plus years."
>
> Then her question was, "Senior in principal folks?" I'm like, "Oh, well, it should apply to everybody then because that is different." Entry level, the rules are a little different because you're trying to...I'd be curious to know how much these keywords, scanner, gates still exists.
>
> I know when I was early and mid-level, the reason you did put every single...You had to keyword stuff your résumé because that was the only way to get to the hiring manager, the recruiter.
>
> More often the recruiter software was told, "If these 12 words do not appear on the résumé then I don't want to see the person." That's why you have ProLiant 1850R or whatever on my résumé.

> *Tim:* There's a lot of validity to what you're saying especially in regarding keywords. I know that they sell the keywords [inaudible 16:44] because I still get picked up for stuff. I haven't touched a Solaris box in decade, but I sure still get stuff that because it's on my résumé. It's like, "Hey, looking for a Solaris admin contract for a while."
>
> I'm like, "No." I do think what we're talking about gatekeeping and I love [inaudible 17:03] . She's brilliant. I haven't had a chance to see her talk, but I did catch that thread. That gatekeeping takes a lot of various forms.
>
> I talked about this the other day. You've got two forms. You got the getting in the door and then keeping them in the gate, inside the gate. There's the gatekeeping that you're going to have when they're screening résumés. As a gatekeeping they're going to have when they're doing the actual interview process. All the way up to the point where you sign the offer letter. That's one aspect of gatekeeping.
>
> Then you're going to have the other gatekeeping, which is, are you going to get promoted? Are you going to get a raise? Are you going to get these reviews? Are you going to get to work on these projects? Are you going to get to these other things internally?
>
> You look at two things and a lot of companies are doing their inclusion based on lagging indicators. They're going to say, "Well, look we've hired these many black people," "We've hired these many LGBTQ people," "We've hired these many women," or whatever.
>
> That's really all well and good but what are your retention numbers look like? What are your promotion numbers look like? How many of these women are you promoting? How many of these black people are your promoting? How many of these LGBTQ people are you promoting? If you don't have black women that are rising through your ranks, you're fucking up. I can tell you that plain and simple.
>
> I cannot say that out loud. If you do not have these brilliant people who are not white cis men rising through your organization, you're fucking it up. It's not a pipeline problem. You can throw that out. It is not a pipeline problem. What happens is people leave, even if you get them in there, they leave. They go somewhere else.
>
> The question that I had talked to someone else before is a good way to gauge whether you are doing it right at your organization would be to send out an anonymous survey. In your anonymous survey you ask if you are LGBTQ, or even if you're not, but let's just say you are, would you feel comfortable coming out to your co-workers, to your leadership?

> *Matt:* That is one hell of an NPS question.

> *Tim:* It had to be an emphatic yes. If it's not an emphatic yes, then it's a fucking no.

> *Matt:* The funny thing is the reason why I specifically said NPS is because I talk to my customers a lot about survey data and I'm like, if you're going to do that, you're going to measure and I just want to go that is, it's got to be something that to rate highly. There's -- I don't want to say risk -- but there's skin in the game.
>
> That's why NPS says stuff like recommend to a friend or family. It's not just in general, but something that's a bet. This is me saying, I think that's a really powerful and very indicative question because it's not like, "Oh, do you feel your organization respects this or whatever?" I'm falling apart on the word that I want but its personal and it's...I hate to say risk that's the wrong word but...

> *Tim:* Is it really wrong? Because it is, it's not something that has to do with your skill set. It's not something to do that has to do with your productivity, but it's something that has everything to do with the environment that you have. The environment that you have is going to lead to everything else.
>
> It's important, if you have an environment where people are nurtured, where people can grow -- I'm not talking about professionally, I'm talking about personally -- where they can spread their roots, where they can feel safe, where they can be thriving, you're going to get productivity, you're going to get people that grow. You're going to get professional growth out of that.
>
> If you don't have a spot where people can do that, it's not going to happen. You're going to be chasing the tails trying to get stuff done. In the meantime, you're going to be doing one of two things. You're going to be getting people in and losing them quickly because the place is shitty.
>
> If you can get good people, you're going to burn them out. When you do that, when you have a place or places not inclusive that's hard for people to be in or you burn them out, they're not going to stay. What happens is the lagging indicator is, after a year or two or three, you're only promoting white men. They're the only ones still there.

> *Matt:* I'm trying to not center this on me. These are things I'm curious about and looking for how to help. I'm a big believer in lending privilege. Anjuan Simmons has a great talk and a great post about lending privilege. That's something I tried to do. I certainly don't do it enough. We can always do more.
>
> One of the things I'm trying to think about is, you said, for example, you're like, if we're not promoting black women, and then it's not a pipeline problem. Be clear that what I'm about to talk about is not me pointing anything towards a pipeline.
>
> If I'm on a team that does not have the diversity that it should have, in that it has none, let's say. It doesn't have women. It doesn't have people of color. One of the challenges that I've seen, it's very hard to be the first one.

> *Tim:* That's the worst.

> *Matt:* That can get very frustrating when you're trying to make a change. When you know the team isn't right. In fact, the entire team might want that and doing everything they can to have to hire a couple people at a time. I don't want somebody to be in that position and have to feel they're the pioneer into the sea of the cis-hat white dudes.

> *Tim:* Here's the thing. There's two things you got to do. Number one, you can't hire a junior person to be the only one. As much as I want to hire young marginalized folks, you got to have somebody longer in the tooth, who knows how to navigate these things.
>
> The reason for that is because number two, is because you have to fix your culture. If you have nothing but white men there, you're going to have problems in your culture that are going to come up. Now that you have people who are different than what you're used to when you start being more inclusive and more diverse.
>
> You need somebody with some experience. Next thing you got to do is listen to them. Don't defend what you've been doing. Don't tell about, "Well, it's this way because of this and this. It doesn't really mean this."
>
> No, shut up and listen to them. Then once you listen to them and once you work with them and you do the work yourselves to start fixing your culture, then you will find that you'll be able to have just a more inclusive culture in general within your team.
>
> Here's what will happen. When you have a more inclusive culture, you will have more inclusive hiring practices. Full stop.

> *Matt:* What you can't do is go, "Well, I tried and Tim said he didn't want to be the first person of color on our team so I guess we can't do it." It's like, "Nope, you got to keep trying." That first hire is hard because you're asking so much of that person.

> *Tim:* Yeah. You are not asking them not to do their job. You're asking them to do their job plus the job of fixing the culture and being a pioneer. That's three jobs. That's going to be hard. How do you do that?
>
> Can you pay them for the extra collateral duties they have to do? Maybe. It's going to be a hard to sell. I think you should if you're being honest. You should. Absolutely should.
>
> If you were the first and we're coming in here not only you have to do your job but you also have to help us fix the culture. We should absolutely pay you more because you are doing more.

> *Matt:* It's more of a job. You're doing more work. [laughs] That's no question.

> *Tim:* Sell that to the white guys they're working with. You get that Google letter and shit but it's not the wrong thing to do, certainly. If I would say, if I were to give people bonuses for overall improving the company culture outside of your job, that's the first people I would do it.
>
> I would give is the people who are the first. In the end, what they're doing is they're...Those people who are putting it on the line. They're the ones who are sacrificing the most. They're the ones who are working the hardest.
>
> They're the ones that are saying like, "I'm going to go from someplace where maybe I was one of many and it was great to come here to be the very first. I don't know if it's going to work out. I don't know how the people are going to be. I don't know if they're going to listen to me."
>
> The worst thing is when you're the first and then you're telling the people the things to do and you get the attraction. Then you realize you're a token and that fucking sucks.

> *Matt:* That's all the stuff that the people I'm trying to talk to need to hear. You get the Google letter from the dudes that need to be convinced or won't be convinced that this is a good thing. We talk a little bit and then I may get myself painted into a corner here. We'll see what happens.
>
> When we talk about a DevOps transformation or a digital transfer, whatever, organizational transformation with all this, it's very interesting to see because at the very top, people are super into it and your individual contributors, your chop wood carry water people, they're super into it. What always stalls the transformation is the frozen middle.
>
> Now, the frozen middle I'm about to talk to is not quite the same but it still happens. On one hand you can have folks who have a very strong passion for DNI. You know what I mean? That's the thing.
>
> There's people we don't have to reach because they have a focus on that. They do that. Then we've got assholes like D'Amore who are fucked, who don't even understand why this matters and they're on a whole other place and they might be leading our country. That might be different thing.
>
> Where you have the frozen middle, is the people who probably have internalized well the need for diversity. They have respect for those people being in there and they want those people in their team, but then it gets a little hard.
>
> That's the message. They're going to hear me like, "Yeah, I get it, Tim. You're right. We need to not have a bunch of white dudes on my team." These are the people that are saying things like that's a token or that quality goes down when you hire women.
>
> They're all the people that are going to thumbs up every single tweet saying that, "We need to hire more women and more black people and everything like that." Then they run into things like, "Well, but I tried. I made this offer to Tim and he was like, 'I don't want to be the first non-white person on the team.' I can't do it and be like, 'Well, I tried.'" To be like, "Yeah, you did. Well, keep trying, you don't get to be done." [laughs]

> *Tim:* I see that. I worked for a company once where they had this whole big push for diversity inclusion. I'm like, "Great, yeah, rah, rah, rah." Then it was their wrap-up happen, and all hands were like, "Well, it's hard to find people of color and minorities."
>
> We're an international company, so who's the minority here, mind you, most of them were in the Northern Hemisphere. Minorities here are pretty much the same minorities everywhere in the Northern Hemisphere. I digress. We'd made great strides in hiring more white women, and I was like, "Mm-hmm."

> *Matt:* Did you though, did you?

> *Tim:* Then you pat yourself on the back. Everyone did a great job on diversity inclusion because it's an easy thing. The problem is, the metric. The things that you measure are the behaviors you're going to incur.
>
> If you're saying, "Hey, we need to get more diversity inclusion," that's very vague. As long as you get some get a metric that meets a number, you can pat yourself on the back, and everyone will get their bonus. Inclusion is hard to measure, or you certainly can't measure it by just the number of people of various ethnicities, or genders, or religions or whatever, that work for your company.
>
> That's not it. Maybe you could say how many stay? Maybe you can say what the overall sentiment of those people is with the company as a whole. How many of you promoting who's on the fucking board?

> *Matt:* Would you go so far as to say measuring the number of people of a certain demographic that you hire is monitoring, but understanding the sentiment and their impact is observability?

> *Tim:* I would absolutely say that because observability is insight. I want to know what's going on inside, the retention and the hiring, that's a lagging indicator. That's when you get paged at three o'clock in the morning that something is down because it's already broken, and now you have to jump to fix it.
>
> Instead of saying, "Hey, I noticed that this thing runs a little hot, and I'm going to make the changes beforehand before it goes down because I got insight inside of what's going on." "This process uses too much memory," "It takes us a long time to spin up," or "I noticed that it keeps throwing up this error. "
>
> It's fine when it's not under load, but I want to fix it before it breaks catastrophically on Black Friday. That's the difference. When you say that, "Oh man, we only have a few marks, I suppose we only have a few people of color, we might have a few like LGBTQ people, or a few women or whatever it is, but they haven't quit yet, so we're fine." [laughs]

> *Matt:* Are you though? [laughs]

> *Tim:* Are they're looking? Are they happy? Why aren't you hiring any more? Are they promoted? There's a fine balance between showing too much interest, their project, or showing no interest and that's hard, but that's where empathy comes in. That's where having good people managers come in, that's why it's important to promote people who are good at talking to people.

> *Matt:* Oh, I was going to say to your point about not showing too much interest because you won't be a project but I would think we'd be interested to know about everybody, [laughs] in general. You know what I mean? It's not like you don't have to just focus and only ask your marginalized employees about these things, you probably want to know that about everyone anyway.

> *Tim:* True, so you should be. You should have that insight into your teams, into your people.

> *Matt:* To your point about hiring managers that have that ability to have it because you can't, I always like to say, "You can't put a Nagios agent on your people." "You have to talk to them, you have to think about them, and it goes back to again, why being a manager, being a people leader."
>
> Not even about being a people leader, being a people manager is a very specific skill. It's the thing. It's not a promotion, it's a career change and a lot of things you've got to fix.

> *Tim:* What I think has been text downfall in inclusion, and we've said this a long time ago is that people are like, "Well, just do the job, type the things on the keyboard." That's what your job is about, and that's all it was. Well, it's not.
>
> [crosstalk]

> *Matt:* That's what I wanted to say, that's a problem. The job is not just being called an editor.

> *Tim:* Who's the best typer? Is essentially where they're coming down to, and I think...
>
> [crosstalk]

> *Matt:* Mavis Beacon is the best typer.

> *Tim:* That's not it, that is absolutely not it. Fucking tech is a job, it's a job, it's a way I pay for my house. It's the way I buy food. I can do other things and do that. I'm good at this job, it suits my personality, but I don't fucking love this, so I'm not going to go through a bunch of hoops, and I'm not going to go through a bunch of bullshit to do this job.
>
> I am at the point in my career where I can say, "No, I'm not going to do this," because I've gone through all the shit to get to this point. There's a lot of cats out there, young-bloods in this industry who don't. They don't realize what it is, and it has nothing to do with their ability to type the things, nothing to do with their ability to type things.
>
> It has to do with the fact that they are not made to feel like they matter, like they are people. There is in the year of our Lord 2020 no amount of money you can pay me for me to not to be a whole fucking person all the time. You can't pay me enough, fuck that. Asking these people who are young to have to swallow that up to get this job, we've done it before. It sucks.
>
> That's why the attrition numbers were so high for people. Gina doesn't know what we're talking about. I think you remember, you're long enough in the tooth to know where people would come into these gigs, and then they'd wash the fuck out within a year or two, out of tech completely.
>
> One of the things we're doing now with the pandemic, we're losing so many women, we're losing so fucking many women in tech. In all industries in general, but we're losing them in places where we should be accommodating people, but we're not being inclusive. We're not being inclusive to women.
>
> We're not being inclusive to mothers especially who are dealing with their kids being home from school, and fathers too, but fathers aren't leaving the workforce like women are that's a fucking disgrace, is a fucking disgrace.
>
> We should not be losing people because we're not taking care of them, because we're not being inclusive, and we're not accommodating the realities of 2020. That's not a technical problem. That's not an engineering problem.
>
> That's a people problem, but it's just an amplification of the problems that we've had in the past, and that's we haven't been taking care of people. We've been expecting these motherfuckers to sit here all day long and play ping pong and eat bullshit from the snack center because we want them to work 16 hours a day.
>
> That is the opposite of the culture that we should have been promoting, but we glorify that shit. The VCs that part of pushed that...What do we do? We turn on the hundred millionaires, we turn on the billionaires and no one ever learns a lesson.
>
> The people that were doing the work...Maybe we break them up a little bit for the equity but we're not taking care of them like we should. That's what's coming to light. That needs to be fixed, because if we lose the number of women that we are losing right now, that [inaudible 36:20] will never recover. We will never recover what we could have been. These are brilliant fucking people that we are losing. It is unforgivable that we're letting it happen.

> *Matt:* Here's the thing that strikes to me is when we think about the visible ones that we're losing. They're the ones who are telling us about it. To be frank, they're probably a little more senior. By no means am I saying that we're only losing women.
>
> I'm saying if we're losing that, because the thing is, in this pandemic time when everything's fucked, who's actually handling this pretty well as those of us that have had the 20 years of experience. We're in some bullshitty job...
>
> [crosstalk]

> *Matt:* ...where we can just fuck around anyway. We're not actually slinging code, and moving parts around and shit. If you're someone who does chop wood and carry water, it's even harder. That's what I'm getting at is I'm saying, there's a lot of invisible loss that's happened.

> *Tim:* You're talking about the walking wounded. The people that are killing themselves because they can't live. Their partner lost their job or because they need health insurance, or because all the other fucking societal problems that we don't support women that we have. They're just sucking it up. That's bullshit, that they should even have to make that choice.
>
> These people are grinding themselves into the dirt, because we aren't taking care of them. It's not like these companies don't have the fucking money. It's not like they don't have the money. We had the money. There's so much money flowing through tech. There's not going to be my ranting against capitalism. I will save that for a different topic.
>
> I will simply say that if you are a hiring manager, and you have a woman who is going to leave the industry or leave the job or quit because she has to take care of her family, you fucked up. You fucked up. She didn't fuck up. You have fucked up. You need to figure out how to fix it before you lose anybody else.

> *Matt:* You're right. The problem with the audio thing is listeners are not seeing me continually nodding my head to everything Tim is saying. You can maybe hear my brain sloshing around if I wasn't on mute. Like you say, it's a company's. It's not that we don't have the money. We do.
>
> There are companies that are doing this. I'm not saying that means it's OK. That's even more evidence of, "Yeah, it's fine." I know organizations especially for people who are on variable income. When things are bad, they're like, "You know what we're going to do? We're just going to take care of you."
>
> People who work in that model, whether it's tech or not, when shits downturned, if most of your income comes from commission, that's very real. These commission checks are not like so you can go buy a yacht. They're so you can pay your mortgage.
>
> What I'm saying is you can do things like that. I know organizations that have said, "We're going to dial things back. We're going to take care of people." Are any of them doing enough? Probably not. Even the ones that are doing a little bit are doing streets ahead of the ones that are doing nothing.
>
> The ones that are even doing a little bit, they're doing fine. You all got plenty of cash. Don't worry about having your hyper-growth quarter. Chill for a bit. This is a metaphor. There was a lot of concern with going back to school with the kids. I have elementary school-aged kids.
>
> My ex was like, "I'm a little concerned about if we're going to be doing remote learning. They're not going to learn as much or whatever. Are they going to get behind them?"

> *Tim:* You mean like the entire country?

> *Matt:* Every other kid their age is having a shitty year of learning. Nobody's learning anything this year. It's fine. Yes, will they not know as much as they might have? Sure, but so is every other kid they're competing with. It's probably OK. Same thing.
>
> You don't get to have, you're like, "Hey, investors, look. We hockey-sticked through the fucking ceiling this year," but nobody else did either. Maybe you just maintain. Maybe it's OK that you only sign 300 percent more customers instead of 1,000 percent more customers.
>
> Reset your expectations and invest that in your people. It's OK, and you know what? You don't have a fiduciary responsibility to your stock holders to make them insanely rich, despite what you think.

> *Tim:* Right.

> *Matt:* You actually don't.

> *Tim:* Ain't none of these VCs losing their houses. Not a one, they have the money. It's funny, because they talk about investors like, "This is the time where you invest." Invest. You're going to dump some of the copious amounts of money that you have into the people, who need the help right now that they would be in a good spot on the other side of this to make you a little bit richer.
>
> That's what needs be doing. I'm not talking about the government intervening or anything like that. I'm talking about you, motherfucker, with the big wallet. Reach into it, and help some of these people.

> *Matt:* That's how you can express the resilience that your organization has. The only way that organizations, companies, and groups rebound against disruptions that aren't modeled, like a fucking pandemic, is through a depth of capacity. You can't build it, you can't create tech to do that, it's the people. The people are what saved your God damn company every time shit gets fucked up.

> *Tim:* Every time.

> *Matt:* They're going to keep doing it, but you can't keep push, you have to build up that adaptive capacity, like you said, you invest it, because it's banked. That's the reason that they can flex and can be able to handle this stuff and have that resilience.

> *Tim:* It can't be just during the bad times, that's the whole thing. Obviously the bad times are when you have to open up the grain stores and feed the people. You need to be...

> *Matt:* That's why you have that granary in civilization. That's why, if you want your city to grow, you got to build a granary, but you can.

> *Tim:* You have to put into it when the times are good, you know what I'm saying? You have to take care of your people, all the time. All the time. Then, when times are bad, it becomes even more important to take care of your people.
>
> Here's the thing, if you're one of these rich VCs and it costs you your business, you're out your $10 million home and then you have to sell it and buy a $8 million home. My heart aches for you, but your junior dab who's drowning in student loan debt, trying to share an apartment with three other people, your one mortgage payment would change his whole life, would change their whole life, I should say.
>
> That's what I'm talking about, its not going to take much from the people that are holding the pressurings in these companies to make a huge difference for the people that work for them.

> *Matt:* From a very calculating perspective, here's the thing. You talk about the walk and wounded, you talk about the people that are dealing with the bullshit right now because they have to, because it's the only way to be able to buy groceries. Is to put up with this shit, but you know what, things are going to change.
>
> There is going to be the opportunity and all those people you were...That you pushed this way, they're going to just peace the fuck out of your company, as soon as they can...
>
> [crosstalk]

> *Tim:* The second they can. The fucking nanosecond they can.

> *Matt:* The bar is so low for treating people well during this pandemic, that if you just did anything that would be a rounding error to your CFO, you would get so much more, I don't want to say, loyalty, but people would be like, "Wow, this company took care of me," and people would know that. You want that NPS score that says, "Would you recommend this place for friend and family?"
>
> That is the kind of thing, and what we're trying to say here -- for all you big VC executives who listen to Arrested DevOps, because I'm sure there's a few of you -- it takes so damn little, because the bar is so low. That's the beautiful thing.
>
> Just be a fairly decent human, not even a good one, just a little bit, and you will look like motherfucking Theresa. They will be like, "Holy shit, can you believe what that company did? They are the best in the world." You were just slightly less bad than anybody else.
>
> [laughter]

> *Matt:* It isn't even that hard.

> *Tim:* When we're in these opportunities where these VCs are like, "Oh, well," not even VCs. Let me back off that for a second, we have companies, where they're not paying rent no more, they're not paying on a lease anymore, because everyone is working remote.
>
> They're not paying commuter benefits anymore, they're not paying fucking parking. Their operating expenses have gone down. What do you do? The good ones, at least, are throwing their employees a little something if they have to work at home, stipend, Internet, electricity, whatever.
>
> You could probably do more. You're expecting more from them. You're expecting that a lot of these cats have had pay cuts. A lot of them, maybe they have layoffs. Maybe they're going to forego the annual bonus. Maybe they're going to forego the annual raise.
>
> That's a bitter pill to swallow for people that have a family that are middle class or lower-middle class, even some of the upper-middle class people that were expecting something, and now it's changed. When they're doing that, working on pay cuts, dealing with the kids, and you still have a fucking yacht?
>
> You still got this gigantic home. You're still taking fucking vacations. You're like, "Oh, we had to let go of the housekeeper because we're fucking tightening our budget, tighten the belt around here." There's probably a little more you can do. Maybe it's symbolic. Maybe it's symbolic, but that fucking matters to some people.
>
> If you can just say, "Hey, what we're going to do? We can do what we can. I'm going to throw everybody $1,000 in their check." You got 100 people, a 1,000, it's a $100,000 in your company. Most of these VCs, that is literally a rounding error, or it's a write-off. You can blow through a $100,000...
>
> [crosstalk]

> *Matt:* It's what you would have been paying for La Croix that you don't have to buy because you don't have people in the break room anymore. Take that [inaudible 47:13] . Again, it's a little bit. Does it change anybody's life? Maybe not, but it's impactful. It's more than nothing. It could change.

> *Tim:* It makes more of a difference than you could imagine, especially if you're like, "Hey, RK, we're going to give you this right now. Then we're going to see what we can do even if it's just a couple hundred a month." Like, "This is what we can do. We can't do a lot, but this is what we can do."
>
> Like you said, that little bit make a huge difference for people. Maybe it's another grocery trip. Maybe it's, "Hey, we're going to order up a pizza with the kids night, a little respite from all the shit that's been going on." It's a little bit, but it makes a huge difference, and people don't see that. They're so detached from what goes on with these people, and it goes back to observability.
>
> If you don't have insight into the things that your people are going through, as a leadership team, whether you're a people manager, whether you're the skip level, if you don't have insight into the people, into their struggles, maybe not into the intricacies of their life but, certainly, what their mental health, what their well-being, what their overall sentiment is, you're fucking up.
>
> The only thing that's going to show you is a lagging indicator when something goes down.

> *Matt:* That's where we end at. You're going to see the impact of not doing this, but it's going to be a lagging indicator, and you're going to see it a year from now. You're going to see it a year and a half from now and wonder where all your people went. Here's a chance to get it right. Here's your chance to get it right.
>
> Go to [arresteddevops.com/breaking-down-gates](http://arresteddevops.com/breaking-down-gates) for this episode's show notes, which probably will basically just be a link to Kat's talk from All Day DevOps because we don't have any other notes. If we think of anything, we'll put them in there.
>
> If you go to [arresteddevops.com/iTunes](http://arresteddevops.com/iTunes), you could leave us a review in the iTunes Store. Supposedly, that helps people find the show. I don't know. I don't know how computers work. We're on Spotify and iHeart Radio if you're into those systems. This was powerful. This was great. We started talking about chili, and it got there. It wasn't even a gimmick.
>
> Tim, if people want to talk to you more about your nonrecipe for chili or other things, where can they find you on the Internet, in a healthy way, not in a stalkery way?

> *Tim:* [laughs] The best way is on Twitter @elchefe, just go there. We can talk about chili. We can talk about tech. We can talk about inclusion. We can talk about jujitsu. Just don't come at me with the "Where are the beans and the jelly jars?" Go ahead and make the joke now. "Where are the beans?" All right, the joke is done. [laughs]

> *Matt:* What about the beans and the jujitsu?

> *Tim:* No.

> *Matt:* I don't know. That's probably taken us somewhere else we don't want to go.

> *Tim:* You eat some beans. You put them in your belly, man. You're going to be in for a surprise you don't want.

> *Matt:* Take that one to the bank.
>
> [laughter]

> *Matt:* As always, this has been Arrested DevOps. Remember, there is always DevOps.
>
> [background music]

> *Tim:* Something about a banana.

> *Matt:* Stand.

> *Tim:* Stand. Banana stand.