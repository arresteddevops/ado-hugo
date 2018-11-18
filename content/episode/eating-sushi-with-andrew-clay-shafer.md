+++
title = "eating sushi with andrew clay shafer"
Description = "Matt and Bridget sit down with Andrew Clay Shafer (finally!) at DevOpsDays Minneapolis to discuss his thoughts on what's going on with the DevOps world since 2009, as well as his opinions on podcasts having episode numbers. Sadly, no sushi was actually consumed."
Date = 2015-07-17T22:28:34-05:00
PublishDate = 2015-07-17T22:28:34-05:00
podcast_file = "arrested-devops-podcast-episode039.mp3"
episode_image = "/episode/img/eating-sushi-with-andrew-clay-shafer.png"
episode_banner = "/episode/img/eating-sushi-with-andrew-clay-shafer-banner.png"
guests = ["ashafer",] # The names of your guests, based on the filename without extension.
sponsors = ["pagerduty","10thmagnitude",]
episode = "39"
images = ["/img/social/fb/eating-sushi-with-andrew-clay-shafer.png"]
#hosts = [] # The names of your hosts, based on the filename without extension.
aliases = ["/39",]
explicit = "yes" # values are "yes" or "no"
hosts = ["mstratton", "bkromhout"]

+++
[Transcript](http://transcripts.castingwords.com/zvzu/211640.html)

**Andrew Clay Shafer** ([@littleidea](http://twitter.com/littleidea)).

Coming to you live from [DevOpsDays Minneapolis](http://www.devopsdays.org/events/2015-minneapolis/), Matt and Bridget sit down with Andrew Clay Shafer in front of a live audience to talk about the growth of DevOps, explain some commonly heard but not always understood terms, and more (after a brief detour on why episode numbers on podcasts are obnoxious, and why this episode is titled "Eating Sushi with Andrew Clay Shafer").

Don't know who Andrew is? He suggests you [Google him](https://www.google.com/search?q=andrew+clay+shafer&oq=andrew+clay+shafer&aqs=chrome..69i57j0l2j69i61j0l2.2642j0j1&sourceid=chrome&es_sm=91&ie=UTF-8), but then goes on to give a little bit of his background: he's been involved in software development and technology for almost 20 years. After rooming with [Luke Kanies](http://twitter.com/puppetmasterd), founder of [Puppet Labs](http://puppetlabs.com) in college, Andrew got interested in operations and system administration.

[O'Reilly's Velocity Conference](http://velocityconf.com) was also influential in Andrew's growth, and Andrew reiminisces about his presentation on [Agile Infrastructure](http://www.slideshare.net/littleidea/agile-infrastructure-velocity-09) in 2009. John Willis speaks up from the audience, and strongly suggests going to look at the slides.

Matt takes a moment to explain how Arrested DevOps started: "I started listening to John and Damon on [DevOps Cafe](http://devopscafe.org/) and understood about 5% of what they were talking about... There are these things that we, as part of this community, tend to know, and what we try to do with this show is break it down for the people who don't have the tenacity or stubbornness that I did."

Along that vein, Matt asks Andrew to expand upon the "wall of confusion" idea that was referenced in his 2009 talk, and has become a commonly-used (but not always understood) term in DevOps lingo.

"It's a jargony way to talk about the different incentives that exist between developers and operations," says Andrew. "There's a transition that happened as software became service-oriented, versus shipped on CDs, where the servers now become this critical part of the value chain, and if you deemphasize the system administration and operation of those servers, then you don't actually have software. In the middle of these two worlds, where in one, systems administrators were for keeping the printers and the mail server up, to where they're a critical part of the value chain in the new world, there are broken IT practices that don't make sense when you're trying to manage a service. It means recognizing that the best way to optimize a system isn't to just throw random stuff onto production servers, and then make it ops problem, but to recognize that the infrastructure itself has become an application, and that you can manage these things as an application."

Andrew points out that as much as he enjoys the attention (and who wouldn't?), he was simply in the right place at the right time, and the right people listened to him. He connected dots to take advantage of tools and practices that were already used to manage software process, and bring that into the infrastructure and operations works.

Bridget asks, "You mentioned Agile, and you mentioned Scrum. I've heard you say that Scrum is a disease. Can you give us your thoughts on where that sort of stuff is going?"

"My *personal* opinion is that Scrum's impact on software development is net negative," Andrew says. "I think it's particularly bad when people try to adopt it in operations. It's really susceptible to problems when you have any interrupt-driven work whatsoever." He suggests pursuing kanban and chatops, making work explicit and visible -- tools that allow both you and your management to understand the full context and value of the situation.

The conversation transitions into talking about how to make actual changes to your operations and infrastructure teams, rather than always jumping through hoops to make the necessary changes to keep the pages up or the apps running smoothly. The answer *isn't* to simply communicate how difficult it is to manage a system -- upper management won't understand the pain, and therefore won't listen to the complaints. You have to involve the rest of the team so that they understand what you're going through first-hand. You get empathy from suffering. This all plays back to [Conway's Law](https://en.wikipedia.org/wiki/Conway%27s_law), as Andrew points out: "If you believe Conway's Law is true (as I do), then you understand that your org structure (who communicaties with whom, who reports to whom, etc.) determines the outcome of any decision."

Bridget brings up the point that this is the essence of dogfooding: requiring not only your engineers to be in the code, but your employees to be using the products that you're creating, so that there's a general understanding of why things work the way that they do, and a buyin for the necessary changes.

Bridget asks Andrew to expand more on what he thinks we are (and should be) optimizing for, which he touched on briefly during his talk at [DevOpsDays](http://www.devopsdays.org/events/2015-minneapolis/proposals/not%20all%20devops%20luminaries/).

Andrew counters that in order to do that properly, we need to first frame the context, which is a problem that plauges DevOps, Agile, and many other systems with which people are trying to transform their companies -- you can't do something prescriptive until you have enough context to understand where you're starting from. For example, the diet and exercise program you'd give to someone who's relatively healthy and active is very different than someone with a different set of circumstances. By the same token, you can't prescribe a solution to an infrastructure problem without first investigating the roots causes and understanding what the foundation is.

However, if you model the world as everything is an agent trying to maximize some function, then the basic premise of your decisions is cause and effect. "Looking at the way people behave, and how this plays out within organizations, you might have very different patterns of interactions and patterns of health." Andrew continues, "Therefore, what you'll tell people do is very different from context to context."

Despite all of the different scenarios, Andrew argues that there are three things you can always do:

* Understand the incentives that people are motivated by
* Align the incentives with behaviors
* Radiate information to help people make different choices

Wondering what the Nash equilibrium and Pareto efficiency game theories are? Here are a few links:

* [Nash equilibrium: Wikipedia](https://en.wikipedia.org/wiki/Nash_equilibrium)
* [Pareto efficiency: Wikipedia](https://en.wikipedia.org/wiki/Pareto_efficiency)
* Andrew's slides on [Leading a Learning Organization](https://prezi.com/bh84olgmbcqm/leading-a-learning-organization-stretch/)
