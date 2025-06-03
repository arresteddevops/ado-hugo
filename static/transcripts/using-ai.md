**Kat:** very strongly opposed to abusing the robots. Even if they never retain sentient, 

**Matty:** It is time for Arrested DevOps, the podcast that helps you achieve understanding, develop good practices, and operate your team and organization for maximum DevOps awesomeness. I'm Matty Stratton. Have a great show today. I'm really excited about our guest and we're gonna dig a little bit more into that.

But before we reveal the guest, let's have a word from our sponsors. 

Got robots writing your code, great. But you're gonna need a safe place to run it. Fly machines are fast launching hardware, isolated VMs that spin up in milliseconds. Perfect for sandboxing. Even the sketchiest LLM generated code, dynamic subdomain routing, and zero cost scaling to idle. Yep, you got those.

Robots break things. Fly machines restart cleanly and scale effortlessly. fly.io is built for humans and loved by robots. Check out arresteddevops.com/fly and make your robots happy.

So today on the show, I am joined by your friend of mine, Kat Morgan. I'm so excited to have her on the show. Kat, welcome to Arrested DevOps.

**Kat:** Hello, Matty. I think we've been talking about doing this for a while, and I'm really excited to be here.

**Matty:** Yeah, it's one of those like, I feel like there's lots of folks where I'm like, number one, first question, why haven't you been on the show yet? How did that happen? And then when are we gonna do it? And then we take forever and then we finally get around to it. And if this is like any other prediction, I would imagine we're gonna finish this and say we've got like 17 more conversations we could have.

So that is my prediction for the next however many minutes. But speaking of topics we've talked about a few things we could, we could chat about, but maybe to jump in just because it's kind of in everybody's face right now is, you know, the specter of AI and AI everywhere, all at once. Lots of places we can go with that.

I am curious to kind of see. What your observations and lived experiences might have been. I was, as I like to, to think about it, when we look at a topic like this. There's nuance involved and people are kind of bad at nuance. We like to take, the, this is terrible. You should never use a single thing with ai.

A lot of strong opinions are, oh my God, it's going to change the world and everyone's gonna be out of a job and everything. And like most things, the reality is probably somewhere in between. But I guess to, yeah, kind of start with that. What, kind of your. Take on this, so to speak.

Granted, that's a leading question. Maybe

**Kat:** I, I can't pretend that I didn't sign up for this question, but it definitely feels like you just punted a minefield.

**Matty:** we're nothing if not controversial here on the show.

**Kat:** Right. I mean, okay, so there's, there's a lot of ethical takes, which deserve a lot of attention right now in this space. Whether it's to do with you know, just intellectual property rights and whether people in the system that we're in today are able to keep a roof over their head, you know, and, and.

Have an equitable stake in what they create. And then there's also the, the question of accessibility and how much do LLM actually open the door to people who need more access in the digital world and creating things from code to anything else as an assistive technology. It, can't just be carte blanche dismissed in that space.

Then there's the ecological impacts and the academic impacts. So really there's, a lot of open field for everyone's opinions right now in the space. And all opinions need to be heard at this point because it's really going to be a story I think where. Unfortunately, it's kinda like who's responsible for security, who's responsible for documentation?

You know, all of these things are everyone's responsibility, and I'm afraid that the exact same thing, demand is going to be put on everyone to be an AI engineer in some form or other, or at least knowledgeable enough to understand where the boundary of what AI can and can't do ends. And the boundary of this is what humans have to do and why begins.

And so even if you abstain, you, you have to probably begin gaining awareness of those boundaries and, and when to actually speak up about it.

**Matty:** I think that's fair. I think another thing that comes to mind, just even thinking about when you're kind of talking about the different facets of the conversation is. It's a really, besides being a minefield, it's a really broad and vague minefield. Right. Kind of saying, what's your opinion on AA is like saying, what do you think about computers?

What do you think about the internet? What do you think about silicon?

