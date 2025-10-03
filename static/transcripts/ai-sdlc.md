**Hannah:** [00:00:00] used to be that like testers didn't trust developers and ops didn't trust testers and there were all these silos and now we're putting AI agents in the mix.

Can we trust them? Should we trust 'em? 

**Matty:** It is time for Arrested DevOps, the podcast that helps you achieve understanding, develop good practices, and operate your team and organization for maximum DevOps awesomeness. I'm Matty Stratton. We have a remarkably awesome show for you today with two great guests. But before we jump into that, let's have a word from our sponsors 

Today's episode is sponsored by attributes. I met the team, saw a demo, and honestly, this approach is quite clever. They call it finops without tagging. It's the first finops runtime technology that analyzes cloud costs based on infrastructure traffic instead of relying on billing reports or tagging.

For teams who need visibility into per team, per [00:01:00] product, or per customer cost attribute, enables this visibility with one line of code. Think of a list of your teams or products or customers. Broken down to RDS, BigQuery, Kubernetes, OpenAI Data Transfer, and over 35 multi-cloud services based on actual usage.

Fully automatic, no spreadsheets, no tagging. They've been recognized in six Gartner hype cycles and are working with companies like Akamai and monday.com Arrested DevOps listeners, reach out by the end of 2025 and get their highest tier at the price of the base one for the first year. Check 'em out at Arrested DevOps dot com slash attribute.

Got robots writing your code, great, but you're gonna need a safe place to run it. Fly machines are fast launching hardware, isolated VMs that spin up in milliseconds. Perfect for sandboxing. Even the sketchiest LLM generated code, dynamic sub-domain routing, and [00:02:00] zero cost scaling to idle. Yep. Got those.

Robots break things. Fly machines restart cleanly and scale effortlessly. fly.io is built for humans and loved by robots. Check out Arrested DevOps dot com slash fly and make your robots happy.

**Matty:** I am joined today by Hannah and Robert. I'd love to welcome you to the show, and why don't you both introduce yourselves a little bit, Hannah, we'll let you go first.

**Hannah:** Oh, thank you. Thank you for having us. So my name's Hannah Foxwell and I can't believe this is the first time that I'm doing Arrested DevOps. Like how did that happen? So I've been working in DevOps and platform engineering for over a decade. I like to think of myself as a bit of a DevOps elder these days.

I don't do as much of that as I used to because I've got swept up with all of this craziness that's going on with AI in software development at the moment. And to be quite honest, I am like so [00:03:00] here for this rollercoaster. Like we don't even know what the future's gonna look like, but we know it's not the same as what it looked like just.

Like a few years ago. I work with a number of AI startups. I've built a community around AI fluency. We're now at a thousand members, which I'm really proud of. And and that's really what I'm doing these days. I consider myself a bit of an AI explorer, so I'm here to have a little chat about that today.

**Matty:** That's great. Yeah, I had the same thing when we were talking about having you on. I was like, Hannah has to have been on the show before and I looked and you sure, sure wouldn't. So that is, an oversight. We are remediating. So welcome to to being on ADO here. And Robert this also is your first time.

But tell us a little bit about yourself for the audience.

**Robert:** Hi I'm Robert Warner. Thanks so much for having me and us. Yeah, a little different background. I'm a little older than Hannah, so I, she when she talked about her 10 years, I was reminded, oh my God, I'm so old. I'm probably. 25 years in enterprise computing. [00:04:00] Started with the Commodore 64 some time ago.

Saw the internet bubble and now I'm decided to join the AI bubble. Let's hope it's not a bubble. What I'm currently doing is actually founded in my. Decent age together with some friends, an AI startup. And this is where Hannah is helping us. We both know each other from working together at Pivotal. What brought me there is that I spend a lot of time in enterprise computing selling software into large enterprises and learning the pain and now with ai, I think stuff is so interesting, again, reminding me of when the internet started. And so like I said we are up to building a new way of building software, and that's probably what we wanna talk about today.

**Matty:** Absolutely. And let's jump, jump right into this. We're not gonna talk about being elder states, people of the industry because we'll all just start aging ourselves if we play that game. So we just don't do [00:05:00] that. Although I will drop one thing. I think Hannah will get a kick out of, I.

