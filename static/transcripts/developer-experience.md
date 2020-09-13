> *Matt Stratton:* I can make stuff up. Trust me. I'm good at that.
>
> [background music]

> *Matt:* It's time for "Arrested DevOps," the podcast that helps you achieve understanding, develop good practices, and operate your team and organization for maximum DevOps' awesomeness. I'm your host, Matt Stratton. I'm really excited about today's show. I know it's been a while since we've had one. I'm happy to be back. Before we get into all of the DevOps fun, a word from our sponsor.

> *Announcer:* The worst thing about the Arrested DevOps podcast is when it ends. You're left wondering what to do next? What are you going to listen to on your commute home? How do you occupy your time when walking the dog? What are you going to listen to during the quarterly all hands meeting?
>
> Fear not, dear listener, there is a solution. You need to subscribe to "Software Defined Talk" right now. It's a weekly podcast that recaps all the news in cloud computing, DevOps, and enterprise software.
>
> The hosts, Coté, Matt Ray and Brandon Wichard, will keep you up to date on all things cloud while offering tips on how to optimize your Costco haul and how to PowerPoint. It's a fun, free-flowing conversation that will keep you entertained and informed.
>
> What are you waiting for? Subscribe to the podcast today by visiting [softwaredefinedtalk.com](http://softwaredefinedtalk.com/) or by searching for Software Defined Talk in your favorite podcast app.

> *Matt:* Today, I have a great guest who is Stephanie Stimac. Stephanie, I'm really excited to have you on the show. Can you tell our listeners a little bit about what you do, and maybe how you got to where you're at today?

> *Stephanie Stimac:* Yeah, absolutely. Thanks for having me on today, Matt. I'm also excited to do this. I'm currently a program manager on the Microsoft Edge Developer Experiences team. If you've ever seen me at like one of my conferences, I'm really, really fond of calling my fancy title just because I've done a lot of different things that have contributed to the role I'm in today.
>
> I come from a background in design. That's what I got my degree in. It's web design. Then in my job before Microsoft, I fell into a role of designer and front-end developer. I was at an agency for four years, and that's where I really fell in love with front-end development and code and solving those problems.
>
> I was responsible for the whole life cycle of a project. I would get to do the UX design. I do the visual design, and then I was the one who would build that and code. I really loved that. I spent four years at that company.
>
> One day on Twitter, I got a DM from a PM on the Microsoft Edge team who was looking for a designer but in a PM role. I was like, "Oh, well," [laughs] "I guess I'm extremely interested in that." It ended up getting hired onto the Edge team.
>
> I'd say the first three years that I was on the team, I was this hybrid role of designer, front-end developer, and then PM, so I would lay out the requirements for what I was doing. I think the best example of one of my projects is the open-source tool, webhint.
>
> I was the designer on that, but I also worked with our other PMs, who were developers. We're mix of multi-talented people with PM titles. Then I had a brief stint on the Edge Developer Tools team doing design before we switched to Chromium and leading the updates to visually refresh the Chromium DevTools to look like Microsoft DevTools.
>
> After about six months of that, I'm landed in the role I'm in now, which is not so much designing anymore but more PM, Program Manager-focused, working with developers. It's been quite a journey.

> *Matt:* I touched on all those pieces. I would love to dig in a little bit. This idea of developer experience and whether that's capital D, capital E, or maybe the lowercase thing because I feel like I've been hearing more about this lately, and maybe it's just because of who I'm talking to. Maybe y'all have been talking about it for years, and I just wasn't listening.
>
> When we think about developer experience, first of all, what does that mean from your perspective? Then a little bit, I want to dig into why it matters?

> *Stephanie:* For me, developer experience in general is this idea that it's...I view it as a subset of user experience design, which I come from design, so it's probably why I'm interested in this. It's just the experience that developers have when they're using your product, which in my case, is a web browser. I think developer experience, in my case, [laughs] encompasses a lot more than maybe something like a framework or someone who's just putting out a design system or something like that, if that makes sense.

> *Matt:* Right. It's all the different levels. It's interesting. I've had this conversation even thinking about developer relations, about how depending on the kind of product. What that means is different because developer is a big word.
>
> It can mean a lot of different things depending upon what that user that you're talking about, the developer that is your customer is trying to build and how your product influences the work that they do. Is it a key component that they're building? Is it something that they're layering on top of? Something that's they're helping them leverage?
>
> When we think about that evolution in how we were reasoning about going from user interface to user experience, and then like you said, your developer experience is even an extension or a super set of that. Just say the thing, but like, "Why do I care? Why does it matter?"
>
> Because if the tool does the thing it's supposed to do, what's the additional benefit to having a great developer experience? What is a great developer experience?

> *Stephanie:* Let me just talk a little bit too about what Edge Developer Experience encompasses.

> *Matt:* Yeah, that's great.

> *Stephanie:* You did mention it seems like a new, maybe not a new thing, but more people are talking about it. When I first started on the Edge team, there wasn't a developer experiences team. It was split out -- DevTools was their own team, the same with our web apps in PWA team, and we have this Ecosystem team.
>
> With our move to Chromium, those three teams are now under this larger developer experiences team. We're focused on all the different ways that we can help developers. In some cases, it's specific to Edge. With things like WebView or PWAs, there's a whole team that manages that. There's our developer tools team, where we do a lot of collaboration with Google with the DevTools team there.
>
> Our Ecosystem team, which is the team that I'm on, we're a funny team because we were in that developer relations role a little bit where we get our fingers into other teams and help them scale up. We're not necessarily focused on the features they're building. We're focused on trying to get good documentation on the web about the DevTools or WebView and working with the teams in that way.
>
> I work a lot with our HTML platform team, which is heavily involved in standards work and building features for developers. Things they want in CSS or something like that. For Edge, not just Edge but any web browser like developer experience is a big thing because you're trying to make building for your browser easier. It's a lot. [laughs]

> *Matt:* I don't want to say it's a new idea because it's not. When we think about DevTools and Browser DevTools and stuff like that, that was really -- I'm going to get all the history wrong about what predated what -- thinking about things like Firebug and all of that. That was revolutionary. To think in that way to say like, "How do I...?"
>
> Because back in the day, it was like throw some stuff in Notepad and fire it up locally and be like, "I guess it looks good." If you were me, you put border equals green around every div so you could see what it looked like.
>
> That's like an oversimplification, but it continues down that path. You're really thinking about a full development environment because we're building complex experiences with these tools. It's not just an overlay. It's not just Chrome, so to speak, lowercase Chrome. It's functionality. It's all of those pieces and parts.
>
> I want to take a step back because maybe not everybody is as familiar with this, but I'd like to dig into what WebView actually is because that seems like that's a really good example. Tell me a little bit about that. As an Edge developer, what does that do for me, and why does that experience help?

> *Stephanie:* If you're a developer, you can use WebView2, which is in development now in Chromium. It basically enables you to embed web technology, so like HTML, CSS, and JavaScript, into your native applications. I have seen some interesting things like WebView being demoed in Excel of all programs.
>
> [laughter]

> *Matt:* Everything eventually comes to Excel. That's the...
>
> [laughter]

> *Matt:* That's part of an experience of saying, "How do you cross across your applications? How do you go into those pieces and parts?" Then, when you're thinking about that tooling, what do you think is some of the most important stuff when you're thinking about the developer experience that you're trying to build into a product, to keep in mind?
>
> Nobody's going to say, "I want to have a bad experience for people developing with my platform." It's easy to say, "I want a good one," but "OK, but what's good?" What are the things to think about?

> *Stephanie:* The biggest thing that we think about and you can see this in our approach, even on Twitter, but in conference talks and whatnot, the Edge team. I can only speak for the Edge team, other teams, other browsers [laughs] might be doing this. When it comes to the developer point of view, we're coming from a place of humbleness now [laughs] and asking developers what it is they want?
>
> Granted I wasn't on the Internet Explorer team, but what I have gathered is in the past, building a browser back in the day was much more closed off than it is now. There's this assumption that these people who are building a web browser or web developers, so we should know what it is they want, but the reality is that is not the case at all.
>
> [laughs] We usually end up doing some research and asking, "Well, this is what we think we know." Instead of saying, "This is what we think we know. We're just going to go build it," we go out now in the community or do research and talk to actual devs to find out what it is they want.
>
> You can speculate all you want and say, "Well, I think this would be a good developer experience, but it actually may not be. It may not be something that developers even want, so just focusing on your users, your developers for your product is the key to building a great developer experience because if [laughs] you can build some cool feature, but if no one uses it, it's... [laughs] Yeah.

> *Matt:* Then why does it matter? There's so many things that we talked about with this that almost resonates to feeling like, "Well, of course," because the statement is like, "Treat your developer customers like you would treat your other product customers," and it's like, "Oh, really? Why would we do that? They're developers"
>
> It's interesting the way that you put that where you said because when we think about a product we're building, if we perceive ourselves as either the customer or the user or close enough, which is probably even more dangerous, we think we're overlapping, but we're orthogonal to what they do, we maybe subconsciously feel like we don't have to find out because we're like,
>
> "OK. I'm going to build this product to do this thing that I do all day." I know what I need, so I don't need to research that. When you're thinking about building developer tools, you are a developer of some kind if you're building something with technology.
>
> It's pretty easy to fall down that path of like, "Oh. We know that." We don't have to do our normal product stuff, because we already have all this internal knowledge.
>
> What I wonder about is where those lines around developer experience get a little fuzzier within a product organization. If you're building a browser, in the case the Edge team, that seems almost a given. You know your only customers in a way. I was just going to say only. Your primary customer is the developer of that.
>
> There's a lot of fuzzy lines with a lot of tooling that we build that has developer support. It's not its main thing that it does, but it has API's. It has extensibility. I think if we run the danger, if it's a product that already is very focused on the people who are building on top of it, and we sometimes miss this experience.
>
> What are we going to do when that's a sidebar thing? Have you seen or what are your thoughts about that, if I'm building a product that's extensible, but that extensibility is not necessarily the thing that people are buying? How do we get developer experience into our life cycle? That's my question.

> *Stephanie:* Stepping outside of a web browser and thinking about other products that are built for developers, two of the things I think that are key to a good developer experience that you need baked into your product is documentation and support. Those are absolutely key, and those can make or break a developer's experience with your product.
>
> There's a tendency -- at least, that I've seen -- to leave documentation to the end and maybe not focus on it as much as we should. I've even seen this with some super popular static site generators, where there's an assumption that the people who are using your technology that you're providing have a certain level of knowledge.
>
> I consider myself to be pretty knowledgeable. I can build a website from scratch. I can figure out JavaScript if I need to, but it's definitely been on some websites trying to debug an issue and I have absolutely no idea what is being talked about. When I go into the documentation and try to click around, I get into this endless loop, and I don't know who to reach out to.
>
> Just in general, realizing that the people who are using your product are going to be of many different skill levels and not making assumptions about what they know. A little side story about my time and user experience design, one of the greatest pieces of feedback or not feedback, but one of the conference talks that stuck with me the longest was from Eric Meyer, and it was about designing for users and crisis.
>
> The whole point of the talk was if you can build a experience that a user who is in crisis, like they're not thinking straight. If you can build an experience that they can navigate through easily, then all your other users we'll be able to do that, just as well.
>
> That applies to developer experience too, not necessarily. You could have developers in crisis, like something breaks something on your site. If you can't find what you need to fix that on the support pages, [laughs] that's not a great moment.
>
> Applying that thinking to the way you build out your documentation and support, not just throwing your documentation up there and forgetting about it, but constantly iterating on it and being open to feedback.

> *Matt:* I think that's really, really key. At the end of the day, that's coming down to empathy. I wanted to build on when you said where you'll make this assumption of the skill level, but even beyond that, it's also just the knowledge of your thing that you built.
>
> Things make total sense to you because frankly, it was your idea. We will shortcut, we'll be like "Well, of course you just do this thing because we've taken seven steps in our head that got us to build that part." I feel like there's a lot of great tools that we rely on. It's like, "Oh. I'll just throw swagger at this, and now I've got my API documented.
>
> You're like, "No, but that's not going to..." Documentation is more than a list of the function calls. It's not just what it does. It's how do I use it? Examples are so key, and what's a real-world example. I can tell you there's a lot of stuff I've seen with tools where their tutorial or their on-boarding is a thing you would never do, but it's the easiest way to show what it does.
>
> I'm sitting there saying like, "If I am coming and wanting to use this thing, I am coming to solve a problem." I don't want to have to extrapolate your "Hello, World!" into the actual problem I want to solve, and I've run into that with some really great frameworks. It's funny because some of them are connected to static site generators.
>
> I think that's the thing because the person who writes a static site generator and the person who uses a static site generator are not a perfect Venn diagram circle in all kinds of different ways. Now, you probably wrote the static site generator because you're a static site generator user, and you're trying to solve a problem that you like, but you also understand what you tried to create.
>
> This goes back to all of the points of developer advocacy, and then how that ties into developer experience, which is that empathy of what do your users actually wants? What are the questions you're getting and saying, "If someone keeps asking how to do the same thing, then that's on you."
>
> I'm willing to bet that yes, we all know there are support vampires or people who will not read the docs, but to be honest, I'm willing to bet that those are just the noisy ones. Most people probably already tried. I like that design. We're going to put a link in the show notes to that Eric Meyer talk we're going to find it. We'll put a link to it because I'm intrigued by it already.
>
> The analogy I thought it was a little bit about a manual transmission versus automatic. That was always the thing when I was growing up. My mom was like, "You're going to learn how to drive stick because if you can drive a stick, you can drive an automatic."
>
> Along those lines, which is like, "OK, so when I'm building my tool, if I can get it for the person who is not wanting to learn all the intricacies of my thought process and treat." Most people are not taking your product as their key most important thing of the thing they're building. You are probably ancillary to it. You're coming in to solve one of their thousands of problems.
>
> I can tell you there's lots of products I've worked with where it feels like you have to take a six-week course to learn to and do it. You're like, "OK, but I need this for one function."
>
> [laughter]
>
> I think what's along that lines, I'd love to hear a little bit about you've talked about this project you work on called the Web We Want. That might tie a little bit into understanding these experiences, so you tell me a little bit more about that. Did I make that connection right? If not, then we'll talk about something else. [laughs]

> *Stephanie:* You did. The Web We Want, it is [laughs] my main focus probably 60 percent of my time in my role. The Web We Want, it's a cross browser and standards initiative that was started on the Edge team, but it's not Edge-specific. I want to make that clear.
>
> It's basically a forum for developers to tell us what they think is missing from the web platform. The question that we ask broadly is if you could wave a magic wand and change anything about the web platform or tooling, what would it be? It could be something super small. It could be like some very small feat.
>
> We've had very small features and DevTools submitted to requests for API's and like, "Yes. That sounds great. I'm not that technical, but [laughs] that sounds good."
>
> It's trying to figure out what has the web platform missed? Or people who work on the web platform or in standards groups, what have we missed? What do we need to focus on? One of the things that's come up a couple times is HTML Controls, which is something that I've been working on with our platform team for evangelism and conference talks.
>
> It's one of those instances where it's reassuring to see something that you're already working on, helping to solve come up with and people are like, "Yes. This is a huge problem." [laughs]

> *Matt:* It's always nice when you get a feature request that you're already working on, and you're like, "Oh. I have good news for you."

> *Stephanie:* Yup.
>
> [laughter]

> *Matt:* What do you think is the biggest takeaway and lesson that you've learned from working on the Web We Want, and not maybe in specifics of control or something, but in its impact and what you've learned about how people are working?

> *Stephanie:* I think developers are really hungry to give their feedback. Also, just that there hasn't been a necessarily like a cross browser venue for people to give feedback. We've had 150 responses that were valid feature requests were feature gaps.
>
> One thing that I do think is interesting, a couple of things have been submitted and uploaded that standards groups looked at years ago and decided that it wasn't worth the investment. I'm interested in that because obviously, it's OK at one point.
>
> You said that this wasn't worth the investment, but now, we have the data telling us that there are developers out there that would get some use out of this gap being filled or this feature being created. It's been interesting, and I think it ties back into. Also, some of the people in standards groups are browser makers.
>
> I know that they're actual web developers who are in standards group and they have perspective, but there are people who aren't web developers and are making that assumption again that, "Oh. Developers don't want that." To see things come up that were put to rest long ago is really interesting to me.

> *Matt:* It's almost like things change and we have more information, and the world is different. It's a little bit like there's this statement in saying, "Open source -- No is temporary, yes is forever" That's true, but for no to be temporary, it means you have to keep looking.
>
> It can be this thing where what we knew at the time either and sometimes maybe even if it's a technical limitation, but technology has changed, our audience has changed. I think that's something that a lot of people and a lot of organizations struggle with is that product is not linear in that way.
>
> It's like we made this decision and we have a hard time going back and changing our mind, so to speak, or feeling we're changing our mind, because it feels like that means we don't have confidence in the thing we said before.
>
> I think that's a critical thing across everything to be able to say when you're working on a project, "Hey, stakeholder. Yes, we were going to do this," but it turns out, we have to change things." There's a lot of fear of making that statement because it feels like we have to say we were wrong, and actually, you weren't wrong. You just know more things now.
>
> When you talk about these older things that we know more now, so either it was not necessarily the best decision at the time.
>
> I spent a lot of time talking to people about change. When you're talking to someone who's been part of an organization or part of a structure for a long time, and you start talking about doing things better, the natural thing is people get very defensive and they want to explain, "OK, but you don't understand. This is why we do that."
>
> I always say like, "Hey, I will reassure you right now that I've every confidence at the time with the information you had and the situation as it was, you made the exact right decision." Totally good. Don't care. Not even that. You don't have to explain it to me. I believe you.
>
> I think that's the same thing with stuff like this. It's like, "Hey, with the people who were in place, the things they knew, the perspectives they had maybe that was the right decision." Maybe it wasn't, but let's pretend it was, because the second part of that is. But now things are different, so let's revisit that. I think that's a good lesson.
>
> That sort of tying into my other question, which is coming from...I almost said, non-traditional background, but almost all of us are non-traditional backgrounds these days, which is great. That's so non-traditional as it used to be.
>
> As you've been layering on your experience as a designer, and now you're thinking about the work that you do in this, what are some of those experiences and skills that you've developed in that other work that you're doing, that's applicable to the way that you're making things better now?

> *Stephanie:* At my core, I am a designer, and the thing with design is you're solving problems. When you're a junior and maybe mid-level designer, you're pushing pixels to solve those problems. Now, I'm in this fascinating space where I'm still solving problems. I'm not necessarily always pushing pixels.
>
> In terms of things the web we want, I look at the whole experience just all up. I look at the whole experience of the project and like, "OK. What does the developer see when they get to our website? How does this flow?" Think about things like that.
>
> Even outside of the Web We Want, even with DevTools, it's really fun to get to provide my perspective and give feedback on features that are in development. I got to provide some feedback on the Grid tooling that's going into Chromium. I was excited about that because I'm also coming at it from a design perspective.
>
> If there's someone who builds my designs, this is how I go in and debug my layout, which maybe someone who just develops and doesn't have design skills would probably approach it differently. Just having that visual background allows me to approach things a little bit differently.

> *Matt:* I was reminded of something you and I talked about offline. Thinking about taking this experience work compared to feature work, but that all still maxes together. It's still one product. It's one binary, if you will, about shipping. It's one thing.
>
> I'd be interested, though, like some of the challenges. I can imagine some of them, but what are even some of the ways to bring those things together? Because you're thinking in different modalities in the work stream, right?

> *Stephanie:* Right. One of the things I wanted to talk about was just sort of this. We use Azure DevOps to track all of our engineering work.
>
> One of the things with the Web We Want and just other research that the program managers are doing when we go interview developers or get new submissions to the Web We Want, the things that are being submitted or the features and problems that are being extracted out of interviews.
>
> Those are really, really hard to track in Azure DevOps because it's not just a engineering task that you can drop into ADO and say, "Here's how many DevDays it's going to take." That's not how PM works.
>
> That's been one of the interesting challenges, especially with the Web We Want because we just have this bucket of wants, basically. We have them entered into ADO, but how do you track-click the different stages and brainstorming? There's so many different things that go into this work, and it's really, really hard to track, like in a...What's the word I'm looking?

> *Matt:* A work item-focused thing?

> *Stephanie:* Yeah.

> *Matt:* Right. Yeah, it's not a feature that you can say it's done when I press this button, and this light turns green. That can stop. What you probably put your finger on there is also why so many times we're so bad at this is because it's very, very hard to do it in the way that we're used to thinking about tracking work, so it gets lost.
>
> Another thing, it's also hard to tie it back to value -- to value in the way that an organization usually measures that thing. It's the classic DevRel problem, too. It's like, "How do I track that I gave a talk at conference and that turned into a conversion?" I can make stuff up. Trust me, I'm good at that.
>
> [laughter]

> *Matt:* Actually, that works better than you think it does, pro tip.
>
> [laughter]

> *Matt:* It turns out you don't have to really back your numbers. You didn't hear it from me. Do you have any thoughts on how...First of all, just in general, if there are any way...I'm going to put it this way. I'm going to challenge you the way you challenge the Web We Want. You get to wave a magic wand at Azure DevOps.

> *Stephanie:* Oh, boy.

> *Matt:* With that everything -- this is not the big thing but specifically to that work tracking -- what are some ways to reframe the way that we measure that work? Do you think? I'm not asking you to solve this entire problem, by the way. We don't have that much time.

> *Stephanie:* No, yeah.

> *Matt:* [laughs]

> *Stephanie:* I honestly don't know. I haven't had that much time to think about it. I think it is a problem, and there is a solution but so much of...The thing with ADO is it was built for tracking dev work. I'm not saying that it couldn't change.
>
> There couldn't be some evolution into. There's some sort of feature or something that helps tracking PM work in different cycles of it easier. I don't think its purpose, and so I don't know that we'll get that.

> *Matt:* It's not to pick on an Azure DevOps because you're going to have the same problem with JIRA. You're going to have the same problem with anything that's a work item tracking system. That is tracking a unit of work. It's thinking about how to connect it to a larger story.
>
> I think it can be done because we had to learn to do that with user stories, although we usually do those pretty poorly too. User stories are usually...At least, the way that I write them are like, "As a user, I would like this button to be green so I can be happy."
>
> By the way, the "so I can" for every user story, I wrote it so I can be happy. When we're thinking about saying...Like you said, that idea, that model of a story, that framework is supposed to be thing, action result. If you're talking about a lot of this experience, it's not one thing that linearly leads to one result.
>
> That would be one of the things I'd be curious about is thinking about -- maybe this is the listening homework for all of you who are now learning about developer experience -- how do we understand that we're being successful with this work?
>
> I always say, "How do we measure success?" But how do we know that needle is moving? When you can break that down, you can put that. That's such a leading indicator. It doesn't map into your JIRA to know that the ticket is done because costs set went up. That takes 6 to 12 months to even understand you move the needle, but then that means you have to think about that.
>
> When we think about work that's done in Sprints and its small work units, it's, "OK. I got to get this done in two weeks," but if you don't know that you're done over the course of this gestalt, you have to leave this continually, it's always there like a feedback loop you're always measuring.

> *Stephanie:* That's the thing, too. If we were talking about linear just like this linear progression, you have your work, and then you have the results. The thing that we were doing as well on the Edge team is -- I don't want to speak for all of Edge, on developer experiences -- with features that go into the DevTools, we don't really view them as done.
>
> They may ship in the browser, but we're still tracking usage and feedback. It's a continuous iteration loop, and I'm sure at some point, those features will be "done." A lot of what we're doing now is you do this, then you get feedback, and then you go back, and you iterate again. It's just [sighs] this continuous cycle.

> *Matt:* It really is that nothing is ever done. That's OK. The thing to understand that is that we extensively have changed to this model of thinking about continuous improvement, but all of our measures within organizations don't map to continuous improvement, right?

> *Stephanie:* Right.

> *Matt:* We always want a thing that we can say it's done. We can have a launch party. We can do all this thing and say, "We shipped it. Yay, on to the next thing," and it's like, "OK, but tomorrow, you get to keep going back and working on that again because now we just learned something over the weekend."
>
> That's either awesome or disheartening depending upon how you think about it. It's all about the framing. The last thing I want to get your thoughts on is as you've seen...You work with a lot of developers, a lot of engineers because your work is involved with talking to lots of people.
>
> I guess what I'm getting at is you have perspective across more views, thoughts, and ways of working than the average software engineer might because that's what you do, is talk to all of them.
>
> Are there any things that you would think that you think are ways where we could improve, the ways of maybe reframing how we think about, how we're building these products, not necessarily from a developer experience but also the people who are building for the web? What are some of the things that you think people should be thinking about that maybe they aren't always thinking about?

> *Stephanie:* Honestly, I think the biggest thing is just ensuring that you take out time to talk to different, not necessarily different, just a subset of your users and talk to them about their pain points, talk to them about what they like. That's also been something really interesting that the Edge team is embraced.
>
> We're all about feedback now. Like, "Give us your feedback," and not just your bad feedback. If there's a feature that you like, let us know because we realized that there was this gap missing that people can send us...
>
> They can complain all they want, but if they're not telling us about what we're doing right, then there's still a whole bucket of opportunity in those things that you're doing right. Just talking to people and being open to talking to people, embracing your empathy and shed your assumptions that you might have about your product.

> *Matt:* I don't want to hit on a little bit of a sore subject, but we're both conference speakers. We're just going to have to buckle down and deal with it, with what this is going to trigger. We're not going to talk about how much we miss our events and everything because we know we do.
>
> When you think about that, again, external advocacy, whether it's through conference speaking and things like that, what are the messages that...It's two-part question, and I know I've been doing that all day. I apologize. What are the messages that you think are really resonating, but then also, what are the messages, the stories you love to tell? Those two questions may be connected.

> *Stephanie:* The messages that have been resonating with me, and I'm just going to say the same thing again. It revolves around empathy and putting your customers, your users, your developers, whatever you want to call them, first and focusing on them because you're building for them.
>
> That encompasses a lot of different things, and we get into accessibility and whatnot, but just overall, empathizing with your users.

> *Matt:* You feel like people are hearing that? Your message, it's hitting them? I hope so.

> *Stephanie:* Yeah, I think it is. I hope it is. I know that sticks with me. Then what was the second question?

> *Matt:* I was just saying what stories do you love to tell?

> *Stephanie:* For me specifically, I love tying in things about the past and the history of certain technology. I'm going to talk about my HTML Controls talk in the end. I got to do a pretty good deep dive into controls and checking out like the specification from 1994 or '95, digging into that and trying to figure out why things are the way they are right now with HTML controls.
>
> It is really just fascinating. For me, anyway, I find that just interesting to dig into the history and dig into how...Even though it was simpler, it was still complex and new. Even it may seem simple now, that was complex stuff back then. I'm really excited.
>
> I don't know. If you're talking about something that has roots way back then, I think digging into that history to understand why things are the way they are is fascinating.

> *Matt:* I agree. Tracing causality chains is always really interesting. A decision was made, and it was potentially very arbitrary, but then, that resonated across decades.
>
> Then you think about that, and you're like, "I could be making those decisions today." You never know. There could be something in this podcast that you and I said that somehow becomes canon and how software engineering is done.

> *Stephanie:* [laughs]

> *Matt:* It's definitely going to happen. We are both very influential. That's the thing. If you look at that perspective that people who made those decisions, didn't realize they were making this life-changing, industry-changing, world-changing thing because they called to this. [laughs] You know what I mean?

> *Stephanie:* Yeah.

> *Matt:* This is what made sense, and how would the world be different? That's really great. Are there any other kind of last little bows to tie on when we think about building great developer experiences that you want people to come away with?

> *Stephanie:* I'll say the same thing again that I've been saying. Listen to your users, be empathetic, and be open to not only just listening to the people you're talking to.
>
> Realize that if there are people complaining or unable to solve a problem because it's something with your product, if that doesn't get resolved or acknowledged, then that's probably going to lead to a poor developer experience. That can linger on for years. I hesitate to say this, but I think Internet Explorer is a great example of that.
>
> [laughter]

> *Stephanie:* It can end up affecting your product in the future even at that scale.

> *Matt:* I agree, and that goes right back to what we were just talking about because even these decisions that you might seem like they're arbitrary and not important can have lasting ramification.
>
> Stephanie, what do you have coming up in maybe the virtual conference space because, unfortunately, we're not going to cool events now? Where people can see some of your great talks maybe in the near future?

> *Stephanie:* I am speaking at FrontCon next month, conference in Latvia. They're doing a hybrid approach now because I think Latvia is open, and there is no pandemic there.
>
> [laughter]

> *Stephanie:* But FrontCon, I will be talking about HTML Controls. There are a couple others coming up later in the fall if you go to my website, [stephaniestimac.com](http://stephaniestimac.com/). I have a list of conferences under my Speaking section.
>
> I do want to plug. If you go to my YouTube channel, the HTML Controls talk is on there from February. The one that I will be giving here next month is actually going to be updated with some cool new stuff about controls and the implementation proposals for customizing controls. There's going to be new stuff.

> *Stephanie:* If you want to see the evolution of a talk, you could watch the February version, and then watch the new one and see if you can spot the differences. It's one of those where...Well, it's obviously different. You will not get a prize. You will just get the self-satisfaction of having paid attention to a great talk two different ways, which is really in itself the ultimate prize.
>
> That being said, all of these things we just talked about are going to be in our show notes at [arresteddevops.com/developerexperience](http://arresteddevops.com/developerexperience). If you go to [arresteddevops.com/iTunes](http://arresteddevops.com/iTunes) and leave us a review in the iTunes Store, extensively, this helps people find the show is what they tell me. We've also always promised that if you leave a review, we might read it -- quote on the air.
>
> We probably won't do that, but you never know. Leave me a really fun review and maybe we'll do it. If you're into Spotify iHeartRadio, you can definitely find the show there.
>
> Stephanie, thank you so much for talking with me today. This is really enlightening. There's a lot of things, and I learned a whole bunch. Thank you for being part of the show.

> *Stephanie:* Thank you for having me. Yeah, absolutely.

> *Matt:* As always, I am Matt @mattstratton. This is the rest of DevOps. Remember, there is always DevOps....
>
> [background music]

> *Stephanie:* ...in the banana stand.
>
> [music]
>
>