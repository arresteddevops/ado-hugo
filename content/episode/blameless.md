+++
title = "Incidents and Accidents: Examining Failure Without Blame"
Description = "Dave Zwieback, VP of Engineering at Next Big Sound and Mike Rembetsy, VP of Technical Operations at Etsy discuss learning from the unexpected and examining failure without blame. With practical tips about technical tools and philosophical insights into the human factors and cognitive biases in play, these industry experts offer useful guidance for the thorny questions around the topic of failure."
Date = 2015-01-15T20:43:37-05:00
PublishDate = 2015-01-15T20:43:37-05:00
podcast_file = "arrested-devops-podcast-episode028.mp3"
episode_image = "/episode/img/blameless.png"
episode_banner = "/episode/img/blameless-banner.png"
guests = ["dzwieback","mrembetsy",] # The names of your guests, based on the filename without extension.
sponsors = ["pagerduty","redgate","10thmagnitude",]
episode = "28"
images = ["/img/social/fb/blameless.png"]
hosts = ["mstratton", "thess", "bkromhout"] # The names of your hosts, based on the filename without extension.
aliases = ["/28",]
explicit = "yes" # values are "yes" or "no"
youtube = "mD6zBfAvC-A"

+++
Dave is at Next Big Sound, which does analytics for creative industries, and he’s seen a few orgs handle failure well, and a lot of organizations handle it poorly. He got interested in blameless postmortems and human factors in discussions with John Allspaw of Etsy, and Allspaw influenced him to read the work of David Wood and Sidney Dekker on human factors. He is writing a book for O’Reilly called <a href="http://shop.oreilly.com/product/0636920033981.do">Being Blameless</a>.

MCR works at Etsy now, but has spent a lot of time consulting at various firms where he’s seen failure handled with blame. He points out what Rt. Lieutenant Colonel Scott Snook said in <a href="http://www.amazon.com/Friendly-Fire-Accidental-Shootdown-Northern/dp/0691095183">Friendly Fire</a>, a book about when two US helicopters were accidentally shot down, that failure is part of complex systems.

MCR: “I work at Etsy, and that’s what we do - we examine failure as a learning opportunity.”

Dave is running his next workshop on <a href="http://ti.to/mindweather/awesome-postmortems-nyc-2015">Awesome Postmortems</a> in NYC on February 12th, in which

Dave: “Sidney Dekker’s <a href="http://www.amazon.com/Field-Guide-Understanding-human-Error/dp/147243904X">Field Guide to Understanding Human Error</a> is probably the most important book for people like us, meaning people that are in the IT world - it’s very accessible and gives lots of examples from fields outside of IT, but they’ve very relevant to what we do.”

MCR: “Failure is gonna happen. It’s not a matter of <i>if</i> something is going to fail, it’s a matter of <i>when</i> it is going to fail.”

MCR mentions the different categories of failures - those that “fail closed”, that are easy to detect, like disk filling up, and “fail open” - the surprises. He mentions some of the techniques Etsy uses - an IRC warroom, Vidyo video chatting, to resolve an immediate issue. After the immediate issue is solved, the learning begins.

MCR: “We celebrate failure as much as we celebrate success here. [...] The three-armed sweater is given to the person who most spectacularly impacted the website in the year.”

On the topic of why to do a blameless postmortem, MCR points out that it’s for learning, and there are both technical and human factors. Dave points out that blaming a person short-circuits the learning. Claiming that a person is the cause of the outage feels like a good story, but it’s not true.

Dave discusses root cause and mentions Allspaw’s excellent blog and <a href="http://www.kitchensoap.com/2012/02/10/each-necessary-but-only-jointly-sufficient/">a specific post about there being no such thing as a root cause</a>, and Dave disagrees. He believes that outages are caused by change, and the systems with which we work are fundamentally changeable. “The impermanence of systems is the reason that they both function and malfunction.” Mike counters by saying, “Is there really a root cause for something that failed? If a hard drive dies, it’s the same hard drive. It hasn’t changed.” They both agree that it’s a philosophical rabbit hole.