When I especially when I was looking for another position recently when I was on the job market, I was doing a lot of interviews and you have to do your, let me give you your background and everything, and I always. Would say oh, I feel like I joined the DevOps movement a little bit late. And then I do the math and first of all, every year you've been a part of it for a greater percentage.

But it was like, yeah, it really, is you've been around most of the time, so just let's not talk about that. But let's talk about ai. So everyone is talking about AI and people seem to have very strong opinions. This is something, kat Morgan and I talked about on the episode recently I've talked about this with other folks, is that at least publicly it's very extreme.

We either have on one side, like on one end of the discussion it is like no one's gonna have a job anymore and AI can send us to the moon tomorrow. And it's thinking like a PhD and smarter than your grandmother and blah, blah, blah, blah. [00:06:00] On the other end. This is the worst thing in the world and it's a massive crisis and everything.

And like most things, there's nuance and like most things, humans don't deal with nuance very well. So it. We do love a divisive topic amongst ourselves, apparently as humans in a society and as we know systems are complex and we don't do well with complex systems. But that's a different podcast episode.

But for this one so like you said people are saying a lot, people are talking a lot, many people don't know that much about what they're talking about because these are 10 pole I think you, you've talked about this idea of AI fluency, and I'm really intrigued to hear a little bit more about that because I'm an explorer myself and trying to find a the, okay, there's uses that are not so great.

There's uses that are helpful. What's real, what's and how do we develop that that fluency to be able to, for lack of a better word, I almost said speak intelligently, but I'll get yelled at for that. But at least come from a place [00:07:00] of understanding.

**Hannah:** is, it's a huge need right now be, and I feel a little bit guilty sometimes because I say there's too much noise around ai. Everyone's saying things and not many people are saying very much at all. And that frustrates me. But I think about where I was like 18 months ago, I went to a talk at a conference and I was like, I'm going to learn about AI today in this one talk.

And I couldn't understand a

**Matty:** Teach me everything about AI

**Hannah:** Yeah, I'm like, I'll just learn about AI today and then tomorrow I'll be an expert. And it just didn't happen like that. And I've been in tech for a long time and it was a completely new domain. New vocabulary, new concepts, new techniques, and and.

It was like a, it was a light bulb moment for me and I was like, actually there's a whole load of people in tech or who work in like in our industry who this, the sort of AI is coming for us, whether we like it or not. And being able to make good decisions about how and where to use it is dependent on us having good [00:08:00] conversations.

And so that's where I started to really work on my own. AI fluency. And it just happened that at the time I was I wasn't working and so I was like I'm just gonna take a few more people with me. So that's what I did. I built this community called AI for the rest of us, where we focus on that we focus on providing like.

Talks and content about AI that's, don't dumb it down. This is not about us dumbing it down to oh, the magical black box does a magical thing. But it is about making accessible. As a domain to, which is very dense in new vocabulary because I do believe that, like we can all understand it, but we need someone to take the time to explain it to us in simple language.

And then we're, and then we're away and so and yeah. Personally for me, I think the more people who have that foundational level of AI fluency, the better conversations we have. And it's such a pivotal time in our history where we need [00:09:00] to really make decisions about what the future looks like with ai.

And if we're not all engaged in that conversation or having an intelligent conversation, like you said, then we're not likely to make good decisions. So it's a bit of a mission driven thing as well. It was felt selfish to start with. It was like, I wanna learn this thing. So I'm gonna, I'm gonna learn about it.

But now it's very much actually this is just incredibly important. And the more people, we bring into this community to help share knowledge, the better.

**Matty:** I, I think that's really helpful and it reminds me a little bit, I said this thought, because AI can be such a broad. Thing. It was, we joked about how to teach me everything about it, but just in general, even conversationally, and it's a little bit like the early like cloud, because depending upon who you ask five different people what cloud means, you'll get six different answers.

