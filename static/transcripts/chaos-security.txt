> *Matt Stratton:* We're adults, but we're all kids at heart.
>
> [background music]

> *Matt:* It's time for "Arrested DevOps." The podcast that helps you achieve understanding, develop good practices, and operate your team and organization for maximum DevOps awesomeness.
>
> I'm Matt Stratton.

> *Jessica Kerr:* I'm Jessica Kerr.

> *Matt:* We've got a really fun and interesting, and one might even say chaotic show for you today. Although, we have an upcoming episode that's going to be even more chaotic, but...

> *Jessica:* [laughs]

> *Matt:* The story. [laughs] First, a word from the sponsors.

> *Announcer:* The worst thing about the Arrested DevOps podcast is when it ends. You're left wondering, what to do next? What are you going to listen to on your commute home? How do you occupy your time when walking the dog? What are you going to listen to during the quarterly all-hands meeting?
>
> Fear not, dear listener. There is a solution. You need to subscribe to "Software Defined Talk" right now. It's a weekly podcast that recaps all the news in cloud computing, DevOps, and enterprise software.
>
> The hosts, [inaudible 1:07] , Matt Ray, and Brandon Whichard will keep you up to date on all things cloud while offering tips on how to optimize your Costco haul, and how to PowerPoint. It's a fun, free flowing conversation that will keep you entertained and informed.
>
> What are you waiting for? Subscribe to the podcast today by visiting [softwaredefinedtalk.com](http://softwaredefinedtalk.com/) or by searching for Software Defined Talk in your favorite podcast app.

> *Matt:* Like I said, we're going into the realm of chaos today, but not necessarily the chaos you might be thinking of. We're going to put a little bit of a spin on it. Joining us today is Aaron Rinehart. Aaron, welcome back to the show. Tell us a little bit about yourself.

> *Aaron Rinehart:* Yeah, thanks for having me. It's been a couple years. My name is Aaron Rinehart. I am the CTO and co-founder of a company called Verica. I co-founded Verica with Casey Rosenthal, the creator of "Chaos Engineering" at Netflix.
>
> We are bringing series of tools to the market that combine the Netflix's Chaos Engineering as well as what I did with Security Chaos Engineering in UnitedHealth Group. We're early stage startup in [inaudible 2:22] .

> *Matt:* We had Aaron on the show a few years ago. The show was about taking an enterprise project internally and making it open source. That project was related to Security Chaos Engineering and things have changed. Can you level set...We talked about Chaos Engineering a lot, but what is Security Chaos Engineering so much?

> *Aaron:* What's actually quite interesting is that this whole thing started with us hiring our first SRE. At UnitedHealth Group, I was the chief security architect for the company. I was part of leading the DevOps transformation. I remember at the beginning, I didn't even know what DevOps was.
>
> I was a software engineer for over 10 years in my career, but I didn't do Agile. I was still at NASA when I was doing that. NASA, at the time, we just weren't using those techniques. Very much a waterfall mentality.
>
> I get to United and I start trying to...Because I could empathize with software engineers, we started learning about this DevOps thing and I started listening to the pain. We ended up leading this, so I ended up kicking off this DevOps transformation. As a result of that, we hired our first SRE, Patrick Bergstrom.
>
> He was at [bestbuy.com](http://bestbuy.com/). They said, "Hey, you're one of our DevOps guys, you should meet this SRE guy. I think you guys would get along." The first day on the job, they put us together. We started talking. We started talking about what is SRE. I actually worked in reliability engineering at NASA, so my understanding of SRE was completely different.
>
> Actually, a lot of the concepts that come from [inaudible 4:05] with SRE come from things like NASA, resilience engineering, and things like that. He started talking about this chaos engineering thing, how they would proactively break parts to the system. It blew my mind.
>
> I remember that night, I just woke up in the middle of the night and I was like, "Man, why isn't this making sense to me?" It's because I was an engineer most of my career and I've never seen the system and the security as different things. It's either a system is secure or it's not.
>
> It's like safety, reliability, resilience, quality, they're all human constructs. It takes humans to create them. We decided, "Hey, let's see if we can apply this thing, this concept of what Chaos Monkey does, because I think that's where a lot of your engineering efforts begin with chaos engineering, is you look at Chaos Monkey."
>
> We looked at the code and we decided, "Hey, I think control validation makes a lot of sense to us, is that we build all these security measures into our systems," particularly we were thinking of the cloud at the time at United.
>
> We designed with the state in mind of how we think the security's going to work, but we have a mechanism for continuously verifying that yes, it does actually function the way we intended it to.
>
> At the time, I was also struggling as the chief security architect. I would have a data architect or the solutions architect come to me with different diagrams of the same system. It's not that neither one of them understood the system. It's that they had different mental models to what they believed the system to be. Diagrams are never actually an accurate reflection of the system.
>
> What I needed was I needed a way that was not subjective to ask the computer a question. Does the firewall fire when this condition occurs? Does the configuration management system catch these misconfigurations or violations of policy or policy rules? I want to ask the computer those questions.
>
> The idea of a hypothesis in chaos engineering made a lot of sense. It wasn't until later on that we started applying it to instant response, started seeing the compliance of it. I'll leave it there. That's where it starts. Really, Matt, it's the same thing that the SRE community has been talking about for years. It's just being applied to security in another part of the system.

> *Jessica:* You said, "Chaos engineering is proactively breaking parts of the system." I like that. You also said that what's important here is that you can ask a question. You can form a hypothesis. You can state how you expect the system to work in some non-optimal condition. Then you can ask that question of the real system.

> *Aaron:* Precisely. I'm branching off to my own definition of chaos engineering. I still believe in Netflix's chaos definition. I still think that's a fine definition. I like to explain it to people as a proactive methodology for understanding an inherent failure within a system before it actually manifests into pain. It could be customer pain. It could be engineering pain.
>
> That's what outages and incidents really are. A lot of security incidents end up becoming outages because you've got to take the service offline to fix the security problem or whatever.
>
> In the terms that form your question, maybe the difference, Matt and Jessica, where you guys are coming from, for security, is they're really not latency-focused. When you're bringing down a VM or you're filling up memory or doing those kind of things, all that really does is manifest into making the service slow. You can really...

> *Jessica:* Are those examples of what Chaos Monkey does? You've mentioned Chaos Monkey, but not everybody knows what that is.

> *Aaron:* Chaos Monkey began as part of Netflix's cloud transformation. So many people out there talked about chaos engineering like, "Oh, we can't even do the DevOps. We're not even doing CI. We can't do chaos engineering. It's so advanced."
>
> Really, Netflix wasn't quite really there either when they started. They decided to go from DVDs in the mail to a streaming service. This was 12 years ago, in 2008. What was happening at the time is in Amazon, AMIs were just disappearing. It was like a feature of AWS at the time. Netflix had... [laughs] Right? Adrian Cockroft is going to...
>
> [crosstalk]

> *Jessica:* Feature. [laughs]

> *Aaron:* He's going to love that one. That's what was happening. Adrian was actually at Netflix at the time, I believe. What was happening was is that Netflix had no chief architect. They had no ability to mandate thou shalt not do, thou shalt do this, use this tool, the whole paved road versus the dirt road concepts.
>
> What was happening is these AMIs were disappearing, causing for there to be an outage on services. What Netflix did, said, "OK, we're going to design our services to be resilient to these particular problems." They ended up building Chaos Monkey.
>
> Chaos Monkey would, during business hours, pseudorandomly pick an AMI, an "Ammy." I like to say, "Ammy." I love how people pronounce "Ammy." I'm boring. It would pseudorandom bring one down.
>
> What that did actually though, what a lot of people don't realize, it's not just creating chaos. What it does is it puts a well-defined problem in front of an engineer. It turns out, when you put a well-defined problem in front of an engineer, they solve it.

> *Jessica:* Oh. [laughs] "Works on my machine" is now "But does this work on your machine when this AMI goes down?" Suddenly, it's reproducible.

> *Matt:* There's a level-set thing to do. There's definitely been an evolution. When you think about the beginnings of chaos, with Chaos Monkey, were very much just like we're going to kill an instance.
>
> A lot of the way that people reason about chaos engineering and the way that they understand that is, this teaches software engineers they have to code defensively because they can't trust anything. The reality is you can't trust in the first place.
>
> One of the things to think about, though, is fundamentally at the end of the day, what we're doing with chaos is we're testing a hypothesis. Our hypothesis is that if this thing happens, everything will be fine. If your hypothesis is, "If we do this thing, everything's going to go to shit," don't test that.

> *Jessica:* [laughs]

> *Matt:* You're actually trying to prove a positive. You mentioned, Aaron, the Netflix definition, so I went and pulled from one of my slides.
>
> The one that I like to use from Netflix is from their tech blog now nine years ago, but it says, "By running Chaos Monkey in the middle of a business day in a carefully monitored environment with engineers standing by to address any problems, we can learn lessons about the weakness," etc., etc.
>
> The things that are important about that is that it's the carefully monitored environment, engineers...A lot of times people think that the point of chaos is to keep the software engineers on their toes. Absolutely not. When you look at how these patterns go, everybody knows this experiment is happening and as soon as things look squirrelly, it's done.
>
> You're watching your key business metric and if that starts to go south, pull the plug on the experiment because you just disproved your hypothesis that everything was probably fine. Jessica, you said this a little bit earlier and that's why I wanted to bring it back, you said it's an experiment and you're testing this hypothesis.
>
> If I'm reasoning about the security chaos engineering, it's that we can have not hypotheses just about the reliability of the infrastructure. Common chaos experiment is that this API I have to consume is unavailable. I assume that if I'm supposed to query this PayPal API and it goes down, that my stuff won't fall over, so I'm going to test that.
>
> What I'm curious to understand, because I've thought about automated compliance and things like that, what does an experiment look like in security chaos testing?

> *Aaron:* Sure. The premise and the notions affecting things are fundamentally the same. What's different, you're right, are the actual things we're experimenting. A majority of the experiments are focused on accidents and mistakes. That's really the root, I like to call that the low-hanging fruit.
>
> If you look at a lot of malicious code, look at a lot of your data breaches and malicious code as a result of it, it's crap code. Most of it's just horrible software. There's usually some step if you read through analysis of the steps of the code, usually it's looking for some kind of low-hanging fruit to exploit.
>
> It could be a [inaudible 13:08] account, it could be that you had 1234 as your password, it could be that you had ports open that shouldn't have been opened, somebody had more access than they should've. What we're doing with chaos engineering for security is we're proactively...We have this assumption.
>
> We have this firewall in place, we have this configuration management thing in place to proactively catch these things when these events occur. It's our assumption that we believe when these conditions occur, that we can catch them.
>
> What is happening, because of the nature of the speed, scale, and complexity of modern software, it's very easy to miss a misconfiguration when you have 680 BOS accounts and you have 200 services [laughs] and they all have different IAM conflicting [inaudible 13:59] ...IAM is a good example of complexity. It's inherent in every AWS service, but...

> *Jessica:* What is it?

> *Aaron:* AWS IAM. It's their...What is it?

> *Jessica:* Identity and access management? That one.

> *Aaron:* Thank you, identity and access management. I was just framing that up because I know a lot of people have problems with keeping the security in alignment with the change of pace of how we're delivering modern services and software. It's hard enough to keep an accurate understanding of how the system is operating at any given point, let alone its security.
>
> What we're trying to do is we're proactively introducing these mistakes, accidents, mostly misconfigurations, to try to determine and build confidence that when these kind of things happen, when our engineers trying to change the world for whatever we do as a company, are trying to make improvements, that we can catch these mistakes and accidents that happen along the way.
>
> That's what we're trying to do. It helps build confidence that the security, all that money we're spending, a lot of the times...My past experience with cloud transformations in particular is that companies usually have unrealistic expectations on timing, resources, costs, whether or not the people have the right skills.
>
> I find chaos engineering to be a great tool to say, "Does the system work the way we built it to work on a regular basis?" If I ask constantly, like you said, Jessica, asking the computer the questions, it helps you reinforce like, I may not have been an expert on how to build this, but over time, I'm continuously verifying that what I'm building is actually working or it's not.
>
> When it's not, that context informs us of how to do it right, if that makes sense.

> *Jessica:* I think you're saying that engineers aren't perfect. Stop asking them to be perfect, that's ridiculous. Notice it when they're not and let them learn from it.

> *Aaron:* Oh my gosh, I don't think that could be said better. [laughs] That's the truth. Another passionate thing I'm trying to change, Jessica, is how we at security...I'm currently writing the O'Reilly book on Security Chaos Engineering. First edition comes out mid-summer. I'm writing with Kelly Shortridge.
>
> Kelly Shortridge, if you guys don't know her well, she talks a lot on resilience engineering and security and human factors and safety engineering, cognitive sciences. We're trying to change the way people think about the "blame, name, shame" game. Incidents are not good opportunities to learn and a lot of times, we're just running around...People freak out...

> *Jessica:* [laughs] Emotionally, this is not the time of psychological safety for learning.

> *Matt:* During the incident is not when the learning occurs.
>
> [laughter]

> *Aaron:* Exactly. If you guys have ever seen my material, I'm just a huge fan of [inaudible 17:06] , I'm sure you guys are, too. He just has brought so much to the craft from these other domains. All these things you all have been talking about in SRE, in chaos engineering, apply to security people, too.
>
> There's just a gap in our understanding of how it applies to us and that's really what Kelly and I are trying to bring to the craft, is that we can be proactive...No matter how much money you spend, no matter how many people you have, security people or whatever, or how many tools you have, you still don't know if you're prepared for an event.
>
> In security we really look at cascading failure. We typically hope we can catch an event when it happens. But what we can do with CASC engineering is we proactively present the computer system and the humans are responsible for keeping it resilient with the signal.
>
> When this kind of thing occurs, how can we actually catch it? Didn't we have the right logging? This is a big one for software security, is that there is no software security logging anywhere. I have not seen anyone solve this problem. It's a very difficult problem. There are three layers of logic you to write. Go ahead.

> *Jessica:* Is that because in security logging you're asking to hear about everything that happened that you didn't expect?

> *Aaron:* I guess that would be the problem. The problem is that we've got really overly dependent upon physical appliances, virtual appliances. Things that were static pieces of infrastructure, we have standard volume formats. Those logging formats really changed. What we haven't really evolved well is the custom nature of software events in security.
>
> What I mean by that is, how do you know something failed? You only know through footsteps in the sand. That's what John [inaudible 19:11] likes to say. Through stack traces, through other types of tracing technology, observable events like login events. I love observing all of them. A lot of people think that's hype. I think that's completely a huge thing, a big problem.
>
> People think it's hype, and don't really understand the nature of the problem. Where does a logging event come from? A software engineer must write it. The other thing that perturbs me is -- I won't say it perturbs me -- is that logged events if they don't make sense to a human, is that really adding value?
>
> That's what log events in the works and things are for, is to say, "Hey, human. This computer system that you think is working is not working the way you think it is." We're supposed to be able to understand what observability means, understanding how your computer works entirely through its external outputs.
>
> Anyway, what I'm saying is that during an incident, coming back to the chaos stuff, there are incidents where we're not actually looking at the quality of our log data. We're just hoping we have the right log data and we have enough to piece together maybe what happened.
>
> This is another big trigger word in the space is, security people still believe in root cause. That's a huge thing we have to change. Root cause is a fallacy, it really is.
>
> [crosstalk]

> *Matt:* Some people contribute more than others, but...
>
> [laughter]

> *Jessica:* There are many necessary conditions, any one of which you could assign root cause if you wanted to.

> *Aaron:* Of course.

> *Jessica:* Your audience in your book is security people?

> *Aaron:* We've been writing it mostly in the audience of SREs, operations folks, security people, software security. I had given my talks and material. I pride myself as an engineer, as a builder. I remember Gene Kem...Was it Gene or Jeff, somebody put out there on Twitter, what persona, dev or ops, do you prescribe to?
>
> I pride myself as a builder. I like building things, turning out problems and things like that. Where was I going with that? I had a...

> *Jessica:* Your audiences are SREs and...

> *Aaron:* Oh, yeah.

> *Matt:* That was my thing, is like is this for security professionals who need to understand chaos? Or is this for people to be able to understand CASC, but need to know how to extend that into security?
>
> I was thinking the same thing, Jessica. I was like, "Yeah, who are...?" Those are two different kinds of audience. It would be incredibly hard. If you're going to tell me you're trying to write it for both of them, kudos to you. Wow, that seems hard. [laughs]

> *Aaron:* Kind of [inaudible 22:05] bridges. The audience is mostly security people trying to bring them towards the center, bring them towards the software engineering community, the SRE community.
>
> I would say it's also trying to make sense of where the problems are for security people to the SRE community. I would say it's probably 70-30, mostly security people. There are a lot of people out there that are like Kelly and I, that we were engineers before we got into security. We kind of understand these problems a little quicker. I guess that would be the audience.

> *Jessica:* I'm a little puzzled by how do you be a security person without being an engineer?

> *Aaron:* Wow, you guys are notorious for asking great questions.
>
> [laughter]

> *Aaron:* This is how I see the world. I'm really opinionated. We're engineers, right? We're...

> *Jessica:* Right, you love it.

> *Matt:* [laughs]

> *Aaron:* It's always been an engineering problem, is it not? It evolved over the past 10 years. What was happening is that we were building systems, and we were creating these opportunities for people to exploit them. People were doing it.
>
> The industries wanted to prevent fraud, because this is a little computer fraud area that came around where people were making problems, and making computers. We took these concepts of appliance. The word "controls" comes from accounting. The Orange Book and the government, that was the first book of compliance.

> *Jessica:* The Orange Book?

> *Aaron:* The Orange Book, yeah. It's like the '80s. This is the time of...When was the Morris worm? I can't remember. I don't have my...

> *Matt:* '82.

> *Aaron:* Yeah, it's like...

> *Matt:* It's a set of published government controls around security is the "Orange Book."

> *Aaron:* Yeah, but we evolved in this era of security people knowing all the NIST Special Publications and PCI standards, but not knowing how they actually get applied or actually know how to build it. That was, I think, what accelerated my career.
>
> A lot of people I know that have done really well in security, were engineers most of their career, and then they learn the security stuff. I think that actually helped me really empathize with engineers. It's like, "I get it." As an architect, I'm a big believer, you can't really be a really effective architect unless you have built a lot of things.
>
> As an architect, you got to understand the world is made up of puzzle pieces. The pieces can be moved. There's only so many types of pieces, like with queuing technology. There's couple different kinds of queues, and then there's streaming, and Kafka. [laughs] Then...

> *Jessica:* Then there's every bad implementation of any of those kinds of queues.

> *Matt:* I...

> *Aaron:* Exactly. I'm sorry.

> *Matt:* I was thinking, back to your question, about how can you DoS InfoSec and not be an engineer. Aaron started to touch on this a little bit, because security is a business and a technology problem. It depends on how you come into it.
>
> I'm thinking just back through my career, and I worked in a lot of insurance, and a lot of finance, because that's where you work in IT in Chicago. I think about in the 90s, and the early 2000s, a lot of the security folks I worked with, they were definitely control-oriented.
>
> I don't mean command and control, but as in controls, defined controls that derived from business requirement, but were very much driven down from non-technical controls. I think you come into InfoSec in one of two ways.
>
> Either you come from the business risk mitigation understanding side and then say, "Now, I'm going to expand my domain of understanding to include this technology." If you think about how that evolution was happening in the 90s and the early 2000s, that's exactly what was happening.
>
> It was like we have this whole history of an industry and a practice in a domain that's around security controls that are very physical, that are very much about paper, and about what humans are doing, and things like that.
>
> Then what ends up happening is they're, "OK, guess in security..." Actually, probably at that point, they weren't called security professionals, they were risk professionals, risk folks. You need to also take this tech stuff under your domain or you have the, what Aaron's saying, "I'm coming from the engineering side, and I'm expanding my bubble to now take on the business problem of risk and security."
>
> I think that's why it depends on where you come from it. We're seeing more today and in the last decade of security folks that come from the engineering. As opposed either, because if you think about where it even started, that's the only place that could have come from, was risk management.
>
> Software engineers in the 90s, they didn't have the knowledge, because security then wasn't a software problem. I mean, it was very easy to solve, the software security issues, but most of the security and most of the risk was around business process. It was, systems were not connected to the Internet. The risk profile from a technology standpoint was much...Sorry, I wanted to go back at another thing that I thought about.
>
> When it comes to that, when you're talking about the challenge of security logging, as we're moving into a zero trust thought. As software engineer, I used to be able to just go, "Hey, it's cool, because I know my enterprise software is behind the firewall. It's totally good. I don't have to worry about that, because my good pals in InfoSec have built a nice perimeter for me. So I'm OK."

> *Jessica:* Because, at one point, security meant fences, it meant walls, it meant scanning your badge when you enter the building.

> *Matt:* Yeah, and then that's why we built systems the way that we did, where we built perimeters around them. That was OK for a while, because these systems doesn't even have to talk to the Internet. It was very easy to say, "Of course, my data center can't talk to the Internet, because why ever would it need to."
>
> Then as we flip that script, and we think about how people are working differently, and moving, I think that zero trust model is what's driving security, whether you're talking about shifting it left or driving it further up the stack.
>
> I used to just not have to deal with it, because I have somebody else could do it. It was OK, because I could build a fence. I can't build a fence anymore. Now, I have to lock my door. I have to not post my mother's maiden name on Facebook or whatever, whatever metaphor that I'm messing up for sure.

> *Aaron:* James Wickett and I, have been attacking some of this, too. You guys all know, James. We've been trying to move the think in security to value chain. DevOps has really been a major accelerant to getting security people thinking more about value and where that comes from.
>
> If you think about it, from the CISO all the way down to the security organization, a lot of those people in that organization...We created the CISO role to create accountability for security to company. CISO stands for Chief Information Security Officer.
>
> This CISO and the organization of security people can't actually do a whole lot to affect security. They need an engineer to actually do the actual application of the configuration, or implement the control, or to give them an accurate understanding of how the system works to ensure that it is compliant.
>
> Partly that process has moved us away from the engineering, but that DevOps has brought us back to thinking about...I remember when I first went to UnitedHealth Group. I was a consultant. I was helping them with their first startup.
>
> They lost this Healthcare Harken Health. I was part of working on building this total distributed, immutable, ephemeral construct that we built with the Terraforming AWS. Something United had never seen before. We built the ability to spin-up instances and scan them with Nessus and spin them down.
>
> My point was, I was directly a part of using my knowledge in security and engineering to enhance the value of the products and services that company was delivering. I was so proud when the company went live. It's like, "Hey, I did that. I was a part of that." Often, we're not in the value chain. We don't feel that sense of pride. That glowing feeling when you're like, "Hey, I helped build that. Would you like that feature?"

> *Jessica:* You usually just feel nervous, "Oh, my God. It's in production. What if they screw up?"

> *Matt:* Well, and even more so. It's like, the way I've always felt from ops is I'm like being an ops and I would extend it to InfoSec is the same thing as like being a corporate lawyer. If you're the lawyer for the company, nobody knows all the times you've kept the company from being sued. They only know when you missed it and you got sued. The same thing is true with ops and then likewise security.
>
> All people know about security is number one, every time they say no to them and when they "mess up." I'm using that in air quotes, audio people. There's a brief, then all of a sudden everybody knows. Where that comes in is exactly what Aaron said, is because those roles in security and ops are not in the value chain.
>
> The reality is they super-duper are, because security and reliability are aspects of quality. I always tell product owners and I'm like, "Your customers are not going to come and tell you in an interview that they want a feature that they know, but the feature of being secure. They don't ask for that. They asked for the hundred green button, but they're asking for it in different ways." Those are all...

> *Jessica:* The hundred green button [inaudible 32:13] . Only for me, not for just anybody who decides they want access to my data.

> *Aaron:* Oh, definitely. I guess I'll end to this tangent [inaudible 32:26] like. I'm just very passionate about this stuff, guys. That's where I was coming from. I did a lot of weird things at United. I made these little side projects. They're somewhat successful that leading this transformational efforts. I get a little leeway to do interesting things.
>
> I gave a talk at DevOps Enterprise Summit a couple years ago on How to Train your Dragons to Code. It was just a catchy title for how I trained over a thousand people at UnitedHealth Group in security, whether you're an engineer or not to learn Python. Luckily, I had a management chain that like my crazy ideas.
>
> What I was trying to do was I was trying to...I wasn't expecting a bunch of security people that all of a sudden be software engineers. What I was trying to do is build empathy. Python is pretty easy to learn. Empathy is a two-way road.
>
> When you had to upgrade your Python on your MacBook and you had to go to the company internal App Store, then you had to get you to fill out the exception and wait three days to get it back. Then the security people had to go through eat their own dog food and like, "This sucks." Having the right code, people started understood, like, "Oh, this is not that hard."
>
> There's not a fear. People have never written code before. It's not that complicated, but people fear it for some reason. We were able to break that down. I think we got about 15 to 20 percent of those folks wrote some interesting scripting or coding. What was cool is that it created a better understanding and empathy.
>
> Now, if you have urbanization of employees that can code if they wanted to, they can go from idea to a product on their own. That's powerful. That's really powerful, for me, to be able to build something that demonstrates my idea of how I want to contribute value back. That gets to be more value-chain-oriented thinking.

> *Jessica:* I just thought that was cool. You showed them that they could deliver this particular software-created value if they wanted and then they could think about that. Then you have your chaos security tools that let you demonstrate the value of everything that's not happening when some condition occurs.

> *Aaron:* Precisely. Like Matt said earlier, we never do an experiment we know it's going to fail. If we know it's going to fail, just fix it. Same thing goes with security. I just want to put a plug out there. This all started with ChaoSlingr. It's the first time on this show that...

> *Jessica:* ChaoS...?

> *Matt:* Yeah, this is an open-source tool that Aaron wrote at the UnitedHealth Group that is called ChaoSlingr, but that was not its original name.

> *Jessica:* I'm picturing monkeys.

> *Matt:* You can probably guess where it comes from. [laughs]

> *Jessica:* Mm-hmm.

> *Aaron:* You said I could be explicit. I don't know if this is explicit. The real name was PoopSlingr. It's distasteful, but this was a side project. I had some of the most brilliant people in the company saying, "Hey, let's give this a shot. Let's show the company. Let's show the world of the company what we could do." We're going to create a chaos.

> *Jessica:* That's what those monkeys are thinking, too.

> *Aaron:* Well, yeah. What happened was is we're going to create...all these chaos tools are monkeys, one of monkeys throw. It came with a Pin Poop Slinger. The original set of experiments was the fecal roster.

> *Jessica:* [laughs]

> *Aaron:* We use PhoDoc at the time. The PhoDoc channel was a poop flow or something. We're adults, but we're all kids at heart. I told Matt last time on the show is it just made the project fun, entertaining. It's tough when you're asking people to go above and beyond their jobs. It ended up being a very successful project.
>
> It would end up being not only the first ever application of Netflix's chaos engineering to security, but also ended up being the first open-source tool for UnitedHealth Group. I remember when that Friday, we were all in our jammies late at night, we committed to GitHub, we listed on Twitter and LinkedIn, and it got such a following that that tweet, that like, it triggered a Brandwatch at the company and [inaudible 37:01] for all UnitedHealth

> *Jessica:* Brandwatch?

> *Aaron:* Brandwatch is just like a tool that monitors the brand on social media the Internet.

> *Jessica:* We're in Brandwatch.

> *Aaron:* Yeah, Brandwatch. I remember the marketing people coming to me like, "What is this GitHuby thing?" It was a very transformational effort. I can explain a little what chaos does if anyone's interested in understanding how the anatomy of the chaos experiment if that's helpful.

> *Matt:* Yeah, because that's the thing I still want to reason about. What a security chaos experiment looks like. Then I do want to get a feel for what this...I almost forgot what this transformation looks like until what I've been doing my job lately, but making this change because we're asking people to change how they work and what are some of the facts come into that.
>
> I think it'll help to understand what we're asking them to do so by reasoning about what a security chaos experiment looks like using ChaoSlingr?

> *Aaron:* Sure. With ChaoSlingr, we had a series of experiments. We had an internal repo. [inaudible 38:06] external one. When we launched, we wanted it to be a community effort. We wanted people to be able to immediately understand what we were trying to do and how we would need an example experiment that everyone can understand.
>
> The main example experiment we figured no matter if you're a software engineer, you're a security engineer, or even an executive or an offshore function, you know what a firewall is. Most people know it is. You may not understand flow things like firewall flow and how firewalls actually function. It's a little more complicated than intuitive to understand.
>
> Our experiment was, for some reason, unauthorized and misconfigured port changes keep happening all the time. Whether it's inside the company, inside the data center, or it's in the cloud, they keep happening. It's for a number of reasons. It could be that somebody fill out a ticket wrong. It could be just somebody didn't understand flow. It could be that somebody applied the change incorrectly.
>
> It could be applied on the wrong target, lots of different reasons why. Mistakes, accidents, especially when you're doing them at speed and scale, it's easy to make those mistakes. What we did was ChaoSlingr had an opt-in/opt-out tag; a lot of open-source chaos tools have an opt-in or opt-out because you may not want to do chaos engineering on certain instances. It would eject failure because you're ejecting failure conditions.
>
> Because UnitedHealth is very confident about firewalls, we believed that if we proactively introduced a misconfigured port by opening an unauthorized port, that we would immediately detect the block with a firewall and be a non-issue, a security people that was an assumption we were definitely operating on.
>
> That's something that will keep us up at night if that was the case. What we did was we proactively introduced that condition into our AWS security groups. What happened was very interesting. It's that only about 60 percent of the time to the firewall actually detect the block it. It was configuration drift issue between our non-commercial and our commercial AWS sentences.

> *Matt:* I want to zero in on something really quick there. You had been operating a NetU individually, but as you had been operating under the assumption that this was a thing that was happening. You're like, "Nope, it's cool. We got this all radiation shit going on. Someone pops that port. No problem. We lock that down."
>
> You went and go, turns out no. [laughs] You did this for your hypothesis. That's good, but your hypothesis wasn't that you weren't doing it. Carry on.

> *Aaron:* No, that's fine. Thanks for adding that clarity. Remember, this is not an incident. There was no outage. Nobody's freaking out. We learned proactively that the firewall wasn't configured properly, we're able to fix that.
>
> The second thing that was interesting is that our cloud-native, our commodity configuration management tool quite caught and blocked it every time it rocks. [laughs] Not about every time. That was also interesting. Something we weren't paying for it, caught it and was doing the job. That was the second thing we learned.
>
> The next expectation we expected both tools to throw log-event data to a log-tool to correlate an event to our security operations center. They're the ones who investigate incidents and alerts and respond to them, and that actually happened. That was great.
>
> What happened was we were very new to AWS at the time. What happened was is that the soft got the alert, but they couldn't ascertain which AWS account structure came from, which instance it was.
>
> It was because the issue was is that, as an engineer, you're thinking, "I could just map back the IP address and figure out where it came from," but that could take 30 minutes. If a minute of downtime on a system is a million dollars, it would be about $1,000. That could be expensive.
>
> You're assuming that the point of S-net is potentially the real IP. If that's in play, it could be three hours to figure out which instance it was. The point was, is that we didn't have to incur that whole series of problems. All we learned was we just had added point or metadata information to the alerts, which account came from which instance.
>
> All of these things we learned without paying customer pain. We learned it was safe to learn these things. Instead of quickly blaming somebody and trying to [laughs] take that path to things. It was an eye-opening experience to, "That's what I buy. Oh, wow. This actually has a lot of value."
>
> What my boss told me at the time when we released it and we started demoing it, he said, "Aaron..." This is my boss, the CIO of United. He's like, "Aaron, I like how this product because it identifies these problems."
>
> What I love about this is it keeps the incident team sharp. It keeps them up some format, like, "Hey, we have the right tools. We have the right number of people. We have the right skills." We're like, "The run-books are actually correct, doing what they're supposed to do. We're to do that safely," and I'll say, "Wow. You're my boss for a reason."
>
> [laughter]

> *Aaron:* Well, because he's usually a bright guy. He opened my eyes to another use-case, which was instant response is because if you're constantly always chasing, you're subject to the event. How can you measure event versus event with the right skills, the time of the day, the right tools? Oh, go ahead.

> *Matt:* I was just going to say, I have a whole talk about this. There's a huge point, which is these game days or experiment days or failure days or whatever you call them, you nailed it when you said, "Because it happened when you had everybody ready, it was known." That's a key thing that goes back to that Netflix blog from nine years ago, which was during business hours.
>
> The reason I like to bring this up is because our gut tells us we should run these experiments, not during the business day, because they're like, "That's a potential biggest impact."
>
> When is the best time to have an outage? The best time is actually when everybody is available. It's not the middle of the night. You're not paging people.
>
> Number one, it's, "We use to talk about this at PagerDuty." We're like, "There's no good time for PagerDuty to be down." The best time is the middle of the day in San Francisco. That's the best time because all the engineers are in the....Well, not anymore, but you're...
>
> [laughter]

> *Matt:* ...right. They're all available there. You can bring people in. You understand. You know what's happening. The thing about when you say about practicing incident response, it's two-fold. You're able to learn. It gives you that practice to see if there's things you can improve.
>
> What it also does is, hopefully, over time....We have fewer incidents, which means we do this less often. Especially if you're do it on-call really well and you're sharing the load, you can go months and months and not participate in incident response.
>
> What you don't want to be doing at 2:00 in the morning is trying to remember how to log into the AWS emergency console or get your PagerDuty account working or whatever kind of thing. So number one is giving us that reminder, but it's also when we're doing it in this, "safe way," it's giving us this association that doing the mechanism of instant response is normal.

> *Jessica:* It's like unit tests. They give you the freedom to make a change because you're not afraid. A unit tests give you privacy of your own computer.
>
> [laughter]

> *Jessica:* You know if something's wrong before you ever have to show it to another human. These chaos tests are giving you privacy within your company. Probably your customers never find out, you probably don't break the build.
>
> [laughs] It's you'll have to like each other and trust each other within your engineering group. You get some safety within that as opposed to an incident, which would be corresponding to me pushing code that breaks production and the other engineers find out. It's not all your customers finding out for you.

> *Aaron:* That's exactly it, though, too. I don't know if you are familiar with the costs of how much money for a budget-wise security takes up for the average cloud project. I think for unregulated environments, it's like 30 percent of the cost of security.

> *Jessica:* Wow!

> *Aaron:* For regulated, it's in a 40 percent Syntel range. Here's the thing. You're designing, building, and implementing all these security features and functions. Do they work when they're supposed to? Because all that's in there, you're spending money. You need a way to verify it and that's overdoing.
>
> Furthermore, here's a cool thing that I've added beyond the security use cases to chaos engineering. The thing I realized a lot of folks had picked up on was I'm like, "I'm proving with the technology whether it worked the way I thought it did."
>
> Or it could be thought of as the way I had documented, "Oh, wait a minute, this is an auditable artifact. All you got to do is map this experiment to the control it's verifying. Now, I have free compliance."
>
> In Verica, we have like three use cases. It's availability/stability. It's the security and then compliance. We're trying to bring that more mature approach to the craft of...

> *Jessica:* You can look at that deliverable as value. That's in your value chain because not only do you have something that you assert works, but you can show that it works.

> *Matt:* I was just going to say because towards the tail-end of my career at Chef, I did a lot of work with Chef compliance which was automated. My entire way of thinking about it was...Again, like I said, I've worked for a lot of insurance companies, worked for a lot of financial companies.
>
> I've been through so many IT audits and they are all theater because it's all just do you...How does the traditional audit work? They come and ask you a bunch of questions. Did you really do this thing? Yep, sure I did. Sure I did. Computers don't lie.
>
> If my audit compliance trail is automated in that way, it's not like, "Hey, Jessica. Did you really do this?" Usually, even when they say they have an audit trail, it's through your change control system, which is still a bunch of information that a human being typed in. [laughs] It's treating it as an artifact.
>
> [crosstalk]

> *Jessica:* That is not an audit trail. That's a blame trail.

> *Matt:* Well, right. If you're saying that this thing happened because that's where we're doing a control, which is did this test run? Also, most of the questions are wrong, too. That's a whole other thing.

> *Jessica:* [laughs]

> *Matt:* Baby steps, baby steps. What I want to ask Aaron is at this point in the show, like, let's assume that we bought a valuable shit, right? We're like, "This is good. This is great. I get it with [inaudible 49:02] ." What makes this hard? What makes this hard when I'm trying to make this happen? What are the things or the challenges around this? Because it sounds great. Why would that everybody be doing this?

> *Aaron:* I love this question. There are hard things. The application of chaos engineering to security is only about three and a half years old. That's when we released ChaoSlingr. There aren't a whole lot of open source tools. ChaoSlingr are somewhat deprecated because I left that company.
>
> They use a different version that's pipeline-driven, I think internally inside of United now. The framework of ChaoSlingr still exists. It's three different functions. There's generator, slinger, and tracker. Then there's the documentation for the experiment. It gives you exactly what you need in the Python inside of those AWS Lambdas.
>
> I am hearing, like there are a number of companies now on their own tools. One of the better tools that I've seen was released in Java. It wasn't open-sourced. [laughs] A lot of people are going to probably contributed to that. It's called Caught Attacker, from a person in Berlin.
>
> There are a couple other companies. I'm not going to disclose what their names are, but they're probably companies you've heard of that have their own tools internally to do these things. There's not a whole lot of tools out there for people to just get started.
>
> What people are doing is...There has to be a commercial tool that does this. [laughs] I'll tell you that. There is not a lot of open source tools beyond people who are writing their own Python scripts. That's why I've got people doing right in Python and bash to eject the failures. On the use cases are naturally the cloud in container security type of experiments.
>
> That's where people a lot of people are utilizing chaos engineering and those transitions to those technologies. I guess what makes it hard is I wish I had more time [laughs] between running a startup and the book.
>
> We also just finished a new animal book on chaos engineering, just came out last month. There's a full chapter on security chaos engineering in there. I'll give you...

> *Jessica:* What you called them?

> *Aaron:* It's called "Chaos Engineering -- System Resiliency in Practice."
>
> [crosstalk]

> *Matt:* O'Reilly book. We'll put a link to it in the show notes.

> *Jessica:* There's some type of monkey on the front, which is appropriate. It looks like a raccoon one.

> *Aaron:* Like a marmot or...I don't know. [laughs] I don't know what that's called.
>
> That's another thing that was hard is that all you had was a series of blog posts from me, of a few other people. You had those people doing talks. You had the Netflix 90-pager chaos engineering book.
>
> Now there's a body of knowledge, right? Inside of this book there are books from other use cases from different companies. In my chapter, I've got, "How to Chaos Engineering for Security," the use cases, and how it's different than red teaming, and purple teaming, breach and attack simulation.
>
> This also is the premise think, launch the full book. The full book on Security Chaos Engineering, which will have a variety of different companies that are writing about their stories, how they've applied it, the tools they've built.

> *Matt:* Obviously, a lot to learn, a lot to unpack. Listeners, we'd love to hear if you've been trying to take on some of these experiments. You can find us on the Twitter's. You can find Aaron on the Twitter's. We're all on the Twitter's.
>
> I've learned a bunch. I thought it was pretty great conversation. If you go to [aresteddevops.com/chaos-security](http://aresteddevops.com/chaos-security), you'll get the show notes of this episode. We've got links to some of the tools that Aaron's talked about, to the books, and all that fun good stuff.
>
> If you go to [arresteddevops.com/iTunes](http://arresteddevops.com/iTunes), if you leave us a review in the iTunes Store. In theory, this helps people find the show, I guess, or something. I don't know. You can find us on Spotify and iHeartRadio if you're into those kinds of things. Apparently, we are too. Aaron, thank you for taking the time with us today. This was a great conversation.

> *Aaron:* Thanks for having me.

> *Jessica:* Yeah, where can people find you?

> *Aaron:* My email is <aaron@verica.io> and twitter. Twitter's the best @aaronrinehart. Oh, and I want to put one plug out there. I'm going to give you guys a link to a chance to win a free book -- a chance to win a free printed copy of the O'Riley book, if folks want that.

> *Matt:* Yeah, we'll put that in the show notes. Go to [arresteddevops.com/chaossecurity](http://arresteddevops.com/chaossecurity). You can enter to win the book and not have to remember how to spell Aaron's Twitter name, too.
>
> [laughter]

> *Matt:* That's helpful. As always, I'm Matt, @mattstratton. [laughs]

> *Jessica:* I'm Jessica, @jessatron.

> *Aaron:* I'm Aaron Rinehart in the banana stand.

> *Jessica:* Yes!

> *Aaron:* [laughs]

> *Jessica:* With all the DevOps.

> *Aaron:* With all the DevOps in their banana stands.

> *Jessica:* [laughs]
>
> [music]