right. You know, 'cause like, here's the thing People will come to this framed upon their frame of reference of what they think of when you say, what about ai? Right? Because if we're thinking about generative ai, especially around art creation, things like that, which I think I.

A lot of folks, that's where they will go. And that's, that's part of it. And that has an impact versus thinking about some of the more assistive ways when you talk about agents in certain ways and versus other ways that LLMs can run. And as, as, as folks have pointed out, I. Large language models are not new.

Right? Calling 'em AI is kind of new, but there's lots of places that this has been working, but it's becoming more of when, like you said, when you look at the intellectual property factors of it, when you look at how it's slurping all those things up and the, you know, ecological impact is again, the larger, the thing that's running it is where that, where that kind of comes in.

I guess. know, you kind of. Talked about a few large, broad things that might be a place to kind of start with and then think about. it's hard to, not to sound dismissive, but to put your fingers in your ears and go, no, you know, because, you know, and it doesn't mean that we should just accept everything that ever happens, but the less educated we are, the more likely we are to be steamrolled.

And I think my experience. Has been that as I've investigated, I find places where these technologies are helpful to me and places where I'm like, okay, maybe that's cool, but it's not worth it. Right? The juice is not worth the squeeze. It's not worth burning down the planet to make like a cute South Park character of my friend in a picture, probably not. At least

**Kat:** I think if I, if I was sitting there with my I guess. Gas pedal to the metal, just generating pictures all day. I, I would probably have some very stern concerns to myself, but also on the flip side of that, there are, there have been some days where I am pushing LLM pretty hard in code gen tasks or some research work And I'm still flip flopping back and forth on some of the, debate around that. the problem is things are changing so fast that when you draw a line in the sand today, the variables that go into that decision are going to be different tomorrow. And at the same time, I've actually seen my own personal expectation for how long I can stay in the tech industry change.

I've gone from an estimate of like 10 to 12 years because of severe, tendency or propensity to develop carpal tunnel to my hands are not giving me problems and I can actually use them more for other things outside of tech at the end of the day. I can't dismiss that. Oh.

My career is now more accessible to me longer term in the future. And at the same time, we've built these models on conventional GPUs predominantly, and there is a lot of, of the hardware industry that's going to take a few years to ramp up and solve the question of how do we actually do LLM and other, you know, models.

Efficiently and ethically, and we're, we're in that story of, oh, this computer took a whole room and later it's gonna fit in your pocket because we can already run some very significant LLM on my MacBook for real use cases that actually make these accessibility things attainable.

I have appreciated some of how it's changed my relationship to technology. And we can even, diverge into getting into the weeds with, you know, what does it actually look like on a daily basis when you're using it, or how does it change what you decide to build or what you think you can achieve in building when you sit down to do something.

how have you been? Interacting with it or not interacting with it yourself? Like is it, has it changed anything in your daily life? Would you miss it if it wasn't at, you know, a click away?

**Matty:** So one, one thing that I use a lot with it is, I, it's on the accessibility side of it is alt text for when posting on social media, it's chat.

GPT is very helpful for saying this is what this image is and. Can I do good alt text without it? Absolutely. I know the thing that I'm doing, but it does make it more expedient, which makes me more likely to do it, although again, I have my stuff set up to, you know, always do it. But I'll probably be more, more robust.

But that's one that is nice. It's helpful. It makes me be able to do that better. If it went away, I would be fine. Another place is that I've been using. Cursor quite a bit lately. with things I'm building, and again, I'm not just for some context either people who haven't listened to the show or who are just curious because, you know, roles have changed.

So I'm, I'm in a role that's primarily marketing related, still talking community and kind of like elli, but not, but the point is, I, I do some coding, but I'm not sitting and writing like production code. All day long. So Cursor has been really helpful for me, for prototyping, for like, Hey, I want to figure out how to do a thing.