Because to some people, cloud is where I put my photo is, iPhoto or whatever. Some people, it's AWS, it's, and at its core. It's one thing and it that all those things are true, but some of [00:10:00] some things are better used than others in the same thing. When we think about AI and alums and agent and all these places, it's there are certainly use cases and what people look at and think about it where you're like, yes, but that's a very different conversation than how are we, how are using that tool?

And it gets very hard, especially in our soundbite, short post, click bait world. On either side. Or I'm trying to get a bunch of money, so I'll, say what I need to say. So when we think about Geni and I think for purposes of this conversation we're thinking about using generative AI and LLMs and Ag agentic work around building and operating and working with software.

So in that context which by the way is a whole other thing, my, my wife. Uses AI a lot in her, and she's an operations manager at an hvac, so she runs, HR and ops and things like that. And there's all sort, and her experience is completely different than mine just because it's a different use case.

Anyway, but we're gonna talk about it in terms of that, and I think when we [00:11:00] think, even before this wave of this kind of work. As an industry developer experience, DevRel, it is interesting to think about like 15 years ago even. What even was that was not a thing we would think to care about.

It was like tools or tools. They are, so DevRel X is a thing. It's continued to be a thing. How does that really work when we're talking about how people are changing in the way that they work? And navigating this, through all the different kinds of things that we've gone through with, working with Agile and how well it worked.

Maybe it didn't, you know, DevOps, how we talk about all these things. What's similar, what's different? What are you seeing in, in how people are adopting or struggling as well.

**Hannah:** There, there are definitely like some lessons that we can take from like these other transformations that we've been through. And again like both Robert and I we're from this like very enterprise transformation background. So we weren't part of startups who were able to like, adapt and evolve very.

Very rapidly. We were up against a lot of bureaucracy controls. And [00:12:00] even I even remember the first sort of agile transformation I went to, there was a lot of resistance and then with the cloud there was a lot of resistance and then there was DevOps and people like. People didn't believe that continuous delivery was possible.

Like they were like, it will never work here. And now you fast forward a decade and it's it's common practice and we've accepted that this is a better way to deliver software. But I often think about those early days where you have to be a bit of a believer. And I feel like AI is a kind of generative AI in the software development life cycle.

We're sort of at that early stage again, where it's like, there are some companies who are doing incredible, amazing things, and those are glimpses of what the future will look like for everyone. But there's a, There's resistance and there's new challenges. We had to, with DevOps and continuous delivery, we had to re completely rethink how we did ops.

Like reliability and stability was derived from [00:13:00] like the lack of change, the consistency. And then when there was frequent change being pushed through for a short while there, stability and reliability suffered. And we had to build our platforms in different ways. And we had to invest in observability and self-healing and things like that.

And I think, With DevOps back in the day, and developer experience becoming central to that. It's about how you take people with you, isn't it? And I think that's probably what a lot of teams are feeling at the moment because there is, unfortunately, there's this massive top down pressure to adopt AI and do it quickly.

Like we're going through a transformation everyone, but it's a transformation where like the, where we haven't got to the point as an industry where the best practices are really solidified around it. And the tools are still evolving. And we're coalescing around certain patterns, but it's not like there's no playbook yet.

And like I said, I'm like, I'm really here for it. Like I'm here for this rollercoaster of okay, what does the future look like? Where are we seeing patterns for success? What could we te, what could we learn from what other people are doing? But yeah the customers that we used to work with at [00:14:00] Pivotal, Robert, they were sometimes like resistance to our methodology. We introduced them to things like platform engineering and platform as a product thinking. Having a dedicated team that really only cared about developer experience, and I'm sure some of those patterns were, will continue to help those companies through this AI transformation.

What do you think?

**Robert:** Yeah, I totally agree. The interesting thing if I look back is that management in enterprises, they had to take so many decisions and change their mind over. Cloud brought for instance we have, we ha do you remember this trust issue that management had to give up, trust in the sense that you, in, in a agile way, you push trust to the edges of your organization.

And individuals have decision making power. What when to ship code and you have automation and self-service in the cloud. And it's so interesting now we're dealing with ai and all of a sudden you're dealing with LLMs. Black boxes and with everyone is learning now they're [00:15:00] non-deterministic and all of a sudden we have to trust an LLM to be right often enough, and this trust world comes up, up all of a sudden again.

