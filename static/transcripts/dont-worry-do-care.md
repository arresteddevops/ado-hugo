> *Aaron Blohowiak:* Well, if faults are engaging, I am exceptionally engaging.
>
> [background music]

> *Jessica Kerr:* Good morning everyone. It is time for "Arrested DevOps," the podcast that helps you achieve understanding, develop good practices, and operate your team and organization for maximum DevOps awesomeness.
>
> I'm Jessica Kerr. Today I'm proud to present Aaron Blohowiak, purveyor of FinDevOps and Systems Thinking Everywhere, including at Netflix. First, a word from our sponsors.

> *Announcer:* The worst thing about the Arrested DevOps Podcast is when it ends. You're left wondering what to do next? What are you going to listen to on your commute home? How do you occupy your time when walking the dog? What are you going to listen to during the quarterly all-hands meeting?
>
> Fear not, dear listener, there is a solution. You need to subscribe to "Software Defined Talk" right now. It's a weekly podcast that recaps all the news in cloud computing, DevOps, and enterprise software.
>
> The hosts, Coté, Matt Ray, and Brandon Wichard, will keep you up to date on all things cloud while offering tips on how to optimize your Costco haul and how to PowerPoint. It's a fun, free-flowing conversation that will keep you entertained and informed.
>
> What are you waiting for? Subscribe to the podcast today by visiting [softwaredefinedtalk.com](http://softwaredefinedtalk.com/) or by searching for Software Defined Talk in your favorite podcast app.

> *Jessica:* Aaron, welcome to the show. Tell everyone what you're working on these days.

> *Aaron:* I'm working on a lot. I'm also wrapping things up because I'm about to go on parental leave.

> *Jessica:* Oh, congratulations.

> *Aaron:* Thank you so much. It's funny that you say congratulations to someone when really what you should say is like, "Oh, I hope you're ready."

> *Jessica:* [laughs] There is no ready. That's ridiculous.

> *Aaron:* That's true. That's true. It's our second child, so I A, didn't learn my lesson, and B, [indecipherable 1:56] .

> *Jessica:* [laughs] You know this is not a vacation.

> *Aaron:* It's more dread than excitement. I'm really happy about it. Thank you. Work stuff.
>
> [crosstalk]

> *Jessica:* It's like you're never really ready for production. You just go and hope you can handle it.

> *Aaron:* [laughs] There are a lot of analogies to made between having a new person come online, having a new system come [inaudible 2:25] . Both [inaudible 2:27] ability need to adapt continuously, as well as the mutual development between yourself and the thing that you're operating always.

> *Jessica:* Oh, yeah, totally. You have to listen and only gradually do you get your system to use words to tell you what its problem is.

> *Aaron:* [laughs] It requires a careful nurturing over a long period of time. It's not an instantaneous, "OK, we have now operated this system. It is now operational. I can go do something else." [inaudible 3:00] ongoing investment [inaudible 3:03] , which relates to the stuff I'm doing at work. I guess that's a segue. [laughs]
>
> Three big things that I focus on. First, I'm in the cloud infrastructure engineering part of our platform [indecipherable 3:17] organization, which is part of the general cloud, or service, or backend part of how Netflix works. We tend to really focus on the availability, the efficiency, and the security of our [inaudible 3:32] infrastructure overall, as well as helping to raise that level of abstraction.
>
> To those ends, I'm working on three different projects. One is cost efficiency, or sometimes we'll use the term cost compression.

> *Jessica:* Cost compression?

> *Aaron:* We have a certain like cost of not good solds because that includes things like buying content, but our cloud costs, if you can imagine. People...Netflix is like Blockbuster but online where you can watch videos.

> *Jessica:* [laughs]

> *Aaron:* Our major API there is our cost per stream. We take our total cloud costs, how many streams we served or how many times people clicked play successfully. We divide the two numbers, one over the other. That gives us our cost per stream. Each year, we want that number to go down by a certain amount. That shows that our costs are growing sublinear to the growth of the usage of our business.
>
> That's what we call it cost compression. How do we do that without having budgets? There's no prior approval for getting resources. It's the cloud. You just call an API and you get more resources.

> *Jessica:* You have to achieve cost compression without telling engineers not to spend money?

> *Aaron:* Exactly. Yes. Not only do we tell them go ahead and spend money but lean into innovation. When you're in doubt, just go ahead spend a little bit more. How do you have that attitude and still achieve a sublinearity of cost growth over time?

> *Jessica:* I'm very excited about reducing costs without avoiding costs.

> *Aaron:* Funny thing there. It turns out that people are incredibly bad at making predictions about the future. I believe that's generally true. Given some of our shared reading lists, I think that [inaudible 5:14] that to be true.
>
> If you don't believe that you can predict very well, then what you should do instead is get really good at reacting. It turns out that reacting has all of the power of hindsight because you have all this additional information. You can make even better decisions. It's far easier over the long run to let things go as they may.
>
> Then be very good at detecting hotspots, problem areas, or causes for concern, and then investing there. Whereas if you don't know what the hotspots are going to be, and you're nervous about, it if you will, you've tried to put a bunch of controls or a whole bunch of investment into modeling which is very expensive and also inaccurate.
>
> At scale, we have the advantage of having so many teams, so many thousands and thousands of services out there that the odds that any one service is going to blow out our cost per stream number is very small, but if we don't monitor it, things may get out of hand.
>
> We have this like feedback loop kind of cycle where you have continuous monitoring and understanding of the cost growth per service team manager, director, VP level org, and then we diff those over time. We see what is growing linearly, sublinearly, or superlinearly [laughs] to streaming.
>
> Then we can engage as necessary. Sometimes that engagement is like, "Hey, did you know that you did this? Did you forget to turn this off?" Frequently, that's like, "Oops..."

> *Jessica:* [laughs]

> *Aaron:* [indecipherable 6:47] interaction that we have. The second thing is, "Yeah, we know. We'll get around to it if it makes sense," because most of what we do is A/B testing. If the test cell isn't going to be productionalized or go forward in perpetuity, then it doesn't make any sense at all to optimize that functionality, that feature, that branch, if you will.

> *Jessica:* Don't fix it until you know you're going to keep it.

> *Aaron:* Exactly, because the pace of innovation, that pace of turnover, having this very tight feedback loops is really I think the most important thing for the business, rather than shaving a few percent off the bill at any given time. Over the long run, this has been extraordinarily successful.
>
> Then we really try to create not cost control but cost consciousness. I'm talking about like moving things more into developers' minds as we're trying to get operations as part of the full lifecycle of creating the software from its product conception through to when it's retired.
>
> We create easy visibility into exactly what the cost implications of what you're using the cloud is. That's not just your instances, but if you're calling a Cassandra database or you're using a bunch of networking stuff, your actual cost impact to the whole system is distributed throughout potentially dozens of teams.
>
> How do we roll that up and show you only the things that matter and are important and relevant to what's changed lately? That's where we have a fair bit of investment in.
>
> The big thing that we're working on now that I'm super excited about is not only looking at cost growth but also utilization. We know how much you've been paying for it, but how much are you actually using? It turns out that like we haven't really dug into that a lot. [laughs]

> *Jessica:* You've got to the point where the cost is low enough that you don't care about utilization, but now you're like, "Oh, well, what if we care about utilization?"

> *Aaron:* Exactly. Just like, show me all of the clusters with an average CPU utilization less than 20 percent and maybe they could not be so big.

> *Jessica:* Maybe.

> *Aaron:* Exactly, it turns out you run a couple of queries. You save a few millions of dollars. Some people are happy, and nobody really worries about it.

> *Jessica:* [laughs]

> *Aaron:* When people think about utilization, "Oh, you know, the difference between 40 and 60 is way different than the difference between 60 and 80. It's like cool. Do you know anybody that really runs their entire cloud infrastructure at 60 percent utilization all the time?" I don't.

> *Jessica:* Yeah, no.

> *Aaron:* Of course, CPU isn't the only dimension. It's multi-dimension. You have to find out which was the actual bottleneck, and frequently you find out, "Oh, they just had a mistuned thread pool." Anyway, that's down in the weeds [indecipherable 9:28] .

> *Jessica:* [laughs] It's a good weed. I love those weeds. OK, cool. It sounds like you let developers...It's like, "Don't worry but do care."

> *Aaron:* Yes, exactly. Don't worry but do care. That's brilliant. I wish [inaudible 9:42] .

> *Jessica:* [laughs]

> *Aaron:* That is a great philosophy for life itself, exactly. I love it. [laughs]

> *Jessica:* It also reminds me of what John Allspaw and John Cutler -- his Twitter's @cuttlefish -- talk about what the difference is between autonomy and agency. You let them spend whatever they want, but you give them the feedback loop so that they're conscious of what they're spending. Agency has feedback. You can take action in the world and see consequences.

> *Aaron:* Exactly. Combining that with leaning into the organizational structure itself, lets the suits manage their investment as a portfolio. In other organizations where they get too nitpicky about this stuff, individual services will get called up for being too expensive.
>
> Whereas if you go to a director and you say, "Hey, your whole organization costs have gone up this much. Here are the leading reasons for that growth," which may be a couple of services, they may think, "Oh, that team is super underwater, has this big deadline facing."
>
> Instead of focusing on that growth, I can lean on this other team that has a bit of slack in their time to put more optimization into their infrastructure, even though it might not immediately jump out to us as being a driver of cost growth. They can still achieve that overall portfolio cost of that area they desire without having put a blocker in front of the specific team that's doing a lot of high-innovation work.

> *Jessica:* The directors are able to balance the cost growth against the benefit growth that team is providing with its innovation.

> *Aaron:* Yeah. Rarely do we go up the management chain. The most frequent thing is you just ping an engineer and flag like, "Did you know that this is happening?"

> *Jessica:* [laughs]

> *Aaron:* Usually it's like, "No, I did not know. Should I be paying attention to these dashboards?" It's like, "Not unless we say hey." [laughs]

> *Jessica:* Oh, cool. Wait. You just said that you make dashboards.

> *Aaron:* Yes.

> *Jessica:* And you tell people when they should look at them.

> *Aaron:* Generally, yes.

> *Jessica:* You don't expect them to look at them the way you do every day.

> *Aaron:* Yeah. We have automated learning. We don't even look at it unless an alert comes in. The dashboards are more like cost-debugging utilities than they are like, "Put this on the monitor above somebody's cubicle," or something like that.

> *Jessica:* Nice. The dashboards are useful when you have questions as opposed to being something that people are supposed to magically put into their consciousness.

> *Aaron:* There's a small rotation of people who are part of our capacity operations team that have daily tasks to like the equivalent would be an operator of a power plant who has to look at the board and see where all the dials are and make sure that everything makes sense.
>
> There is a five-minute daily chore for somebody that's part of the capacity operations [indecipherable 12:47] . Just do a quick smell test, if you will, to see how things are going in the system, but generally, no.
>
> For the thousands of engineers that we have in the organization, we don't expect any of them to look at their cost information unless we're specifically initiating a, "Hey, can you consider this or explain this to me?"

> *Jessica:* That's some really high-efficiency mental effort allocation there.

> *Aaron:* Yeah. We try to make this long-term view kinds of things where we value this context over control. It's not only a strategy but a philosophy for the company.

> *Jessica:* You're providing the engineers with the context that they need.

> *Aaron:* Exactly. That is quite different from the other big projects or the second big project that I'm working on, which is a unified strategy for access isolation at Netflix.

> *Jessica:* Access isolation, is that under security or availability?

> *Aaron:* It is primarily under security. It does have availability implications because if somebody can...The power to touch is the power to kill as it were.

> *Jessica:* Availability is part of security?

> *Aaron:* Yes. We struggle with this internally with where some of the security functions live between our dedicated information security organization or infrastructure organizations.

> *Jessica:* Really?

> *Aaron:* Yeah. The stable state that we've achieved is basically a cross-matrixing of some people who attend each other's staff meetings who they're part of their off-sites and planning and things.
>
> Things like how mutual TLS works on the network. You have to understand the nitty-gritty details of certificate management, which is a security expertise. It also crosses into our networking stack and our networking expertise. This is one of the big parts of how the access isolation thing is going forward. It's helping to bridge these worlds together.
>
> This project includes representatives from about a dozen different teams, all working together to try to align...Yeah.

> *Jessica:* Trust is hard.

> *Aaron:* [laughs] Yeah, trust is hard, as well as getting user experience is great internally. Traditionally, we've succumbed to Conway's law and we shipped our org chart to our end users. If you wanted to spin up a new service, as a developer, we all have a "You write it, you operate it, you love it" model for almost all of our teams.
>
> The person writing the code is also responsible for configuring security groups and setting up which VPC they're running in, which AWS account. Oh, by the way, I need to access this other app. How do I enable that access?
>
> Now, you might have to talk to a couple of different teams because you also might need a different IAM profile to access this S3 bucket, which is this transitive library that you included. It depends on it. Anyway, that's...

> *Jessica:* Ah. [laughs]

> *Aaron:* It's a giant mess right now. We're trying to put it all behind a single declarative config of these are the resources I need to access that are outside of my organization. Then hopefully we'll...
>
> [crosstalk]

> *Jessica:* Do you allow those resources to declare their dependencies on other resources that you will then also need access to?

> *Aaron:* Exactly. We'll try to make that a really great experience. It can be as self-served as possible to give that power [indecipherable 16:21] person and say here...It's an inversion of that relationship where developers should just give us the context that they have about what they need, then we should just make it happen.
>
> Whereas on the cost side, we give them the context of what is happening and what we need, and they figure out how to make it happen. There's two different flows of how the context works in order to affect change in the system.

> *Jessica:* The developers need to tell you what resources they need, and then you give them the access that they need and nothing else?

> *Aaron:* Yup. It's configured. It's not quite least privileged. It's like almost least privileged because we do want to give you a little bit of overly broad access from exactly what you need so we don't have too many stumbling blocks.
>
> If you have a couple of different systems in your same team and you spend up a third or a new system, you shouldn't have to do a bunch of grunt work to say, "and access everything else that my team owns," right? You want to have some sort of organizational [indecipherable 17:18] .

> *Jessica:* Yeah, you want the cells to have access to adjacent cells in the same muscle tissue.

> *Aaron:* Exactly. That's precisely the...

> *Jessica:* If they need a nerve ending, they got to say so.

> *Aaron:* [laughs] Yeah. Some nerves may have the desire to say, "Oh, no. Only..."
>
> [crosstalk]

> *Jessica:* ...sensitive. [laughs]

> *Aaron:* Precisely. It's a raw nerve. You can't touch this one unless you really know what you're doing.
>
> Then it gets even more complicated because there's things that's external to the company and some things that's in this murky area of like, "Is it external? Is it internal?" Then even within internal, there's somebody who wants the whole fantasy that you can cleanly divide your business into domains. Within a domain, it's free for all, but cross-domain, that's where you really have to focus.
>
> We did a pretty lengthy graph analysis of our networking flows and communications. We do have communities that we can identify just by looking at network flows, but the interconnectedness between the communities is so vast that there are almost as many exceptions as there are local connections within the communities. We can't have any of these strict segmentations.
>
> [crosstalk]

> *Jessica:* Almost like people.

> *Aaron:* [laughs] Indeed, it is very much a graph, not a tree services.

> *Jessica:* You do observe some clustering of interactions?

> *Aaron:* Yes. If you're familiar with the Netflix service, the things responsible for picking out what shows and movies to display to you all talk to each other, along with your thumbs up, thumbs downs, those kinds of things. They also have some interaction with these systems responsible for DRM for various reasons.

> *Jessica:* DRM is the copyright protection thing?

> *Aaron:* Yeah, digital rights management. Basically, authorizing that you do in fact have the ability to stream this, and then how exactly that works mechanically with key exchange and stuff like that, per title, per person.

> *Jessica:* Wow.

> *Aaron:* There's a whole bunch of shenanigans that goes on behind the scenes to make it work. [laughs]

> *Jessica:* Things I'm glad I personally don't have to think about. I just watch the movie.

> *Aaron:* You go on Hacker News sometimes and someone mentions Netflix engineering, like "Why do they have thousands of engineers? I can put that together [indecipherable 19:15] ."

> *Jessica:* [laughs] Good luck because some people set up their little streaming boxes in their house so they can stream from their own personal media server. If you're really lucky, you'll get that set up in a weekend, but two weeks later is going to break. How fun with that.

> *Aaron:* [laughs] It reminds me when Dropbox came out, people were like, "Well, you have rsync. What's Dropbox for?"

> *Jessica:* [laughs] There's such a difference between something being technically possible. I own "Monty Python and the Holy Grail" somewhere. I have the DVD, and the DVD player under my TV might still work. I might be able to find the remote. The disk might not be scratched, but that is not near at hand.
>
> That is not, "I just got myself a beer. I'm thinking about going to sleep, but maybe I'll put this movie on." I mean fuck it. Am I allowed to curse on the show? Yes, I am. We are allowed to curse on the show.

> *Aaron:* [laughs] Fuck that.

> *Jessica:* [laughs] Fuck it. I'm not going to get up and look for the disk and turn on the...No. I will pick up the Roku remote and click Netflix. It's the same with Dropbox. Oh, "Let's file-share. Do we have to?" Or, "Oh, OK." Click, click. There it is. It changes behavior.

> *Aaron:* It totally it does. Funny that you mentioned DVD players. If you want to get under a Netflix engineer's nerves, just mentioned things like DVD players and old hardware. As a Netflix customer, I love the fact that Netflix still works on hardware that I bought 10 years ago. [indecipherable 21:45] of Netflix service supporting hardware that is 10 years old that you can update in the field.

> *Jessica:* Oh, no. It can only support such levels of encryption and...

> *Aaron:* Encoding. By the way, "Wait. Was that SSL certificate baked into the hardware?" [laughs]

> *Jessica:* [indecipherable 22:07] certificate again. They're so hard and so important.

> *Aaron:* Yes, that whole access isolation thing. It's not only a system to system, but users to systems, and then also how systems talk to AWS. It covers all three different branches of who needs to talk to what.
>
> At the end of the day, it's roles. You apply policies to those roles. It's very easy to describe, but then again, we're just talking about the implementation here with a dozen different teams all being involved and trying to make that one seamless experience for the end user, which internally is the developer [indecipherable 22:45] .

> *Jessica:* Because the 12 or 20 of you are trying to take that complication and the complexity of figuring out what those roles need to be and minimize them onto yourselves so that the developer can just do things right.

> *Aaron:* Exactly. Then we can audit it and then create that similar feedback loop with, "Hey, this is overly broad. You enabled this access but haven't used it in the last however much time. Do you really need it?" Internally, I keep referring to that as have a Clippy pop up, which is [indecipherable 23:15] .

> *Jessica:* [laughs]

> *Aaron:* We have a pretty famous open-source software thing called Repokid, which does this for IAM permissions that monitors all of the permissions that are granted to different instance profiles and finds the ones that aren't used, and then suggest reclaiming those.
>
> Whenever I mentioned Clippy are fine friends and Infosec are like, "You mean Repokid?" It's like, Yeah, yeah, yeah." "OK. Uh-huh. Sure." [indecipherable 23:41] .

> *Jessica:* [laughs] The young ones, they don't remember Clippy.

> *Aaron:* [laughs] The last big project. The third leg of my personal stool is Netflix's regional growth and high availability story. We operate streaming out of three regions today. We can operate in any two of the three...

> *Jessica:* That's AWS regions?

> *Aaron:* Yup. If any region goes...We also endeavor to have all of our changes be regionally...to roll out one region at a time with time in between each step. I don't mean to say that we primarily build our HA functionality because of Amazon breaks a region, although in the rare case that they do, it helps.
>
> Our developers are pushing hundreds of changes a day or thousands if you include configuration changes, so frequently our very short-lived, small outages are self-induced. We can use regional evacuation to route around that bad change while we're still trying to do the fault localization remediation or reversibility exercise to restore service [indecipherable 24:47] .

> *Jessica:* Your regions are not just different regions. They're also different [inaudible 24:53] code?

> *Aaron:* Yeah, usually. Just like we have A/B tests that make it difficult or impossible to know what is the current state of the Netflix software, we also have these original staggering of deploys. We never can say like, "This is the current version of Netflix deployed to the cloud." It's always like, "What is this version if you're in this A/B cell and your traffic is getting routed to this region?"

> *Jessica:* That makes sense. There is no single version of software anymore, not in production.

> *Aaron:* Exactly.

> *Jessica:* If nothing else, somebody's got a client on their browser that hasn't been able to update while...What is your project there?

> *Aaron:* [laughs] Netflix as a business is not only streaming videos, but we also produce a lot of content and content production is worldwide. Wherever you are in the world and you view Netflix, your recommendations for content are made based on both your prior viewing history as well as your local geography. You may not be aware of this...

> *Jessica:* And what they want me to watch.

> *Aaron:* Well, [laughs] it's outside of my area of expertise to [indecipherable 26:04] .

> *Jessica:* [laughs]

> *Aaron:* I will not do that.
>
> [laughter]

> *Aaron:* I certainly have not had enough beer to go into that.

> *Jessica:* It's still early.

> *Aaron:* Right. It's 2:31 is when I'm recording this in the afternoon, not the morning.

> *Jessica:* [indecipherable 26:35] .

> *Aaron:* Yeah. We do a Netflix originals all around the world, though. If you're in South America, Europe, Africa, East Asia, South Asia, you'll be seeing different originals that we did produce locally.
>
> Of course, if you search through it in the search bar of Netflix, you can find all that content, but it may not be presented to you, depending on where you are. The short version is we're producing content all around the world. We're a pretty large productions studio today and have ambitions to be even larger in the future.
>
> How do we support all of that local production and also all of the post work such as visual effects, editing, color grading, audio editing, all this other work? A lot of that work is pretty latency-sensitive in some of those applications. Serving all of those workers computation needs out of our streaming region isn't a great fit.
>
> We're going to have this regional [inaudible 27:23] to support all of these artists throughout the world. Then additionally, there may be at some point in the future data sovereignty issues which drive us to change where our software runs.
>
> That's again outside of my area of expertise from a legal perspective but from a technological perspective, there may be a requirement to either have a copy of our data in a specific region for a specific subset of users or perhaps have an exclusive copy of our data in a particular place for a specific subset of users.
>
> These are the long term potential legal constraints that can drive your engineering decisions. Someone has to be thinking about, "OK, if that were to come down the pipe, what could we do? What should we be doing now from an infrastructure perspective to make that easy?" Some people might think, "Oh, you just add a line to your terraform config and hit run."
>
> Which would be cool if Netflix entered the cloud in the last like 4 years, but we entered the cloud 10 years ago or more. [laughs] Some people might have the idea that we're all very modern in all the things that we do, but in some ways, I like to think of us as having like we're the biggest legacy cloud user that's around. If I search for us-west-2 in our code base, there's over 10 [indecipherable 28:44] .

> *Jessica:* Oh, no.
>
> [laughter]

> *Aaron:* [indecipherable 28:50] add a line to your terraform script and hit go. I wish it [indecipherable 28:55] .
>
> [crosstalk]

> *Aaron:* We have a lot of cool stuff. This accrued a lot of the best efforts of people over those, like I said, about 10 years or something.

> *Jessica:* There you're talking about availability to a completely different audience. I'm guessing you don't price or do cost analysis on the software that you provide to people producing videos in terms of cost per stream?

> *Aaron:* No. Frankly, the cost of those services versus the total costs of production isn't enough to hit my radar, just in terms of scale.
>
> [crosstalk]

> *Jessica:* That makes sense. A few productions get streamed a lot of times.

> *Aaron:* Exactly. Which is why it makes sense for us to run our own CDN because we have very specific problem to solve. That's very different from people who run general CDNs where they aren't sure what the hit rate's going to be, what content to fill, etc.
>
> There's plenty of blog posts out there if you want to look up OpenConnect that is a separate organization, incredible team of people who have really solved that high-read problem.

> *Jessica:* For the streaming.

> *Aaron:* It's my understanding -- again, that's my area of my area of expertise -- that those folks who do ship hardware boxes to ISPs and IXs and stuff like that, saturate NIX like it's nothing. It's pretty cool then to think about "OK, well then what are the constraints that you're working under? What are you optimizing today?"
>
> As part of my capacity management responsibilities or participation, I liaise with the director of capacity planning for the OpenConnect to the CDN side of the world, and she is amazing, but the way that she views the world is entirely different from me.
>
> She know how we're like "OK, spend the money, and we'll come chat at you and we'll deal with it later"? Because they're dealing with shipping hardware to sites, to ISPs that have operators that we don't train or control, their lead times are hugely variable and way out in advance.
>
> Jessica Link, who's the director of capacity planning for that world, she is always thinking about exact capacity needs several quarters in advance. It's just the entirely opposite perspective of capacity planning. When we chat, it's like, "Wait. That's how you do things?"

> *Jessica:* She has to worry.

> *Aaron:* Yes. She has to both worry and care.

> *Jessica:* Oh, yeah. Sometimes when you have to worry, it's hard to see people who don't worry as caring.

> *Aaron:* Thankfully, I don't have that problem or she hasn't let on that she doesn't [indecipherable 31:33] .
>
> [laughter]

> *Jessica:* I guess maybe she's used to talking to people at Netflix.

> *Aaron:* Yeah. Sometimes she does look at me like I am from a different world. Maybe that's something I should start to empathize with because I am, right? It's so amazing to me how the problem constraints really shape that culture that you're talking about.
>
> Our CDN has been solving a relatively stable problem for a very long time. How does that influence their ability to value rate of change, versus say like cost efficiency, versus on like the streaming side of things where most of the code we write is thrown away because of how many A/B tests we're running.

> *Jessica:* Nice.

> *Aaron:* For us, that rate of change thing is by far and away the biggest driver of functionality and design constraint.
>
> Then the third, or I guess fourth world that I haven't really talked about before, is our big data stuff. We do a lot of data analysis, both for decision support on the content purchasing side, as well as operational support, as well as like business analysis for marketing stuff.
>
> That's a huge portion of our cloud footprint is our data analysis stuff. Those folks are operating under very different types of design criteria where the essentials of data analysis have -- at least from my rudimentary outside perspective -- not changed from a huge degree, but run very many different jobs all the time.
>
> It's this interesting layering effect where they have in some ways an even higher change rate than the streaming path does, but in some ways a much lower change rate. The Hadoop cluster itself is relatively stable, for instance, but the jobs running on that cluster are very much in flux with the high [indecipherable 33:28] .

> *Jessica:* You might write a job and run it once.

> *Aaron:* Exactly. A lot of exploratory stuff. Then, how do you do across-system prioritization? We don't do chargebacks because we have budgets, but cost consciousness for a data engineer, what does it even mean for them to have that? If I run a Spark job, I have no idea what this query is going to do, how much it's going to cost.
>
> Do we even want to have someone care about that before they hit run? How do you create a good feedback cycle there that also creates a good data life cycle management and query life cycle management practice? That's a whole another area of fascinating things.
>
> I've talked a lot about cost here, but to me cost isn't just dollars, it's also infrastructure burden. Like how many mutations to your network can you take? A lot of that has to come from the different types of pressure you're putting on the infrastructure, which is usually ancillary related to how much you're spending.
>
> When we create this cost consciousness, it really impacts consciousness. We have had some scaling issues internally where we've thought about do we want to create an impact score that's divorced from dollars? It turns out that they're so highly correlated that it doesn't make sense to break it out as a separate metric.

> *Jessica:* Oh nice. Yeah, dollars are useful for that. They just make a great measure of both value and cost. Well, I don't know, not always great but the best we got.

> *Aaron:* [laughs] Certainly one input. Although internally, we are very data-informed but not data-driven. The difference is we use narratives as a very quick override of a quantitative measure.

> *Jessica:* That's beautiful.

> *Aaron:* A lot of engineers really struggle with it, frankly; even some of the ones that we hire, to make that transition from quantitative analysis to qualitative, strategic, and ultimately, systemic analysis, which is like really hard stuff. Even for people that are pretty high level sometimes, thinking about second-order effects of even like technology choices.
>
> The fact that we choose to parse all of our accounts bills in one sweep, and separate the AWS account itself from the teams that own the systems that run in those accounts, lets us have a unified pool of resource perspectives to our AWS cost.
>
> That technology change impacts our accounting practices, which impacts our ability to then affect culture change around cost consciousness and our feedback cycle.
>
> I'll give you an example. There are other big orgs in the cloud where every team has its own AWS account, so each bill comes in on a per-team basis. That cost consciousness is then localized to the team level so they're doing roll-ups.
>
> Being able to do that portfolio management of cloud-cost growth doesn't really happen because the technology decisions don't support that kind of aggregation and disaggregation of cost.

> *Jessica:* You get local optimization at the team level, but not overall optimization of, "OK, don't worry about this one today. Push on this one instead."

> *Aaron:* Exactly. That's where you want to get to if you really want to pursue global optima, which is frankly what large organizations should be doing.
>
> Another thing that's hugely different for me personally, is I spent about 10 years in start-ups before joining Netflix. Once again, those business and problems-domain trade-offs really impact your approaches. A lot of startups I was working at, an additional $100,000 here and there on AWS's bill would make or break the runway calculations that the CEO is presenting when trying to raise money.

> *Jessica:* Right. You really have to worry about the external appearance and how it affects fundraising at that point.

> *Aaron:* Yeah, so it creates a totally different culture around cost and controls and things like that, above and beyond the simple shift to the cloud of going from CAPEX to OPEX, which I think is the more common narrative.

> *Jessica:* Right. Those two categories have a big cultural effect on enterprises.
>
> Systemic analysis. You mentioned that the engineers sometimes struggle going to the narrative being the primary driver, and the data informing but not overwhelming that. I've noticed that too. We like the mechanical things. We want that linear causality -- if the number says this, then this, but that number says a lot of things.

> *Aaron:* [laughs] That number frequently says as much about the mindset of the person who's creating that numerical analysis as it does about the world itself.

> *Jessica:* Exactly. Be deliberate with your mindset because that's the narrative.

> *Aaron:* Yes. One of the hard things about metrics, especially things that people consider their key metrics, is they get a life of their own with how much people use them to guide their decisions, and then how much they use them to build systems around them.
>
> Then if you find out that maybe that's not the right measure, that can have a huge activation cost to potentially change or revise. If you think that refactoring code is hard, try like refactoring your KPIs for an org.

> *Jessica:* Yeah, that's the whole sociotechnical system.

> *Aaron:* Absolutely. My primary interest is this conversation that happens between the people involved in the technology that we use.

> *Jessica:* That's what actually engages people. It's the humanity of it.

> *Aaron:* Well, if faults are engaging, I am exceptionally engaging.
>
> [laughter]

> *Jessica:* That just might be the intro line for the podcast right there.

> *Aaron:* One thing I do love about our culture is how casual I can be with discussing my faults. In a lot of places, you kind of have to act like even your faults are your strengths and there's like a shame culture. Or even just like, "How dare you show weakness?"
>
> There's an expectation that since Netflix is a very high-performing culture, that we have very low tolerance for deviation in performance.

> *Jessica:* Oh, as if a high-performing culture comes from only high-performing individuals.

> *Aaron:* And as if only high-performing individuals only exhibit high performance.

> *Jessica:* Yes. Whereas the company overall, it comes from the relations between those individuals and their technology. As individuals, it's like all of our behavior and the delta in that.

> *Aaron:* Absolutely. You alluded to a great point, which is that high-performing teams are often made of individuals who are not in the upper decile of overall individual performance.

> *Jessica:* Right.

> *Aaron:* The high-performance teams have great cohesion, etc. Psychological safety, communication flows, all of these great things. I think that even within high-performing teams, the people that you can identify as maybe being force multipliers for others, those folks as well also have variation to their performance. It's fine to just say, "You know what? On this one, I screwed the pooch."
>
> I think that creates a much healthier appetite for risk, both emotional risk as well as investment risk internally, if you're willing to say, "Well, got that one wrong." There's two different ways of that, right. There's one, I made a good decision based on a faulty assumption of how the world would work. Two, I made a bad decision based on a bad model of how the world is going to work.

> *Jessica:* In the future, in these circumstances, I will make a different decision.

> *Aaron:* Or I'm not the one to make that decision. That's part of the comfort with admitting your personal faults. Faults aren't just like moments and times, but they can also be like shortcomings in aptitude or proclivities.
>
> As an example, I'm like a degenerate pioneer of town-planning tasks. It's a very weird niche to fill. I really like to pave the ground for things that involve like making things very routinized for everybody else. With the utilization KPI sort of work that we're doing, I helped instigate that project and made the case for it among a bunch of engineers, data scientists, and some of the suits.
>
> Now one of my colleagues, Niosha Behnam and Bhargavi...I don't know her last name, actually. They are actually now running with the project, and leading it and owning it, and making it amazing and actually happen. With access isolation, I helped get that project started, but as I'm going off to parental leave, I'm going to be handing that on to its next owner.
>
> Part of that has to do with my own level of ability to maintain interest in something. Once the path to success is very clear, I have a real hard time sticking to that same thing because I'm really fascinated in the discovery phase and going from an amorphous cloud of ideas to, OK, here's what the plan actually is.
>
> Once we have that plan, I'm like, "OK, this is boring to me now." Which means [indecipherable 43:31] .

> *Jessica:* I understand this, therefore it's boring.

> *Aaron:* Yes. I am not a high-performing team by any means. I can do nothing by myself. There has to be people who are excellent at, given a specific direction, make that goal happen. Some folks who are excellent at that are very hard at, "Oh, this is a big ambiguous problem. I don't know exactly what you mean." Right?
>
> You need both different sets of skills to come together to create a high-performing org. But I'm able to just say, "You know what? I'm crap on follow-through. Sorry, I didn't get to this email."
>
> [laughter]

> *Aaron:* You might think...
>
> [crosstalk]

> *Jessica:* If it's urgent, email someone else.

> *Aaron:* Yeah, exactly. Well, if it's urgent, I probably won't procrastinate and then forget about it.
>
> You might think Netflix is high performing, someone who does that sort of thing is going to get fired. At least in the last five years almost, that hasn't been the case because I'm upfront about it, right?
>
> I set expectations correctly. I own my mistakes. I find compensatory strategies or surround myself with people of complementary skills. That's a sort of meta awareness of self I think that really leads to success. I don't know how we got on this topic.

> *Jessica:* But it's wonderful, and it gets back to the metrics thing. You talked about how the metrics that you choose, your culture gets built around them. If you measure individual performance, if it's all about me, then I'm going to choose different actions than if it's about my team or if it's about the whole organization.

> *Aaron:* I have a question for you.

> *Jessica:* Oh, goody.

> *Aaron:* What do you mean measure individual performance?

> *Jessica:* Ugh.

> *Aaron:* [laughs]

> *Jessica:* Annual performance reviews or sometimes it's more subtle. Sometimes it's just like the person everybody knows, knows things, and the person that you're not allowed to proceed if you don't have that person in the meeting.

> *Aaron:* One of my favorite talks that I cannot find was from you that you gave at some all-local meet-up thing where the live stream of this local meet-up was recorded. You talked about the purple person. Do you remember the [indecipherable 45:44] ?

> *Jessica:* Oh yeah, the purple person shows up in the camera to talk to.

> *Aaron:* Oh, OK. Do you want to give a brief intro to people who may not have heard it before?

> *Jessica:* Oh, a purple developer. A purple developer is in charge of a system, and they understand it really well. They probably wrote it because they have a really good mental model of how the system works. But then purple developer, maybe they're getting tired of it or we need too many changes, so here come blue and green.
>
> They've been assigned to this project probably part time, and they know kind of generally what it does but not the underpinnings or how everything fits together. They're trying to do stuff, but they don't have this mental model. Meanwhile, purple is churning through tickets because his performance review -- or her, but usually his -- performance review depends on how many tickets they close.
>
> Purple can change that system fast enough that blue and green will never get their heads around it, will never be able to form an accurate mental model because it's changing too fast. Purple thinks blue and green are stupid. That's when it gets back to your post about there is no sufficiently smart engineer.

> *Aaron:* Yeah. Before we get into this [indecipherable 47:06] smart engineer. This purple person, when you think of the ability to observe performance, one of the things that is a common question in the time of COVID is how are managers going to know about the performance of their engineers if they're all remote?
>
> Which is like the most ludicrous question to me ever because how did you ever try to really get a gauge on individual performance before? If it required the subtle bias cues you get in person, I would really question your ability to do a good performance appraisal.
>
> I will say that these sorts of semi-antisocial or bad systems that enable purple people to hold back the green and blue people are really going to be exposed and amplified when you are remote.
>
> A truly high-performing initial creator of a system would be leaning into how they socialize their plans, how they reduce their lottery factor, how they can transition mental models from their initial creation onto the next developer. I believe...

> *Jessica:* Which is incredibly hard.

> *Aaron:* Oh, the most important task of large-scale software engineering is the cohesiveness of the conceptual model among the participants that operate, design, and eventually inherit it.

> *Jessica:* And the dialectics, so in the code and the minds of the people who work on it.

> *Aaron:* Exactly. That to me is the real measure of performance. If someone's not producing any output, sure, you can totally see that. I've seen that. Somebody who's producing a bunch of awful output, you can also notice that.
>
> But can you really get at the difference between somebody who's really good and somebody who's really good plus 10 percent? No, I think that's well within the margin of error of observability in terms of external awareness of some individual engineer's performance.

> *Jessica:* Yeah, your bias is way bigger than that 10 percent.

> *Aaron:* Exactly, so if it's bigger than 10 percent, is it bigger than 50 percent? No, maybe not. Where exactly is the measure? I don't think anybody really knows. It probably depends on how well the different people in the team work together, the level of feedback culture, how in touch the manager is, etc.
>
> At the end of the day, I'm not a big believer in performance. I really think it should be more of a pass/fail thing for the current role than like a sliding scale.

> *Jessica:* Or fit/not fit.

> *Aaron:* Exactly. That's an excellent point.

> *Jessica:* Because there's so many people who maybe are really good at quantitative data interpretation and analysis, and just need the task defined well enough that they can stick with the quantitative and not have to figure out the narrative, and they can go work for, I don't know, stock traders.

> *Aaron:* Exactly. I have been in roles in the past where I have really failed because it was an awful fit for me, because the requirement for those roles to be successful required skills that I do not have and do not care to [indecipherable 50:19] .

> *Jessica:* Like follow-through.

> *Aaron:* Exactly.

> *Jessica:* We are running up on time here. Is there anything else that you just really wanted to get into the heads of people who listened to Arrested DevOps?

> *Aaron:* I would like to talk quite briefly, if we could, about that myth of the sufficiently smart engineer.

> *Jessica:* Sweet, I love that post.

> *Aaron:* It arose from a conversation, actually a panel conversation that you and I had at REdeploy two or three years ago, where someone had asked if there's one thing that you could tell people, what would it be. This was what I'd said, and I was inspired with something you'd said earlier in the panel. I should give you more credit about that.
>
> This comes down to the fact that whenever something goes wrong, we tend to imagine ourselves or somebody else who's just a little bit smarter or had a higher predictive ability to foresee that that thing would go wrong, and would have done whatever work would have been required to avoid that error.
>
> It could be something as simple as like if Aaron makes the error, I know Jessica never would have made that error. There's always this comparison, either over-time or cross-individual, where we can use this example that this person would have had that fault.

> *Jessica:* The counterfactual.

> *Aaron:* Exactly, the counterfactual.
>
> [crosstalk]

> *Jessica:* It is physically possible that I could have done something differently.

> *Aaron:* Precisely. That is just one of the most dehumanizing aspects of engineering culture, and culture in general, as we beat ourselves up about it, we beat each other up about it. We hold each other to this variation-free standard that is completely absurd.
>
> Not only do we do this culturally to each other, we then build systems that assume flawless behavior or behavior without variation. We take this conceit that we have and we bake it into our assumptions of how the world's going to work.
>
> As a result, we end up under-investing in operability. That means like manual intervention at the time while something is running. Instead, we over-invest in preventing errors. It's part of this more generalized thing of invest in recovery, not prevention.

> *Jessica:* Right, because in the end, maybe you could have looked at that dashboard, but why would you?

> *Aaron:* That's right.

> *Jessica:* What we needed was not for you to look at every dashboard every minute. We needed somebody to say, "Hey, how about that dashboard today?"
>
> [laughter]

> *Jessica:* Maybe just today, maybe it matters.

> *Aaron:* Exactly.

> *Jessica:* That's what we do for each other. Aaron, thank you so much.

> *Aaron:* Thank you so much. This has really been great. Sorry if I ramble too much, but if anybody does want to...

> *Jessica:* Oh, it's fabulous.

> *Aaron:* ...reach out to me to continue this rambling, or yell at me on Twitter, or anything like that, I'm always interested in having conversations about this kind of topic.

> *Jessica:* What is your Twitter?

> *Aaron:* It's my full name, so you probably want to look at the show notes to get that [indecipherable 53:31] .

> *Jessica:* [laughs] You can look at the show notes at [arresteddevops.com/systemicanalysis](http://arresteddevops.com/systemicanalysis). Hopefully that's not used because I just made it up, systemic analysis, and be glad I didn't try to make you type dialectic.
>
> [laughter]

> *Aaron:* Thank you so much, Jessica. This has been great.

> *Jessica:* Thank you so much. I'm Jessica Kerr, @jessitron on Twitter. This is Arrested DevOps, and remember...
>
> [background music]

> *Aaron:* There's always DevOps in the banana stand.
>
> [music]