But I will say my experience with quote unquote vibe coding with doing this has certainly made me not concerned that engineers will go away because. My good experiences and where it's been helpful is when I already really know what I want to do and I just need a little bit of guidance, or I just need someone to do some lifting for me because I don't feel like going and writing all of this other stuff and the, the experience, like I'll, I'll give two that come to mind.

Of playing with that. 'cause I think they're both very interesting. One was I had to put together a website for friends of mine from back in the teenage days, we have all these videos that we used to record of, like from our prom and like silly school things and whatnot. And then for when we all turned 30, my buddy and I, we made a DVD of it and gave it to everybody.

And then we said, you know what, it would be cool if there was a way to access this online, but it had to be very secure because. You know, we didn't grow up in the time when, in when you were in high school. Everything was on the internet. Long story short, I knew what I, that I wanted to create a website that had certain parameters and I knew the technical parameters.

I knew that I wanted to use S3 in this specific way, and I wanted to use this type of signing, et cetera, and that I was able to turn cursor on it and just say, I know the, I know what I want. Right? I have the architectural vision in my head. Go implement it. Right? And it was very good and it's helpful to to point this out because this was also a well trod problem, right?

There were tons of examples. This was React, this was all stuff that was there. Then on the other side, and I did this as a bit of an experiment 'cause I wanted to see what Cursor would do. So I'm at now a company called Turbott, and we have, one of our products is this thing called Steampipe and it has lots of plugins for doing things.

And I was like, it would be cool if, and it would be helpful to me in my life if there was a plugin for Bluesky for Steampipe that would let me query Bluesky stuff via Steampipe. And so I ran the experiment of just cracking open cursor and saying, write a Steampipe plugin for Bluesky. And oh boy was that terrible.

**Kat:** Yeah. It's kind of like this conversation that requires nuance. Context is everything. And when I actually need to do something that's a bit of effort and work. About 30 to 50% of the context window ends up being developing the context that includes research on the most recent libraries and versions, and pulling in docs related to the functions that are maybe more recently added that you're going to use.

And, actually describing coding, hygiene and the structure of the project, right? Where you're actually doing lots of hyper varsity thinking and planning in advance of writing the code. And actually something that I did that with yesterday I spent probably 90 minutes. Just working on context building, building the plan for the artifacts that I was developing and all of that.

And then I was pushing the context window pretty far at that point, and I was like, okay, now it's kind of the moment of truth. This is either all going to have been valid and then it's going to work. Or I'm going, I've made a critical mistake somewhere in this context and it's not actually going to be a successful implementation.

So then I was like, okay. And like normally I will have a Task MD where I just use that as a task tracker. I maintain it as an ongoing plan of what the architecture is, what the steps are, what needs to be tested. Before it's checked off and then I use like an X in a markdown checkbox or a tilde for in progress or empty for not started.

in the case of yesterday, I, I did all that for about 90 minutes and then I was like, okay, knock out all the tasks. I didn't even realize, 'cause I was. Distracted doing something else a little bit at the same time. And I didn't even realize that it had gotten as far on the planning as needed to just complete all of the work from that context in a few more prompts.

And then it was done and I was like, wait a minute, it can't already be done. 'cause I was expecting that to be the beginning of about four to five hours of work. You know, I would be writing a lot and then it would be like helping me with debugging cycles and things like that. But no, it just, it was just done and I was like, okay.

Cool. So now I get to just jump straight into reviewing the code line by line and optimizing which legitimately had the effects of. Helping me feel like I actually made meaningful progress, not just lines of code progress or a couple of the check boxes progress, but like it, the outcomes for my team are not trivial.

at this point, I definitely value it for getting to the value add work that humans need to do, where we. Actually have the time and the budget for labor, labor budget, to not just make it function, but also circle back and say, I just did circle back. Oh my God. But circle back and

**Matty:** on.

**Kat:** exactly. And, and check if the user experience from that first success is the user experience we were driving to.