What I draw from that is that we are in the super early days. If I compare that with the agile transformation or the DevOps transformation and tools have to get more mature. The underlying technology has to get more mature. And even if they would reach a plateau, I think only after then management can draw that conclusion.

And there has to maybe become a common sense of what's feasible and not and many more ideas will be created. So that's why. Hannah, I'm totally with you. I'm, I had, I thought I had to do that. I have to be there because there's so much to discover right now. And we can be creators. In terms of tools and approaches, 

**Hannah:** Yeah, I think the the trust thing is huge, isn't it? enterprise tech is so like successful failure based on based on trust. [00:16:00] It used to be that like testers didn't trust developers and ops didn't trust testers and there were all these silos and now we're putting AI agents in the mix.

Can we trust them? Should we trust 'em?

**Matty:** There is a massively interesting parallel in a couple different ways because all of these end up being cultural transformation and I'm trying to hit three different thoughts in my head here. So we'll see if I can remember all of them. But one I'll work with.

We don't love, Ronald Reagan and everything, but, he, he was a, I would talk a lot about even back in, when we first started talking about DevSecOps, which, will always give me anxiety. 'cause I'm like, that's what it was the whole time.

Thanks for giving this a stupid name, Andrew. But trust, but verify and trust, but verify really applies. Two age. This has not occurred to me until right this very second that maybe everyone else was like of course Matty. But I was just like, but that particular phrase but also.

When we think about, the change, and Robert you're talking about, getting the trust and the management having to change. And people, you [00:17:00] know would always ask, say, Matty what's the what's the most important DevOps book I could read? And it's not continuous delivery.

Sorry, Jess and Dave. It's a great book. It's not accelerate it's Freakonomics. Go learn about incentives and then you can learn how to do a DevOps transformation in your organization. And. It's similar, right? Because the more that we think about, it, it's, I used to quote this guy all the time.

I forgot his name. Is it Nego? But you can't change culture, but you change behavior and you change behavior by changing incentives. And sometimes, and then you think about, we can apply Nash preto to all of the AI stuff too, which is the incentives don't always work towards the incentives of the organization.

So we're looking at, so when we think about adapting and adopting these things, what are the unintended things that we are incentivizing perhaps, and there's some, and I actually, Robert, I really want to hear about Tru. I wanna talk about trust gap.

I wanna talk about AI generated code. But this reminded me of a thing that Jess humble said . And then he said, was talking about when he was at ThoughtWorks, was working with a customer and they had come up with, they said, in every sprint we're gonna add, every developer has to add three more tests.

Which meant they [00:18:00] ended up with a whole bunch of tests that were assert equals true. And they're like, I did the test. And I cannot tell you how many people I talk to who are in organizations now that say we are required. To use Gen I and they're just looking for bullshit re ways to do it so they can tick the box that said, I can fill out my AI TPS report this week to my manager that says, I used an AI tool and I just did it to do it and this all goes back to outcomes, all goes back to it's all the same. Shit we've been talking about for years and everybody's screwing it up. But that's the cynic in me there. But, Robert, you talked about trusting the agents and I've, in my ex explorations and we're in a, using a gen AI in, in various ways I've built things with it.

And I, one thing I will say is it's very, we talk about non-deterministic. My. Take on how helpful a coding agent is. You ask me two days in a row and I will give you two very different answers. 'cause I will [00:19:00] either be like, wow, that was really awesome, or Oh my God, this thing fricking sucks.

It is so bad. And that's being hyperbolic. But when we think about what we can do with this code that's created as we're vibe coding, as we're building whatever it is that we're doing. Like how should we be thinking about that? what are the successful ways to, to think about this and what are maybe the pitfalls to watch out for when we're thinking about how we can use gen AI with our software development?

**Robert:** Oh, that's a very good question and at the same time I'm thinking I have to readjust my thinking every other week and every other months because it's moving so fast. And like you said, things that worked last week might not work. Because someone updated from GPT-4 to GPT five. Sorry. And at the same time, there are other things possible that were impossible last week. To give you an example us being a startup we are in contact with our angel investors and the pool leads from our VCs and they [00:20:00] always share experiences and knowledges from other startups. We almost every other week we hear that the hiring strategy changes because all of a sudden, maybe last week, it became feasible to use Egen coders.

