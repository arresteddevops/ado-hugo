> *Shelby Spees:* I needed the "So, what?" on Kubernetes.
>
> [background music]

> *Matt Stratton:* It's time for "Arrested DevOps," the podcast to help you achieve understanding, develop good practices, and operate your team and organization from maximum DevOps awesomeness.
>
> I am Matt Stratton. Today, we're going to talk all about learning, learning how to learn, learning how to teach, and all sorts of fun, brain-type things.
>
> Before we get into that, a word from our sponsors.
>
> This episode is sponsored by CircleCI, design for modern software teams. CircleCI is continuous and aggression in delivery platform, helps developers push code with confidence. Trusted by thousands of companies.
>
> From four-percent startup to Fortune 500 businesses, CircleCI helps teams take their software from idea to delivery, quickly, safely, and the scale. Visit [arresteddevops.com/circleci](http://arresteddevops.com/circleci) to learn why high-performing DevOps teams use CircleCI to automate and accelerate their CI/CD pipelines.
>
> This episode is brought to you by Container Solutions, a consultancy that specializes in cloud native transformation. To help you navigate the ever changing cloud native landscape, Container Solutions is running a series of free online events with well-known industry experts such as Matthew Skelton and Victoria Morgan-Smith as part of a newly launched publication called "WTF is Cloud Native."
>
> To find out more and sign up, visit [arresteddevops.com/containersolutions](http://arresteddevops.com/containersolutions).
>
> The worst thing about the ArrestedDevOps podcast is when it ends. You're left wondering what to do next. What are you going to listen on your commute home? How do you occupy your time when walking the dog? What are you going to listen to during the quarterly all-hands meeting?
>
> Fear not, dear listener. There is a solution. You need to subscribe to "Software Defined Talk" right now. It' a weekly podcast that recaps all the news in cloud computing, DevOps, and enterprise software.
>
> The hosts Cote, Matt Ray, and Brandon Whichard will keep you up to date on all things cloud while offering tips on how to optimize your [indecipherable 02:14] hall and how to PowerPoint. It's a fun free-flowing conversation that will keep you entertain and informed.
>
> What are you waiting for? Subscribe to the podcast today by visiting [softwaredefinedtalk.com](http://softwaredefinedtalk.com/) or by searching for Software Defined Talk in your favorite podcast app.
>
> I am really excited to have this guest. I say this often, but I sit here and I'm like, "How did it take so long to get this person on our show?" I'm glad it happened. The past is the past. We're here. Joining me today to talk about this really important topic is Shelby Spees.

> *Shelby:* Hi. Thank you so much, Matt. I'm really excited to be here. I'm Shelby. I'm a developer advocate at Honeycomb. I used to be an English teacher. I've been teaching and tutoring since high school. It's just something that's very front-of-mind for me.
>
> When I changed carriers and went into tech and started learning programming and stuff, the whole experience has been how do we make this better, more accessible and more approachable for everybody?

> *Matt:* There's a lot to unpack about this idea of how do we learn, and then also how do we teach? Those go together. We've had episodes in the past where Ali Spittel before talking about this. A very long time ago, one of the first episodes that Sasha Rosenbaum was on, we touched on this, which I think illustrates how important it is to continue to talk about.
>
> Today, we're going to dig into slightly a little bit of a different idea. The genesis of this topic, was it last week or so, Shelby, was tweeting about a talk idea that she wanted to put together about this. I said, "If you want to start work on it, we're recording a podcast next week." Do you want to talk a little bit about the nuggets of where this came from?

> *Shelby:* A lot of this started last year. It's been a topic forever, but last year, there was a big discussion on Twitter about what makes an SRE. What does a junior SRE look like? Is there such a thing? Do you have to reach a certain level to become an SRE? Do you need an Ops background? All of this stuff.
>
> It started me on this fork of this thought process of how do we grow SREs and how do we grow software engineers who live in production? I'm a developer advocate for observability and production excellence tool. I want more people live in production, and I think observability helps us. We talk about we want production to be a friendlier place.
>
> There was this whole big discussion. Something that my [indecipherable 05:23] says is you don't become a senior engineer until you've broken production, you've taken it down. You need that Ops empathy and experience in order to build better systems and write better code to spread those systems.
>
> It's this big, messy conversation that I don't want to be prescriptive at all about what makes somebody an SRE per se or makes somebody a senior. Right now, we're in this period of tech where we have a lot of senior people who cut their teeth in actual server rooms, and crawling under desks and plugging in actual network cables.
>
> Then we have a lot of people coming in who have never seen a server rack, who've never considered...That was my experience. I'm a cloud native engineer. I have never worked on anything that was on-prem. For people where Ops is this obstruction, how do we grow them and teach them the Ops mindset that I think is very, very important? It's how we deliver software.
>
> Early in my career, I was building desktop apps, I was building some CLI tools and stuff. There was one tool that I ended up taking ownership of the project. We didn't release any new versions the entire time I was running the project, because I was a year into my career and I didn't really know how to release a Python package or any of that. It's a story I've told before.
>
> I realized all this work I'm doing to make pretty maintainable code is meaningless if I can't get it into the hands of users. Then I went down this career path of DevOps and SRE stuff. How do I make sure that the code I write is available to people?
>
> That's a hurdle that all the folks who are coming into tech now and doing bootcamps and online classes, or even CS students who are in traditional schools, how do we teach them the importance of deployment and maintenance and long-term software life cycle stuff?

> *Matt:* That touches on something that's hard, and that is that experience is the best teacher. I'm saying that with air quotes. I don't want to say that as a law of the universe, but we do learn from experience. It's also unfair to say...Then that can get us into how do you get experience without doing? You can't do unless you have experience.
>
> There are ways we can think about learning that give us the equivalent. You don't have to break production for a major bank to learn the same lesson of "breaking production." How do we abstract to that? It's also additionally hard for those of us who've had the experiences to pivot our frame of reference to people coming in from a different path.
>
> What you were talking about about having Ops as an obstruction, it reminded me of something from quite a while ago in a pre-DevOps world where I was running a tech Ops team and we had our standard tech screen. I built the tech screen in a way that the idea was the first few questions were supposed to be softball easy questions.
>
> I wanted to have the person feel at ease. You never want to start a thing like that and feel like you started off badly. My team and I talked. We were like, "What's a really good software?" We were like, "What grade level? Everybody knows that. You should totally know that."
>
> As we were moving into the pre-cloud but heavy virtualization era, there were a lot of great candidates who didn't know that because they only worked in VMs. They didn't have to deal with hardware. They didn't have to know that.
>
> It took me by surprise that what I thought was yeah, that's the thing that's going to put you at ease, is we had candidates where they had the exact opposite thing. I've personally seen this with a lot of content that I read when I'm trying to learn something.
>
> I don't come from a development background. I come from an ops background, so I can write code that nobody should ever have to see, but it might be able to get the job done. A lot of times, I'll look at something, and there's just a whole lot of assumptions that are made. You understand like, "This is how I write this."
>
> Company I worked for, I remember I was trying to learn the API actually for the text screen. It made me look at the documentation. I'm like, "This is a tool -- that's actually the most of the consumers of this tool -- are people that are operationally-focused?" The documentation is 100 percent written by devs and for devs.
>
> I'll try it because they got better. It's fine. It's no shame, but it was PagerDuty, right?

> *Shelby:* Mm-hmm.

> *Matt:* That was the thing. I'm like, "A lot of the people who are going to be trying to write an integration to PagerDuty are probably not full-time developers," right?

> *Shelby:* Yeah.

> *Matt:* Some of them are, and that's great. I think there should be more. That's fine, but a lot of them are system engineers, ops folks, SREs, whatever who don't live in, who don't necessarily have that background, but they just want to know how to make a thing work.
>
> When you operate with this assumption that you'll understand this about JavaScript already going into it, this was a big part of why everybody tells me Gatsby is so great and Gatsby drives me up a wall, because it's what it's built for. It's built for a React developer who wants to write a static site, right?

> *Shelby:* Mm-hmm.

> *Matt:* Understand that, when you're recommending Gatsby to people, for example?

> *Shelby:* I think you touched on a lot of this...It makes my brain explode. There's no linear path to software practitioner knowledge. There's so many different domains and directions.
>
> The tech screen that you're talking about, you can't expect someone with the same amount of experience, even in similar companies or similar roles to be able to answer the questions that you're asking because there's just so much knowledge out there. I think that's just universal truth of working in tech is not only is there's so much information out there that we can't possibly hold all that in our heads.
>
> It's constantly growing. It's constantly changing. Things are constantly being deprecated. I don't know if you've ever had the experience of looking at StackOverflow answer this from 2013 and five major versions ago drives me nuts.
>
> You can't expect people to...You benefit, even the most senior and experienced people, when you build from first principles and build from this clean slate. There's tradeoffs. I don't think every documentation page needs to start from like, "This as a FOR loop," but there's a certain amount of that...
>
> We're trying to do on the internal ops team at Honeycomb and something I try to do with my tech writing in general is, here's what I expect you to know about before you read this documentation. It never helps your reader. I've experienced this so many times when I'm going through a tutorial.
>
> These are three easy steps, and they're not easy to me because I have no frame of reference for it. It's just buzzwords, and it's jargon. That's where the learning how-to-teach part comes in for me is being very mindful of your audience and stating upfront who you expect your intended audience to be.

> *Matt:* It's going to be a common theme through this conversation is that there are multiple different learning styles and everything. What I'd say is how it applies to me and how I think about it, but I've found is I've had to learn things. I learned them much, much better when I have a problem to solve.
>
> When I was at Chef and we came up with Habitat, I had the hardest time getting my arms around why Habitat was helpful. Part of the problem was a lot of the use cases every now and then come up with certain examples. I'm like, "I've never had that problem."
>
> I was reaching. I was trying to find a problem I had to solve that I could solve with Habitat because then I would get it because that's how I learned config management.
>
> One of the things I think is really helpful is when your tutorials or whatever...They need to tell a little bit of a story. So often we write tutorials that are how-to-do a function, but I might not even understand why I need to accomplish that function. I'll look at it. It'll be like, "This is how you use..."
>
> By the way, anybody that I talk about I'm saying when in high regard, just things I've seen. I've given examples. It might be, "Here's how to use Pulumi to configure your AWS S3, EC2 bucket, Corey'll kill me, your S3 bucket."
>
> If I'm someone who doesn't like...Why do I need to do that? That's not a problem. That's almost like hello world. I'll tell you so many things I see, they're like, "Well, here's how to do this thing, but not in the context of a thing anybody ever actually has to do."
>
> I like journey tutorials. They are like, "OK, so you're a developer, and you need to deploy this application which does this thing. Here's the problem. The problem is it has to live somewhere. You don't want to have to do that by hand, so let's do that together." Yes, that's a lot more work. It's not just writing API documentation.

> *Shelby:* You're not alone. I'm very much the same way. I think it's almost a feeling for me as a developer advocate that like I need to have experienced this thing before I can really talk about it with any fidelity. Maybe, not but, I do lean very heavily on my own personal experience.
>
> I'm trying to glean that knowledge more from our users and from the community and just people's experiences reading about public incidents and things like that. The thing you're getting at is something that I was very, very lucky to learn early in my career.
>
> My second internship, at the end of it, you're supposed to give the "intern outbrief presentation." Basically just like, "What did you do?" Also, "So what? What was the organizational impact of what you did?"
>
> It was a very wild story because most interns just present to their immediate managers may be a level up, but it turns out the week before my presentation, me and one other intern in the department were supposed to present the same time.
>
> A week before, we were supposed to present. The CEO of the company was like, "Hey, it's been a while since I've been to an outbrief presentation. What's the next one?" It turns out it was ours. This is a company where the CEO is a level seven, and I was a level zero as an intern.
>
> Now, you have six levels of management freaking out like, "How are we going to get these interns to present to the CEO?" Out of the blue, she ended up not being able to make it, but we got up to our level-five manager.
>
> People who regularly present to three-star generals were coaching us on how to give this presentation and how to write it and update our sides and how to stand in the room and then all of this stuff. We got a very crash course on talking about organizational impact from a very early point in my career. I brought that with me to later jobs.
>
> I don't think I'm 100 percent perfect at it all the time, but it's something that I think, as engineers, we can do a lot to get better at that, mapping our work to how that moves the needle for the organization.
>
> Also, I think our tech leadership from the CTO level, helping map the stuff that's happening at the organizational level down to our day-to-day boots-on-the-ground implementation work.
>
> If you're going to work on your teaching skills and your communication skills as an engineer, that "so what" question is one that echoes in my head all the time. Why should I care? I think that's something that's really useful for approaching tutorials and approaching teaching, because I'm the same way. Like I said, I need that context.
>
> I have a colleague who cannot follow a tutorial unless she knows exactly the problem that she's trying to solve and the context that she's trying to solve it in. I remember, there's those SRE checklists, Gists, and repos out there. It's like, "Here's all the things you need to learn to be counted as an SRE or as a backend engineer," or whatever.
>
> I needed the "so what" on Kubernetes. I needed the "so what" on load balancers. I read the SRE book back in 2017. I didn't know what a load balancer was, and I didn't get why you needed one. That's something that we tend to skip.
>
> This is all me thinking out loud. [laughs] I think it's OK to skip that first principles stuff, but I think we need more...I don't know if you've ever experienced this, where you go to a SaaS website or a product website, and it doesn't tell you what problem it's solving. It's just like, "We do this, and we do that." The use cases, they don't even help you that much.

> *Matt:* Like you said, and then the response is, "So?" [laughs]

> *Shelby:* Yeah, that happens, not just on paid products, but also open-source product pages and repositories. I go and look at some library, it's like, "Why do I care about this library over the alternative in Standard Lib?" Answering that question is valuable. It'll help a lot of people.

> *Matt:* There's some thoughts around having intentionality with what you're teaching and how you're teaching it. You talked about developing the skill of organizational communication. It's very easy, I shouldn't say very easy. It's very natural to devolve onto trying to do it.
>
> I used to joke, when I was younger, about I don't know what all the rules of grammar are, but I can tell when something's right or wrong. Same thing with spelling. That's, I don't want to say a talent, or it's the way that I am. I know if something's spelled right or wrong, but I couldn't tell you why. I couldn't tell you why that grammar's wrong. We do that a lot with communication.
>
> We see that with a lot of people, the way they give talks, the way they write docs. They haven't learned, because it's a skill. What was making me think about this is you and I both, at different times and in slightly different ways, took part in a similar, very structured communication course.
>
> There's a course that I, because it was pre-pandemic, had the fortunate ability to take part in it in real life. I know Shelby took the class as well. The course is called "Communicate to Influence." I learned so much about how to structure a presentation. For a lot of people, that feels like, "Oh, it's not genuine then." No, you have a plan because you're trying to communicate a message.
>
> That's the thing, is anytime we're talking about teaching somebody something, what is that thing? Have a plan, because otherwise you end up with this brain dump of, "Here's the things I know about this thing, and I'm going to write them out. I'm going to say them..." We have things like that. If you want to do that, the things exist and they're called podcasts.

> *Shelby:* [laughs]

> *Matt:* That's OK, or your Twit stream. If you're trying to communicate something specific, you need a plan and you need a structure.

> *Shelby:* One of the best pieces of feedback I got while doing the workshop was...At one point, we were doing an example where it was just like, "Influence somebody to watch a TV show you like." I started rambling and rambling and rambling about all the cool things. I managed to fit it into five-minute limit or whatever, but someone was like, "That's way too much information."
>
> When I feel insecure about am I the right person to be saying this, am I technical enough or am I knowledgeable enough, I start to drop stack of books of information on someone's desk. Like, "I can prove it. Look at all the words I can say about this thing." That doesn't actually influence them or help them learn. The firehose doesn't really help people learn.
>
> It's still a challenge for me, but trying to filter that and know when to stop talking is really important. I'm a much stronger writer than I am an ad hoc speaker because I edit as I go. Usually what will happen, have a bunch of times at work, where someone will ask me a question. I'll be like, "We should have an internal doc about that," and I'll jam it out in half an hour.
>
> Now we have an internal doc for that thing. I can link to it in Slack channels or whatever. Versus if I were to try and explain it over Zoom call, it would be a mess. Having the framework there to anchor all the points I want to make and remind myself of the audience and what I want them to take away from what I'm saying is important and is valuable for me.
>
> My other challenge is remembering to sit down and actually use it after I went through a lot of training. [laughs]

> *Matt:* It was probably at least two years ago that I did that. The amount of times that when I'm writing a talk, I sit down and do the methodology are countable on one had. Then I get really mad at myself for not doing it, because when I do, it's so effective.

> *Shelby:* My manager even recommended I do it for submitting CFPs, before I even write a talk. I was just like, "Wow, I even thought to do that." That makes perfect sense, especially if you want to include an outline. It makes that process a little bit more work, but it's worth it because it makes me feel more solid writing a talk, if it's accepted.

> *Matt:* Can we think a little bit about...This episode has a title, and the title cannot change at all.
>
> [laughter]

> *Matt:* We said we're going to talk about learning to learn and learning to teach. Maybe take a little bit of thought about how do we learn to learn? We talked about how we can make the content better and we could teach better, but that's not always the case for us. If I want to learn something, what are some of the ways I can help myself learn how to learn?

> *Shelby:* To start, is figuring out what your learning styles are. It's a spectrum. There's a lot out there. Some people are very visual learners. Some people are auditory learners. Some people are kinesthetic learners where you have to interact with the thing.
>
> When I went back to school for computer science classes, there was a little questionnaire to figure out your learning style. Turns out I'm a multi-modal learner. That doesn't mean I can take my pick of any one of them. It means I need to interact with a thing all the different ways before I can understand it.
>
> It takes me three to four times as long to grok a thing. When I do -- and I think this is what's made me enjoy teaching so much -- I have learned it the auditory way, and I've learned it the visual way, and I've learned it the kinesthetic way, and I've learned it the written word way. Now I can turn that around and help teach other people.
>
> Figuring out what your learning style is. Some people can sit and watch a YouTube video or Twitch stream or whatever, and that sinks in for them. Some people need to read all the docs about a thing before they can even start writing a single line of code. That helps a lot.
>
> Another thing that's really helped me is the book "Mindset," which is about developing a growth mindset. Growing up, I had such a terrible attitude. I was so hard on myself. Every day, I told myself like, "You're so stupid. You're so stupid. You're so stupid," because I wasn't learning as fast as other people. It took me longer. I didn't know a thing yet.
>
> "How could you not know this thing?" As an industry and as a community, we've gotten a lot better about not having that got response like, "Oh, you've never heard of this before like the xkcd, 10,000 people a day learn a thing?"
>
> We have a much more positive approach to that, I think. We've gotten better about the gatekeeping and the incredulity that can trigger negative feelings. If you happen to be someone who is the one that daily 10,000 who hasn't heard anything yet, you got positive.

> *Matt:* Just a one on Mindset. I'm sorry. I don't want to interrupt. If you want to learn more about a growth mindset, but we have options depending upon your learning style, we'll put a link to the book in the show notes.
>
> Also, Sasha Rosen, Bob gave a great talk about exactly this and about the book last week at a meetup. I know the video is online, so if you're someone who will learn about your growth mindset through reading, you can get the book. If you want to listen to someone talking about it, you can watch the talk.
>
> It doesn't address every type of learning style, but it's a couple different ones. I think that is really key though because it can feel like, "Everybody knows this," like you said. It's like, "Oh, my God."
>
> This goes a little bit into why psychological safety is so important because it should be absolutely OK to just say, "Hey, I don't know," or not even say, "I don't know," but ask a question that says you don't know that thing without getting made fun of.
>
> One of the misconceptions about psychological safety is that people read it as...Well, that means don't be mean to people, but there's a lot of subtle things that we can do as well. It's not always about the psychological safety of the person who asked the question, but it's also for the people that see how you answered it.
>
> Years ago, in HipChat for our sales team, one of my colleagues is a very sharp engineer. It's actually doesn't matter if he is or not, but I mean, it was one of those things where he had had a problem. He was trying to figure out why something wasn't working.
>
> He had left off a flag on the SSH command. He had capitalize the P instead of lowercase or something like that. When we figured that out and then I was like, "Oh, man. How do you even DevOps when you don't know that?"
>
> He and I are great friends, and it was friendly ribbing, but the message to everybody else reading that was, "If you make a mistake, Matt will make fun of you." Do you know what I mean?

> *Shelby:* Mm-hmm.

> *Matt:* I've really tried to take that to heart about thinking about and so much of the stuff that we do. We need to be thinking about the people who are listening, not the people we are talking to.
>
> When people are asking these questions, you want them to feel comfortable asking but also understand the way that you answer it is for the benefit of other people because the neck can see that if someone can ask that question and their response is, "Sure, let me tell you. No problem," but I'd be like, "OK, cool. I'm in a group or in a setting where it's OK to not know."
>
> I'll tell you something. Reality is it's always OK to not know, but it can feel like it's not based on how we interact with each other.

> *Shelby:* That was another thing that I was just very, very lucky to encounter. Just my first year of working in Software. I was working on this Python library, where our users are PhD-level, literal rocket scientists like aerospace engineers and stuff, but they're not Python experts. They're not software engineers.
>
> I helped develop a workshop to teach them how to use the library, which was the API for this GUI tool that they're used to use. I had to learn all of the domain knowledge about satellites or whatever, but they had to learn why do these parameters go here and what are the data types and things like that.
>
> Encountering those questions very early on where it's the sort of thing that I, as the most junior person in the room, was uniquely qualified to answer, it really helped me just like everybody has that gaps in their knowledge, sort of that thing we talked about the beginning.
>
> There is no linear knowledge. There's no linear path to expert. Everybody has gaps. Everybody makes little mistakes, and everybody has questions.
>
> Another thing that happened recently is one of our platform engineers at Honeycomb. I said something about just like, "I get the distributed comb sort of thing, but I also don't really get the distributed comb sort thing." He's like, "Oh, you're not alone." I'm like, "You're a platform engineer. You run our platform." [laughs]
>
> Being able to talk to people who I think is just like, "Well, you have a handle on this, and it turns out like you don't," that's something that...When you're in a senior role or even mid-level senior or just in a vocal like public role like I am, sharing those vulnerable knowledge gaps and those vulnerable moments can be really, really, really helpful.
>
> That's specifically why I go and I write a blog post about like, "I broke the DNS" on my Hugo site because DNS is hard and weird and very hard for me to test, and I don't really grok it. At one point, I was like, "Take away my DevOps card." Also, I tend to, very publicly, beat myself up, "Oh, I'm not as experienced as other people." That's something I'm trying to get over to.
>
> The knowledge I have in the learning I'm doing and the learning I'm trying to do in public a little bit, where I try and reason about what is a difference between a regular database and then column store, asking questions out loud, and things like that, it's literally how I learned. I need to talk about it, and I need to like think out loud and write it and draw pictures and all of that.
>
> I try and I try, not even on purpose, to create a more welcoming environment or whatever because it's literally like I just have to tweet about things in order to make sense of it. I hope that it has a side effect of making that a more welcoming environment for other people learn stuff that they haven't learned before. It's cool.
>
> I had a guest blogger on the Honeycomb site a while back, who worked in tech for 25 years and never worked on a Web service. He had to just learn Web services from scratch. All this stuff, I can now take for granted because I've been living in that space for a couple years now. It's brand new to him.
>
> That's exactly the thing. When you're from the senior perspective and the teaching perspective, when you make things accessible to early career people, junior people, career changers and everyone learning from scratch, you also make it more accessible to the people who are joining a new project, or changing domains or whatever.
>
> On the learning side, there's tons of advice. You search like strategies for learning and things like that. You ask a dozen people, and you get a dozen different piece of advice. There's a lot of advice about blogging as you learn, or keeping a Wiki, or all of that stuff. I think there's a lot of pressure to learn in public or to have artifacts deliverables, almost.
>
> Another book I'm going to recommend is called "The Lichtenbergian." I think that's how you pronounce it. It's basically about procrastinating as productivity, which is great for me, because I am a lifelong procrastinator, and I think a lot of people can relate to that.
>
> It also talks about abortive attempts where you try a thing and you don't complete it. I know a few people who are staunch completionists, and they can't move on to the next task or the next project until they finish the current one. You're going to have a couple dozen, maybe, or a handful, or whatever.
>
> You're going to have half-finished projects, or you're going to have reopened the repo because you thought of a really cool name for a project, and it has a ReadMe and nothing else. Embracing those abortive attempts is also really, really important for learning and for the psychological safety.
>
> If I beat myself up for every blog post I started writing and didn't publish, I'd be black and blue. [laughs] I wouldn't be able to walk because there's so many cool ideas. We have so many cool ideas. Not all of them pan out, and not all of them become published completed portfolio projects. We still learn from noodling over the ideas.
>
> That's a thing where, from a learner perspective, I even have a process where, when I'm learning a codebase, I go in and, because I have to interact with things, the way I read, I circle and underline. Sometimes I'll edit a Google doc because it's the only way for me to read the content. I do the same with code. I'll go in and I'll start refactoring.
>
> I'll start changing names to see the ripple effects of that. I'll end up breaking things, but it'll teach me about the codebase. Then, I clear my index and make a new branch, and then I'll do my real work. Those sorts of things that we don't see that process. We don't see all the successful people's abortive attempts, because they're collecting dust in some private repos, or some local branches.
>
> Those sorts of things, when you're a learner, it's embrace that. When you're trying to make the environment more conducive to learning, maybe being a little bit more public about that.

> *Matt:* I like that idea about learning in public in a way that's safe. Something that bears visiting is a lot of this is not necessarily going to come with the same risk profile for everybody, even the learning in public thing. For some people, I've seen great examples of someone who...
>
> Annie Hedgpeth, who entered the tech industry from a completely different career path, she took on learning, at the time, a fairly obscure bit of Chef technology. She learned in public. She blogged about what she did.
>
> Her blogs on learning InSpec for, I don't know about now, but for a very long time, were linked to from the product page as the documentation for the product because it was the best-written stuff. It was all from her learning. The reason I'm bringing this up is that, it's not to say that it was a different risk for that, but it can be if you're trying to get started.
>
> It can feel like a risk profile to admit you don't know something in a public way. It's one thing for someone who's already feels pretty comfortable in things to be like, "Yeah, I'll figure this out, because no one's going to think I'm less than because I don't know that." Whether or not people think that or not, but it might feel that way to you.
>
> Also, we talked about learning from experience. What it made me think of a little bit when you talk about that risk profile and the ability to do that, I have talked a lot before about how I learned from doing. I'm not classically trained, if you will. I don't have a degree and all this stuff.
>
> Scott Hanselman said something a few years ago that put that in perspective to me, which is someone who doesn't look like me would not have had the same opportunity to not really know what they're doing but still get a chance to do stuff.
>
> The best example outside of tech is the show runners for "Game of Thrones" who've made big deals out of the fact that they've never run a show before and HBO gave them Game of Thrones. You're like, "Oh my God, what privilege." Not to say that it's at that level for me, but I was given a lot of responsibility that was unearned where I know someone who's under-indexed would have to prove a lot more.
>
> The reason I'm putting that qualification in front of that is that I think about where I learn so much. I've made the jokes that I had...There's this one system integrator I worked for early in my career. I look back in my resume, I'm like, "I can't believe I only worked there for four months." I feel like I learned more in those four months than I have in the decade since then.
>
> Because it would be stuff like my boss would come to me and say, "Hey, do you know what a VPN is?" Just for context, this was like circa 1998. I was like, "Yeah. I think I read an article about it the other day." He goes, "I told [indecipherable 42:33] you could put one in tomorrow." Now I have to go do that.
>
> A lot of people have had those experiences of you have to deliver on something you don't know, and you will learn it from doing that. That could be a powerful way to learn, but also again comes at a different risk profile depending upon where you are on your career, who you are. That's something we need to keep into account.
>
> Also, just to be exceptionally clear, I do not want to take credit for bringing this up because Shelby wrote this in the notes and I wanted us to get there.
>
> [laughter]

> *Shelby:* I'm glad you did. Like I said, I tend to fill in a lot of words and not always get to all the points I want to make, which is why we make notes. I think a lot about the times I've gotten lucky in my career, the times that people have stuck their neck out for me, gone to bat for me, given me a chance.
>
> I got put in charge of this really big and challenging project the first day of my second internship literally because I have a linguistics degree. The product lead came up to me and was like, "Oh, you're the linguist. You want to write a translator?" I was like, "I don't know what that means, but I guess I'll have to figure it out."
>
> Turns out it was compiler theory stuff that I had never touched before in my one year of CS studies. I learned so much, and I also dropped the ball in a lot of ways. Maybe it's something that most junior person, the intern shouldn't have been given that entire project.
>
> At the same time, I was able to spin that, the learning and the work that I did, in positive ways that not everybody would have been able to do that and been believed. I'm white, I'm relatively tall, I'm a native English speaker, I'm US citizen. I have all of these intersecting appearance things and paper things that lend me credibility, even if I don't have the track record and the experience.
>
> I think about the first few years of my career. It can go in the extreme opposite direction where I've been called out like, "You have some really bad imposter syndrome." Now I'm learning how to talk about it and balance it where I'm aware of my gaps and I'm aware of the known unknowns -- it's Honeycomb language.
>
> At the same time, I have done stuff that's valuable. I'm happy with the impact I've had in that work.
>
> Not everybody is read the same way, and not everybody comes out of the gate with the same...I don't want to say level of credibility because that's not what it is. There's definitely a risk to being public about your knowledge gaps. There's a risk to the...
>
> You're not a senior engineer until you break production, because breaking production, some people get punished more than others like we see it. We can point to examples of that.
>
> People get punished more than others for bringing up organizational issues like, "Hey, the things you're talking about in your top-level company OKRS don't map to the day-to-day boots on the ground work that we care about." Bringing that stuff up, there's not an equivalent like psychological safety there.
>
> That's something I think, as a community, we try to talk about. I say all this stuff. I feel very unqualified to make a difference there.
>
> I'm in a position to have a positive impact there. I want to do a good job. I know that I could be doing more. That's the sort of thing that you know I talk about it because I care. I also know that I may be ineffectual in some ways that I'm not having as positive an impact as I would like.
>
> Just want to acknowledge all of that. It's more than a disclaimer. It's something that we need to discuss and share as an industry, that the "Move fast and break things" doesn't work for everybody.

> *Matt:* There's a lot of unintentional consequences to advice and approaches that we take. It's hard. Words are hard. Messages are hard even the jokes that we make and the ship posts we put on Twitter and things like that.
>
> I've been trying to be more cognizant around where that comes and how we can be more inclusive and welcoming of people who'd have a different paths that got them to where they are.

> *Shelby:* I'm glad that senior people and white men and people, not in minorities groups, are bringing that up because when you are the token woman or the token black person or the token black woman on a team and you bring up like, "Hey, that wasn't a really good joke. It might make someone feel bad," you are now the SJW, the social justice warrior.
>
> You're ruining people's fun or whatever. In that way, there's also the disproportionate punishment for under indexing minorities people even trying to create more psychological safety and create a healthier community. Bringing that up and criticizing the status quo has a greater punishment more backlash on people who don't fit certain molds.
>
> I implore when you fit the cookie-cutter type person mold that it does have a...It takes the burden off of those of us who are more impacted by that negativity or that lack of psychological safety words.
>
> Thank you. Keep doing it, all of you. I know there's a ton of people who have been doing it, and I really appreciate that because I've been that person. I've been like, "Hey, I wish you wouldn't use that word." Now, I am the mom or whatever. I'm the jerk. I'm ruining everybody's fun. It's not a good feeling. It makes it hard to feel welcome on a team.

> *Matt:* I think that's a good way for us to wrap up there. Obviously, we have a lot more we could be talking about. It wouldn't be a podcast if I didn't threaten to have a follow-up episode that we will probably never get around to doing, but we might remind us. Send us on twitter, say, we got more to talk about.
>
> Before we go into our wrap up, Shelby, is there anything...We used to say like, "Where can people see? We are traveling as much, but we have virtual things," anything you've got upcoming, just want to plug. I feel like now I want to be a late-night talk show host be like, "What do you got to plug?"

> *Shelby:* Yeah, I have a couple of events in February that I'm participating in. I'll be speaking at developer week. Also, there's an info queue panel. That's all just work stuff. Reach out on Twitter or whatever. I'd love to hear from people, because it's a really cool world, and it's really cool community.

> *Matt:* Also, you can find Shelby's Twitter if you go to the show notes for this episode at [arresteddevops.com/learning-to-learn](http://arresteddevops.com/learning-to-learn). We'll have links to a bunch of the other things that we mentioned.
>
> Also, pretty excited to tell everyone, not that I have anything directly to do with this event, except that I think it's great. My favorites events of last year, Deserted Island DevOps, is coming back again this year. It'll be April 30th.
>
> The CFP is open right now. If you go to [desertedisland.club](http://desertedisland.club/) -- and I'll put a link in the show notes as well -- you can submit for the CFP and if you are an underrepresented person who doesn't happen to have a Nintendo Switch or a copy of Animal Crossing which is needed, there are scholarships available to get some more diverse voices into this event.
>
> It was super fun. Even if you aren't into Nintendo or anything like that, you want to check this event out. It was the best run virtual event of all of 2020, and I have high hopes that Austin and the crew will do it again.
>
> You can go to [arresteddevops.com/iTunes](http://arresteddevops.com/iTunes) and leave us a review in the iTunes store, which I guess isn't called that anymore, but I refuse to change my redirect on the website. It is going to be that. The reviews actually...They do help other people find the show, so that's great. You never know, we might read your review on the air. Probably not, but we might.
>
> You can also find Arrested DevOps on Spotify and IHeartRadio if that's how you like to listen to podcasts because people do. Actually, you can pretty much find Arrested DevOps anywhere that find, and less-find podcasts are available. Shelby, thank you so much for joining me for a really great conversation today.

> *Shelby:* Thanks for having me. It's been a blast.

> *Matt:* So fun.
>
> [background music]

> *Matt:* This is Arrested DevOps. Remember, there's always DevOps.

> *Shelby:* In the banana stand.
>
> [music]