So now I can actually look at it and say, okay, so what is the intuitive approach here that the team needs for this to be a value add in a scalable way? Not just something that I can tribally force these brains that I work with to remember. So I find a lot of value in that. The labor that that reduces and difficulty with troubleshooting and, and edge cases is not trivial.

The fact that I'm not going to finish the end of the day and be like, Ugh, I barely got out to any of my work done. I have this mountain of tasks that I won't be able to get to this week, whatever, because it's a short week. It's really hard for me to unplug a lot of times and have a life after tech because I'm like, there's, there's just too many incompletes hanging out there.

I really value it for the sanity that it's introduced in my, you know, off hours.

**Matty:** Yeah, I, I found it's also helpful for me on kind of hobby projects you know, so I have a, a, a Hugo theme for hosting podcast, you know, for, for, for 

**Kat:** Uhhuh. 

**Matty:** websites, which the rest of DevOps podcast uses and a bunch of other sites do. And it's sort of stagnated for the last few years. 'cause it was, it was good enough.

You know, it's one of those things where, hey, at a certain point, what do you need? But there's been a slew of things and I've been wanting to. Kind of tear it down and start over. 'cause one of, it's one of those fun things where over time you learn more about the tech behind it, the stack. And you're like, oh, well if I knew then what I knew now.

Right? 

**Kat:** Yeah, or in, in the case of like some of the mermaid stuff, like new features get built in and merged up, and now you need to pull it down and use it, but you actually need the spoons to do the job, and you need the job to be attainable with the spoons you have.

**Matty:** this, this refactor that I wanted to do, I did a fair amount of it on a international plane flight a couple years ago. It might have been flying to KubeCon in Valencia. I don't remember. And I. Then I didn't touch it for forever. So first of all, all of my context, my own context was wrong.

And then it was just always this insurmountable thing. So I decided earlier this week, I said, well, let's see if I can get Cursor to help me. Because again, a lot of the work that I, I knew what I wanted. I. I knew the architect, I knew the thing, but it was like, oh my God, now I gotta go and update all these templates and change refactor these templates according to this structure.

And it was just very cumbersome. And this is relevant too with your, it's difficult to unplug. So, this is why I think two night I didn't sleep at all. I was up until five 30 in the morning

**Kat:** Oh 

**Matty:** this. So even ai which was foolish. You know the good news.

**Kat:** The one more thing, rabbit hole. The, oh, just one more thing. Rabbit hole. When you actually are in a good flow with LLM Code gen, and it's like that one more thing goes from, oh, just this function to Oh, just this entire feature, right? And you're like, oh, just this one more feature.

And it's so rewarding. It's like, oh no, but what if

I, that feature 

unlocks this other feature? 

**Matty:** and then when you're letting the dogs out, you're like, oh, I wonder if it can do this. 

**Kat:** Yeah. Yeah. You're like, or you're like, I'm just gonna let this prompt go and I'm gonna walk away, and then I'm gonna see where it picks up tomorrow. But then you're like, did it work on the first try?

**Matty:** Mm-hmm. Or do I have to come back and, and, and tell it? It complete was completely wrong. 

like if, going back to my initial story, which was I had a chunk of time a couple years ago and then I did a bunch of stuff and then it was months later I wanna pick it up and I could not remember a damn thing about what I was doing.

The nice thing is your AI agent is just sitting there and waiting for you. So if you come back to it two weeks later, it has that same context that it did. It was just patiently sitting there doing nothing, you know? So that's helpful for when you're dipping in and out. 

**Kat:** so one of the other things that I've actually found value, and this was part of the burnout conversation because I have hit some serious burnout in the last few years with different layoffs, with different just industry. We'll go with the nice word and say volatility. It's easy to like get stuck in Bluesky, echo verse or whatever, and feel like the sky is falling and there's no healthy outcomes.