We all heard about Devon last year, but it was not usable and not very practical, but just whatever. A few months later, all of a sudden it's feasible too. Do certain things with AI that weren't feasible last week. So if you ask me what's it's gonna be like I don't know. To be honest, I think the AI that I have right now looks, reminds me of my old Nokia cell phone from 25 years ago.

I think it, it was one that started with a 10. So it was a monster heavy thing. And if I compare that to my. Whatever, iPhone, whatever you have it's there's no link to that. It's totally different. Nevertheless we think ahead and we try to envision, we as a team, we try to [00:21:00] envision what the future will be, and I strongly believe that number one, indeed core technology will get better.

I don't think we will ever get rid of hallucinations. But if it gets better and plateaus, then we can start building our procedures and our habits around that. And that means we get, for instance, we get used to the fact that you can't simply prompt and vibe code a Workday or an SAP or a Salesforce.

That's nonsense, right? if the AI ever becomes good enough to, from a prompt, build you a SaaS solution. Then your prompt has to be mega complicated and super fine grained and people are right now used to YouTube videos where you prompt a little game and you get a 3D shoot or out of, or whatever, an airplane simulator out of a few lines of text.

But that's not an enterprise application. That's not what we're aiming for. So I think. Let's get the core [00:22:00] technology stable and not every other month a new LLM is coming out and everyone ex expecting miracles like we had the last 12 months. Let's build new tools on top of that as a foundation and then let's create a culture and workflows around that, that are based on human experience.

How to deal with this black box because I, like you said earlier, HANA and. We are all still learning what's feasible and how to trust it and how not to trust it. And yeah, that, that's my take on that.

**Hannah:** Yeah, and we've had conversations about this before. The big question is, it's will AI be, better and faster at writing code than a developer? And then we have to think about what is the role of a developer? Because somebody needs to own the code. Like somebody needs to own the service.

And then we, it's like, it's the ops. It's the ops challenge again. It's does anybody really want to own a service if they didn't write it and they don't understand how it works? And I think that's another gap that's emerging as well. It's the understanding. [00:23:00] Like that you need to be able to trust and operate.

So it's very relevant to the DevOps conversation because it used to be throwing over the wall from DevRel to ops. It's now AI throwing the code us potentially.

**Matty:** And I think that. Again, things will evolve and we look at the current state of something. Things can change, but maybe not. But that's a real interesting problem because if you're. Like, I hadn't really thought about it until you said that, Hannah, but the, yeah we're back to the wall of confusion.

It's almost worse in certain ways. And I'm gonna speak from my, my, my own experiences. So I have a project I'm working on that I'm building with. Substantial help from Cursor because I suck at React. But from a, like an infrastructure and architecture perspective, I understand the problem and pleases and parts.

And one of the things I will tell you that I absolutely learned and shout out to the wonderful Heidi Waterhouse who will be like, duh, Matty, don't you even ever think of having an ai? Write your docs. But I was like. Okay. Can do this. And it's really [00:24:00] bad at this, and I shouldn't say it's bad. It's a bad idea because there's so much information.

It's trying to be, so you talk about the hallucination, the hallucinations, i'm like, it doesn't do any of these things. But there were docs I had in my repo that were my PRD about, I think I'm gonna do this.

And then it's oh, that must be what it does. And so I'll put that in the documentation. So as it becomes, and it's interesting because great documentation is what makes agents work really well, but that requires like, and that that's a lesson we learned at Turbo where I'm at. 'cause we went through, an experience of how do we make it so that people who are using gen AI to develop against our APIs, against our tools, have a better experience with that and went through kind. And basically what we found was the best way to do that was to have. Kick ass documentation because that's how it's all trained.

It's and then we're all guessing. It's like the old black box SEO days. Oh, do you have an LLM txt and how do you do [00:25:00] this? Or whatever. And we're like, but the other thing and Robert, you kinda lose, is what we found for our own practices was, went through a lot of experience like, oh, do you write cursor rules?