MCR notes that as Etsy grows, they’ve found that user-impacting, service-degrading issues are when they do postmortems, and even if not user-impacting, if they can learn from a failure it’s worth doing one. Dave says, “The more we learn about the complex systems within which we work, the better we’re able to operate them.”

Within a week or two, according to Dave, is common practice of a time in which do the postmortem. MCR mentions that it’s important to write down the timeline almost immediately, definitely within a day or two, but doing it while someone’s amygdala is still triggered (and they are upset) is too soon. Dave points out that the facilitator of a postmortem sets the tone, including reminding people of hindsight bias, and at Next Big Sound they use a specific framework document which Dave will share. He also mentions defusing stress with empathy and humor.

On the topic of evaluating anything you do, MCR mentions that Etsy created <a href="http://github.com/etsy/morgue">Morgue</a> because any department across Etsy can apply these techniques to learn. Dave points out they do retrospectives as well as prospective review at Next Big Sound. MCR says Etsy does both an architectural review and an operability review ahead of time. Dave mentions that answers in prospective reviews can be biased in a positive way, whereas in a “premortem” we imagine things going badly, and try to determine what could lead to that: in essence, harnessing hindsight bias to work for us.

Bridget forgets what decade it is and claims to have seen a presentation at devopsdays 2003. That would have been a nifty trick, since the first one was in 2009. :)
<h2>Check Outs</h2>
<b>Dave: </b>
<ul>
	<li><a href="http://www.amazon.com/Field-Guide-Understanding-human-Error/dp/147243904X">Field Guide to Understanding Human Error, Sidney Dekker</a> - new edition just came out Dec 28th, 2014!</li>
</ul>
<b>Mike: </b>
<ul>
	<li><a href="http://www.bsr.org/en/our-network/member-list">http://www.bsr.org/en/our-network/member-list</a></li>
	<li><a href="http://solutions.3m.com/wps/portal/3M/en_US/NA-DataCenters/DataCenters/Solutions/EfficiencySustainability/ImmersionCooling/">http://solutions.3m.com/wps/portal/3M/en_US/NA-DataCenters/DataCenters/Solutions/EfficiencySustainability/ImmersionCooling/</a></li>
	<li><a href="http://github.com/etsy/morgue">Etsy's postmortem tool Morgue</a></li>
</ul>
<b>Bridget: </b>
<ul>
	<li>Did a lot of reading last week! Beside the aforementioned Dekker book, I read <a href="http://shop.oreilly.com/product/0636920000136.do">Web Operations</a> (edited by John Allspaw and Jesse Robbins), Jon Cowie’s <a href="http://shop.oreilly.com/product/0636920032984.do">Customizing Chef</a>, and the first three chapters of J<a href="http://shop.oreilly.com/product/0636920035794.do">ason Dixon’s Graphite book</a>. All good stuff.</li>
	<li>The Boundary Waters Canoe Area is great in the winter too: I like Gunflint Lodge: <a href="http://www.gunflint.com/">http://www.gunflint.com/</a></li>
</ul>
<b>Trevor: </b>
<ul>
	<li>I was on vacation and delightfully disconnected. It’s been pretty awesome. Got a new Kindle and have been reading Game of Thrones before Matt accidentally (though at this point it’s my fault) spoils something.</li>
	<li>Set up kegbot at our new office, will be doing it’s grand opening later today :) Metrics about office beer / root beer consumption to come!</li>
</ul>
<b>Matt: </b>
<ul>
	<li>Been on vacation, which is great. Doing the Dadops thing although I was sick for most of it, which was not delightful. However, I did see Big Hero 6, and Trevor was right about that.</li>
	<li>Book I’ve been listening to on audiobook is <i>The Challenger Sale</i> by Matthew Dixon and Brent Adamson <a href="http://www.amazon.com/The-Challenger-Sale-Customer-Conversation/dp/1591844355">http://www.amazon.com/The-Challenger-Sale-Customer-Conversation/dp/1591844355</a></li>
</ul>