And even if you actually do the thing and achieve the big goal, you're gonna be so exhausted afterwards that you don't, or I'm speaking for myself, I don't. I'm going to be so exhausted after the big goal that I'm going to be like not present. For other parts of life. And one of the things that I didn't even realize is all of them kind of helps with the, I don't have an A DH ADHD diagnosis.

I am definitely autistic. But some of those like. Rabbit hole tangents and distraction like curiosities, the A DHD mess, the autistic hyper focus, where it's like, I wanna make this perfect before I move on. Or wait, there's this other thing over here, and if I spend three days on it, can I bring it back and then be back where on the task that I was actually supposed to be working on all this week, and, oh no, now I have to cram that out.

The LM as a. Executive decision making regulator, it's like, wait, is this actually helping me move towards this milestone or is this just me chasing a rabbit hole that I'm going to be stressing about tomorrow for having wasted today on? Right. It has really significantly changed how well I'm able to make a plan, estimate the plan.

And stick to the plan and then achieve the results without having difficult conversations with managers. Like, I mean, yes, you got the feature delivered, but also it was like seven days, seven business days of not really being confident that you were gonna knock it out because you were off doing this other thing or whatever.

Right. Which is good because then I actually get to free up time and build the confidence to. Chase those other high value targets that maybe after following through on the plan are also good to, to go and deliver on. So I've found it really helpful for the difficulty of, I'm bad at paperwork, I am terrible at keeping track of things on a to-do list, but I'm great at verbally going through the thing that needs to happen.

the way my brain actually thinks is more easily translated into the business processes and procedures that are required to maintain a healthy employment in a very rigorously structured large business.

**Matty:** That's really interesting and I think Like you said, in in whatever way that you look at the, the, the agent that you're working with as a colleague of sorts. Which is helping fill in the gaps, you know, like you said, if it's helping indirectly, even if that wasn't the intent, I.

In, in your executive? I, I, I had an interesting thought because one of the, the challenges that we, we look at, and it's the same thing, like eventually all AI is trained on ai, right? Like if everything's being created by ai, then what's it trained on and all those kind of thoughts, which are not completely incorrect I guess.

But one of the, the things I was thinking about when we were talking about how from a coding perspective, whatever we wanna call it, vibing, whatnot. It's a lot to me like. Working with, like, as a, you know, a, a, a senior architect or senior engineer working with someone who's more junior. Like if we, and not, not in anything about like who's experienced, but just traditionally, if you think about in most places when you're starting out as a, as a coder, you're just doing what you're asked to do.

Right.

**Kat:** If you're assigning work and doing code reviews for a principal engineer, the value add you're bringing to the table at that point is very different than the value add you're bringing to the table. If you are assigning tasks at tasks and doing code reviews for a junior engineer and intern, and it has nothing to do with the value of the person at that point because all of those people are very valuable.

And I actually like, I very much like, the theory that, you know, the principles exist to make the seniors life easy. The senior's life exists to make the juniors life easy. And if it's flip flopped where the seniors get the important, important work and the juniors get tedium, then that's, that's backwards.

Right. with LLM, it's like you said, there's a lot of that. Yes. You, you're going to make mistakes. We anticipate mistakes. That's why we. Practice the actual, you know, industry standard development cycle where you, you plan, you develop, you test, you iterate, you document, you commit. And you do that on a loop.

And since that's the way that LLM we're already trained, 'cause they were trained off of, you know, GitHub it turns out they really like it when you supply context that way. They're like, Hey, go write this GitHub issue. And then you change the GitHub issue just to actually fit your exact requirements.

And then you're like, go pull the GitHub issue. I I edit it now, work it. And that is a very familiar thing to the LLM based on the content that they were trained on. And so it's very comfortable working GitHub issues like that. And then I've learned that I actually have to maintain better code hygiene because if I want to continue on a more com complex project, maintaining the coherence of a context window for new feature development, I have to be really, really, really good about keeping things encapsulated and modular and clean.