Do you do this? And it was like, no, just to be very explicit and small. What you're, and that, with my joke, right? I said, depending upon which day it is, no. The truth is the days when I get frustrated using a coding agent are the days that I asked it to do too much. Where I sat there and said, this is when I was too vague.

I was too broad. I had some GitHub issue I created that was like half-assed. Then because it, is wants to, that's, it's built in a way to be like, I have to come up with an answer. I'm gonna do a thing, I'll do the thing you said. But I'm like maybe the thing I said wasn't really well baked, but when I'll sit and say, okay, we need to refactor in exactly this way, that's helpful.

the idea here is to be successful with these tools requires an understanding of how it will be operated, of how to build the architecture, how to do that. Nobody leaps out from Zeus's [00:26:00] head fully formed as a senior software architect.

We all got here by doing shit work, by doing all this stuff. And so if we're like that's cool, the agents are gonna do that, so nobody has to do that anymore. We're not gonna hire people to do that. You're never gonna get to that point. And I, we're not gonna solve this problem on this show, but I think there's probably ways, because the same argument was probably made when we think about DevOps, when you think about this how could you possibly know how to operate?

You're like you do. You learn and like maybe it's the evolution of thinking about how you guide. These places, and maybe you start a little bit further down the conversation, but we're not there, I think. 

**Hannah:** If prompting your way to a solution requires you to already know what you want then it is yeah the AI has taken the actual typing off you, but it's not taken the thinking the knowing and the understanding. One of the, one of the things I really like about Leap two, your [00:27:00] product, Robert, is it's quite opinionated. It's quite opinionated and constrained in what it will and won't write for you. So it's it's prompt driven and it is visualized, but it's also constrained in that it can't go too far wrong. Like we talk about guardrails. I dunno whether you've been to like an AI security talk, I'm sure there are loads of them and people jump up and down about guardrails and no one ever gets really specific about how to implement them.

But I think it's like the necessary constraints about what's an acceptable solution in your context so that you can constrain the LLMs and the agents and all of that. In all of that knowledge that's internalized within you, Matty, about how to architect things becomes external and like implementable by anyone.

But I dunno whether we're they yet, like I said, like everyone, everyone knows that we can't just yolo. This this AI generated code into production, but we're still wrestling with the leg, but how do we do it with reliability [00:28:00] and security and speed? 

**Matty:** It's funny, we've been talking about this for forever, mean, infra code world, all this stuff is guardrails bring you freedom because then you have trust. This is not a foot gun. I can't accidentally drive this car over the cliff.

So that makes me feel really safe and comfortable to explore. Whereas if you're like. Okay. Wait a minute, I don't know if I could accidentally drop the main table in prod, then I'm gonna tiptoe everywhere and be very conservative and I'm not gonna be as, be able to be as creative.

And this goes all the way back. To blameless, right? The whole idea was not that somebody made a mistake, it's why did the system allow it to happen? So to do that, you have to have a system that can create with that. So actually I would love to hear a little bit about, your philosophy around this, Robert, and like how are you thinking about that? Product, obviously I said everything is very nascent and we're trying lots of things, but what have you seen that's effective with that and how, what's the guiding principle that you're seeing around that and what you're doing with your product?

**Robert:** Yeah the thing is that we try to think backwards from. [00:29:00] Not knowing how to get into the AI future, but what would be the end vision. And the end vision is accepting that LLMs are fallible and non-deterministic. And even if they would be, we as humans, we might not be clever in prompting.

Yeah. So one thing is to add the guardrails, but the other thing is that we thought is if you use AI to generate code, even if you guardrail it like hell. We all know the difference between a plus and a minus. Yeah. Even if one symbol in your code is wrong, what would that mean for an insurance company or for a bank if there would be a plus instead of a minus or vice versa.

And that start, started our thinking that no matter what for important pieces of code, maybe code as a whole, but at least for important pieces of the code, there will. I believe no other way, but some human to take responsibility for that and some human to validate that code and [00:30:00] look at that code, even if it's tedious work.