I well documented interfaces and a data model that. Is easy to explain and easy to understand for each area of the code so that when I go develop a feature, I say, Hey, go research this project and let me know when you have an understanding of this function, this feature, whatever. And then I'm like, okay, now this is the GitHub issue.

We're we're working on pulling the GitHub issue and start working the tasks. And at that point it has. Pretty coherent context to be able to run, a one to two hour pair programming session. I have a problem with running this stuff in data centers that are powered by a gas turbines. So I'm working on a local setup over the course of the year that will replace that.

I, I, I'm definitely afraid of the throttle that capitalism likes to press all the way and ignoring consequences. So I think as practitioners we also have to step in and say, yes, we need the technology. Yes, we can't get rid of the technology, but also we can't kill ourselves while we're doing it.

That's also a really, really important thing that we have to be showing up for. Especially when there's our, our threats to sanity in the room right now and mass.

**Matty:** Yeah, Paul Czarkowski gave a really good talk at DevOps Days Chicago this year, which unfortunately was not recorded. So, but I'm sure he'll, he'll give it elsewhere. But a lot of it was based on sort of open ways to use LLMs both at, you know, that you can just run locally at home on a Mac Mini, partially because of environment impact, but also, hey, maybe we don't wanna be given, you know, the evil M Fers as Paul referred to them in the talk, you know, access to all of our stuff. 

**Kat:** I don't wanna have to stress about secrets in my context all the time. So if I have an entirely private only I can access Stack as a developer that's going to be using it heavily. I. That also really, really helps with the question of, IP and sovereignty and security and things like that, right?

Where it's still, I obviously should be minding good practices, but also the risk exposure is not terrifying.

**Matty:** Yeah, and it's, it's easy to do because there's, you know, I mean, just think about it this way, an env file, right? Like, usually that's great practice, but that's within the workspace that your agent is looking at. So theoretically it reads all those secrets, which would normally be the perfect way to do it.

Put NV in your gi, ignore it. Never goes to get, never leaves your machine. That's cool. Except you. 

**Kat:** it doesn't solve the fact that it can still pull stuff out of your environment variables. But usually what I'll do is I'll do a, in my home repo and then I'll do do a, an well an n var C with Duran. And then I'll do an N var C. That's N var C secret. And then of course I have that Chung 600.

And then what we'll do from there is have in a get repo, if I want those secrets, I'll have it source the secrets that I keep in my home directory so that get commands still can't get at those secrets. And then if anyone out there is running like Claude code or anything like that, or any of these agents on their actual host system, y y'all don't, don't do that.

I don't know. That terrifies me anyway. I don't want an AI crawling around on my vial system, so I am a very heavy user of dev containers and honestly, that's a really neat way to feel more secure. 'cause if you're using good get commit. Hygiene and if you're using a dev container or wrapped around your agent, the footprint that you risk there is not as terrifying.

**Matty:** That's, that's really interesting to think about where that goes in. I'm putting some, some things that'll go in the show notes, some of these suggestions. So definitely, you know, folks refer, refer back to those, because that's, that's one of the, you know, when we're kind of thinking about the ways to do this responsibly, or at least minimize exposure, minimize risk profile, I think that's, really key.

And not necessarily, you know, they, they, it's, it's made incredibly easy just to like sure. Do the thing. Right. You know, and, and I try to be pretty cognizant of this hygiene, and I'm sure I, you know, screwed up all the time.

**Kat:** It's important to try and make it safe to make mistakes.

**Matty:** So, as, as predicted as we start to run out of time, we have tons and tons more to talk about. One, one thing I just wanted to kind of say, if, you know, you've given a, a couple suggestions of things that I've, I've taken to heart already. So I love the idea of having a task checklist file that is part of your context.

I accidentally did that recently and it was super helpful because I, I went back to this plugin that I was writing, which I had to throw away What. The agent tried it first, but one of the things is there's a release checklist. There's things that we do before it's ready to go, and it's a long list of stuff.

And so I said, okay, well I'm just gonna make a list and then just step through each one of them with the agent, because a lot of them were just things I didn't want to do. Right. You know, it was like, go write a doc file for every one of these tables that is practically self-documenting, blah, blah, blah.

And I, so I put it there so that I could, at first, I just. Tech, I just pasted it in there for my own self. And then I said, I wonder what happened if I just told the agent about this. And turns out that works really well. but it didn't occur to me to do it at the beginning. Like you, you suggested, and I'm interested in this other tip or suggestion or thought about a you about a GitHub workflow with the agent.

Does that work

**Kat:** Yeah. 

**Matty:** different agents have different access to the internet too, so maybe it wouldn't

**Kat:** Have you used any configured any MCP servers yet?

**Matty:** Yes. But only ones for our stuff. So we just, at Turbot, we just launched some MCP, so I've, I've configured in for that, but, 

**Kat:** yeah, so the GitHub one is really handy if say you're gonna work an issue, even if it's like human generated you can pull the issue and then I. What I'll do is sometimes have the LLM drop comments on it as it goes. So like if we make a design decision pivot or a tooling pivot or something like that, and I'm like, look, this is why we're doing this.

You can see the error messages and how we actually solved the problem by switching to this other library. Go update the issue with a comment like explaining the pivot, right? And. It's pretty good about that. Or if it's like, Hey, last week we were working on this issue. We were tracking our progress in the check check boxes.

So go retrieve the issue in the comments. Get up to speed. Check our current, get our local get log. Get diff and let's pick up where we left off, right? So like Monday morning, it's not, I'm dragging my feet till 11:00 AM when my brain actually starts doing critical thinking. It's, oh, here's what you were doing, and then I'm on task and I'm, I'm good to start trekking along at that point.

It's kind of helpful for stuff like that.

**Matty:** I love this. I'm so excited and it's what it reminds me of that's a little funny. It's kind of a running thing, so I use, even in. Repos that I'm the only person that contributes to them. 

I use issues a lot, but, but not, and everybody does. 'cause that's keeping track of the to-do, but it's, it's kind of a running joke.

There's one project I was working on that there's a, there's an issue in there that has like over a hundred comments on it and they're all me talking to myself. But for that reason, right, 

**Kat:** I read the TikTok of this.

**Matty:** It's, it's, and and, and I love that because I'm like, well that's, yeah. Why won't, because that's what I'm doing with the, the agent is, you know, having the conversation, figuring it out. It's

like, but get that recorded, you know, in a, in a place. So like you said, so when I pick it up a week later or whatever, I have that history in that context.

'cause yes, you might, number one. Even if it's just me. Sure. It's in the age, but that's all tough to find again, and you're not gonna see all the things and there's so much glut in the chat. But if it's like, oh, this is why we decided to do this, or this was the issue, right? We tried this, this was the output, this was the problem, didn't work out the way we expected it.

That's a really, really great thing. Without getting into, I, we don't have to go to the weeds on it, but I'll dig into it more later, but how does the, with the GitHub MCP, then. Who is it act? Is it acting as you when

**Kat:** Yeah. So at least at the moment the way I have used it has been. Based on my active credentials. There are also a lot of, I think there's merit in doing a service account so that, you know, you can have, slack or whatever integration. And that way when your team decides something in chat, after debugging a session together, it's like, yo, what happened in this chat?

Okay. Go make the updates to the relevant issues on GitHub, and it's really good at that kind of task.

**Matty:** it would probably be helpful for me if it was a service account. 'cause otherwise I'm gonna look back later and I'm gonna be like, I don't remember

**Kat:** I didn't, yeah. Well also, I, I wanna be able to distinguish the difference between what I write and what it writes anyway,

**Matty:** Yes, exactly. 

**Kat:** honestly, there is a reason to have healthy skepticism around what it's spitting out because it's not. It messes up a lot. It's not replacing people, it's not replacing people.