And I'm convinced not many developers will like that. I'm, I'm, I grew up as a developer. I don't know about you, but the job that I don't like is verifying or revenue code from someone else. But realistically, the LLMs will be much quicker. Producing code that compared to any human in the world.

So we're probably all end up to some degree a verifying AI generated code much more than everything else. But our ideas just, let's make that as convenient and enjoyable as possible. Let's be, so basically we, we are gonna build a tool, a platform that allows humans to verify and validate AI generated code in the most.

Convenient and way and the best user experience because we believe there is no other way. Guardrails plus AI generates code and humans put humans in the loop and make it as [00:31:00] convenient as possible. 

**Matty:** it's really interesting something that you said when you said about taking responsibility and we don't wanna do that. And that's an industry failing. ' this goes back to the old thing about why in some countries and in some states you can't use the word engineer to refer.

To what people do in software, because engineers have a very specific thing and one of the biggest differences as we've all talked about before, about like a structural engineer who builds a bridge versus a software engineer is if that bridge falls down. The engineer is responsible for that, liable for that, versus we have no liability.

And a big part of that was because of the Boom. And there, and nobody would wanna do it. And I'm, it's interesting because from a doer perspective, we're not in the new king maker era anymore. as the engineers, as the doers, as the stuff, we are all fungible.

We are all. But the people controlling the companies of that, they don't want to take liability either, so it's still not gonna get any better when it comes to that. But still, [00:32:00] ultimately we do have a liability. We do have a responsibility. And I really, I like the idea of saying like, how do we make that. Easier, any transformation, make the right way, the easy way, make it harder to do it wrong is how I always think about it. You have to go outta your way to f it up, but it's interesting too because I was just thinking, saying about, you know how we're doing the reviewing.

I always get a kick outta the fact. 'cause again, being in explorer mode, I don't know that I would do this if I was working on real production code, but I'm always trying every single thing I can find. And so on my project, I'm generating code with Cursor or whatever in myself, and then it goes in, and then I've got the CODO bot that's commenting on the pr.

And then we're taking the feedback from this bot to that bot and back and forth Now. There's still a human in the loop, which is me. I'm not sitting there and saying, Hey, okay, just you put in a pr, wait for feedback from this other robot and do whatever.

I'm taking that feedback and then half the time going, okay, I see where you're coming from with this, but no, [00:33:00] that doesn't apply. And then being able to connect. But I, but especially, I always, again, think about incentives and think about what people have to do. And it's one thing for me on my hobby project to do this, but if I'm under the gun.

To deliver and deliver faster, because my leaders are like well, you use ai so why aren't you shipping faster? Then maybe I'm just gonna be like, sure. it actually reminds me of a really silly thing way back in the day when the Markov chain bots were popular, the eBooks things or whatever, and so Hannah, I dunno if you remember, I had a bot called Pete Chabot that was trained on our friend Pete Chelo, and it ended up just 'cause I didn't code it right to do this, got into a loop with another ebook bot.

And it just two things, 

**Hannah:** Oh no.

**Matty:** just absolutely ridiculous. You have to say, wait a minute, don't talk to these other bots, because they'll just sit and have a whole conversation with each other and, and it was hilarious, but it's not necessarily hilarious when it's, code that you're shipping.

**Hannah:** No, exactly. And I think a lot of the teams that have invested in good engineering practices such [00:34:00] as like blue-green deployments, AB testing, making it really safe to fail in production. Like they, they're probably gonna benefit from this sort of step change in code production and velocity because they've got those safety nets in place.

And folks who don't, who are still relying on those fallible humans. Then it's probably sounds higher risk, doesn't it? But yeah, there's lo there's load there's loads of ways. There's loads of ways that you can envisage like the benefits, but also the new.

Problems that this technology and this speed of code generation brings to us all. But I do think that if we take a step back, a lot of the engineering practices and they exist already. They're just not as well. They're just only adopted by the real sort of leaders in the industry.

And there's lagging majority that haven't quite got there yet. But I hope that they do. Otherwise, we're just, again, we're just owing AI generated coding for production. And as cu our customers will suffer for it, and our businesses will therefore suffer and we'll all be like, oh, no, AI [00:35:00] was such a bad idea.

I want a an artisan human written piece of software. Please. We don't want, we don't want that to happen. It would be a shame

**Matty:** You never know. Maybe that's becomes a boutique industry where 

**Hannah:** yeah, it would, it

**Matty:** It's like organic. And you say this is USDA certified organic code. Yeah. I don't know. I was gonna say, get your bag, whatever way you need to get paid, figure it out.

as is often the case with any pod, right? You're like, this spun off possibly 17 different deeper dive conversations. I would love to just get some final thoughts from each of you about, especially folks who are. Explorers because I figure there's definitely folks who are like, this is just bad, not into it, whatever, and hate you. That's good. I'm not here to judge anybody's how they look at stuff. But if you're like, I got my name made up. This is crap. Then we have any advice for you, right? Then continue.

And if you're going the other way, whatever. But for probably, what is the majority of people who are explorers, who are like, I have to learn, I have to figure out how to do this and [00:36:00] where this goes. What would be, so I'll start with you Hannah. I'm gonna ask the same question both you. What would be like your number one bit of advice to say as an explorer who's trying to learn more, what's the most effective way, most effective tip you would give somebody to keep in mind?

**Hannah:** So can I, can I say two? I'm gonna say

two. My first one is really simple 

**Matty:** It's a guardrail. You can only do one. It's a constraint con. We can do two.

**Hannah:** I'm good. I'm cheating. I'm cheating. I, so my, the first word is just to have your eyes open like the, I do think that with any transformation there will be some folks who are out there ex. Experimenting and sharing what they're doing and having your eyes open to see what the patterns emerge.

Like who's being successful and what are they doing, what do they have in common? And I guess the second one is related to that because the early days of DevOps, for me the biggest benefit was sharing stories of success and of failure with the community. And I think community is a [00:37:00] huge thing.

And having that network of people who are going through similar changes and transformation together and sharing what works and what doesn't work. I think that's I think that's increasingly important. And one of the reasons that I wanted to start building community again because I've thought what we need is a place where we can get together and talk about these things where we don't have to pretend that everything's great.

So if I could do a tiny little plug for the folks who are based in London listening to this episode. We've got our annual conference. AI for the rest of us is in London on the 15th, 16th of October. If you're in London, you wanna come along, there is a discount code. For a 20% off your ticket, which is gonna be part of the show notes for this podcast.

ADO 20 is the code that you need. We are not live streaming, but all of the all of the talks will be available online afterwards. But if you do happen to be in London, I'd love to see you there. Like I said, I think. For me, community is the main thing that we need right now. We need a place where [00:38:00] we can talk about this and I'd love it if some of you could join us.

**Matty:** Robert, what is your pro tip that people should take away as they want to explore and learn?

**Robert:** yeah I think it was really clever what Hannah said and to add maybe something else some personal experience. I started to follow a handful of news outlets and YouTube channels. Really, because it's so fast paced. It's probably, you don't read it in the newspaper. But they are, my, my additional tip is there's so much noise.

I think there's so much. Overhyped stuff or niche stuff or paid content that you have to be careful and not to waste your time, just sneak around and look for the quality outlets, and then maybe ignore the stuff for a week or a month, and then stuff that comes up again then you should maybe spend your time with and and practice.

Unless you practice yourself like you said, you played with cursor. And you probably have to do it every other month because a new model coming and an updated version. If not, if that's not your main job, then maybe do it [00:39:00] every other three months and do a refresher. Yeah that's what I usually do.

**Matty:** I love it. If you head over to Arrested DevOps dot com slash ai sdlc you can find this episode's show notes where we'll have links to everything we talked about including Hannah's online community work that she's doing and maybe some other great resources from Hannah and Robert.

If you visit Arrested DevOps dot com slash iTunes, you can leave us a review in the Apple Podcast store that can help other people find the show. You can also listen to us on Spotify, iHeartRadio, and Audible on pretty much everywhere that fine, unless fine podcasts can be found. So Hann and Robert, thank you so much for joining me today.

This has been a great conversation. This is Arrested DevOps, and remember there is always DevOps. 