It's making us think about, it's kinda like we used to think about programming for an individual floppy, and then we were like, okay, now we can put, write multiple programs for one, one operating system. And then it was like, okay, now we're, we're doing lots and lots and lots of operating systems. And then, oh wait, now we're doing lots and lots and lots of applications across.

Thousands of machines, and in a similar vein, it's almost, I feel like I have that access to problem solving. Instead of doing a word processor, I'm doing a paragraph processor or, you know, like I do API drip spec driven design and actually make that a standard practice where the code gem largely does itself.

After you've built a properly informed and documented API I really do think that it, it gives people access to becoming a more of a creator

**Matty:** Yeah, I guess the, the last thing that I, that I come to mind, just like you said, may, it messes up a lot and that's fine because it happens. What I, I think it's really important to, to put the guardrails in, in place about what you want it to do because I discovered when something doesn't act exactly the way that it, the LM expects, it's gonna start troubleshooting something that's not needing to be troubleshoot.

Troubleshot. 

**Kat:** Troubleshooted. 

**Matty:** troubleshooted for example, you know again, I was working on this plugin and then it decided it wanted to test it and it ran a CLI command. That was not the right CLI command for it. So it had an error and then it was like, oh, well maybe the plugin's not installed right? Let me go un install it and lemme try to do this.

I was like, no, you just were doing the wrong thing in the first place. Or I've also, this is what was aggravating. And again, I feel like the better upfront you do, it helps, but. An LLM will go back and it will try to fix a thing. It's already fixed and it will break it because

you 

**Kat:** yeah, yeah, yeah. It.

**Matty:** the context window is small and so let's say it goes and there was an issue with this function.

Then you get it good and that's great, and then now you're moving on to something else that touches that function and then it gets earned, and then it decides to look at that, the original function, that was fine, but it thinks there's something wrong with it. So it just looks for things that might be wrong and it's like, oh, well now it's this, so let's reformat the whole thing.

And you're like, you just broke a thing. And we've talked about like, should you be polite to the agents and 

**Kat:** Oh, always. Positive context. 

**Matty:** Yes, you should always be polite for two reasons, right? One is because when they take over, they'll remember who was nice, but secondly it, I think as humans, it's good practice because if we talk to our agents politely, we are probably more inclined to be kind and polite in everything.

I don't know how 

**Kat:** Well, yeah, it's very true. Okay, so. Neural networks are, at least in some fundamental theory, aligned with how human brains evolve. We have neural networks in our brain too, and if we are reinforcing behaviors that are demeaning or destructive or negative towards others or ourselves in a chat. We are reinforcing those patterns in our brain and we, we are lowering our ability to distinguish between treating computers that way and treating people that way.

So I, I am very strongly opposed to abusing the robots. Even if they never retain sentient, right? Like we actually have to respect our own presence enough to appreciate that what we put out in the world we are will also change ourselves.

**Matty:** I think that's a good, thought to leave on. As we, as we wrap up here and there's much more to discuss. So as I 

like to say, when. People are on the show. I guess we're gonna have to do another episode.

**Kat:** I guess we're gonna have to.

**Matty:** I guess we're gonna have to in the meantime, if you head over to arrested devops.com/using ai, you'll get this episode show notes.

Visit arrested devops.com/itunes. Leave us a review in the Apple Podcast store. If you wanna help other people find the podcast. Yes, I know it hasn't been called iTunes in forever. It would probably be very easy for me just to update that redirect. I could probably get an LLM to do it, but on principle I'm not.

You can also listen to us on Spotify, iHeartRadio audible, wherever fine and less fine podcasts can be found. Kat, thank you for an amazing conversation today. This has been a ton of fun and I look forward to doing it again.

**Kat:** I'm already excited.

**Matty:** This is Arrested DevOps, and remember there is always DevOps. This is the part where you say in the banana stand.

**Kat:** Stand
