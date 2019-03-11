+++
title = "Dr. BOFH, or How I Learned To Stop Worrying and Love the DevOps"
Description = "In this episode, 'reformed' Bastard Operators From Hell Yvo van Doorn, Chris Read, and Kevin Hubbard discuss how the industry and their jobs have changed over time, especially with the advent of DevOps."
Date = 2015-05-14T21:58:42-05:00
PublishDate = 2015-05-14T21:58:42-05:00
podcast_file = "arrested-devops-podcast-episode036.mp3"
episode_image = "/episode/img/reformed-bofh.png"
episode_banner = "/episode/img/reformed-bofh-banner.png"
guests = ["yvandoorn","cread","khubbard",] # The names of your guests, based on the filename without extension.
sponsors = ["pagerduty","10thmagnitude",]
episode = "36"
images = ["/img/social/fb/reformed-bofh.png"]
hosts = ["mstratton", "bkromhout"] # The names of your hosts, based on the filename without extension.
aliases = ["/36",]
explicit = "yes" # values are "yes" or "no"
youtube = "zMd8H7lDBcU"

+++
[Chris Read](https://twitter.com/cread), [Kevin Hubbard](https://twitter.com/kj_hubbard), and [Yvo van Doorn](https://twitter.com/yvov) are reformed BOFH's (Basterd Operator's From Hell).

Chris is back on the podcast again, this time talking about his expereince as a SysAdmin in past lives.

Kevin is currently the DevOps Engineer for BCycle at [Trek Bicycle Corporation](), and was a SysAdmin for 15+ years.

Yvo previously worked at classmates.com and McGraw Hill Corporation as a SysAdmin, and is now at Chef Software.

Before we get started, you'll need to understand the origin story of [BOFH](http://bofh.bjash.com/). There were stories posted on Usenet back in the 90's, supposedly authored by a computer operator named Simon whose sole purpose was to terrorize the users of his systems. The phrase "How great would my job be if it weren't for the f***ing users!" resonated with many SysAdmins (and still does!).

Matt starts the episode off asking what it was like as everyone was starting out in this field.

Kevin: To me, it was sort of operating in a scarcity model. You had limited resources, and it seemed like anytime there was a new ask for an application, I immediately went to 'How am I going to ask for the capacity to run this?' and I would just get so frustrated. It boiled down to 'How are we going to support this?' That was my standard line when someone would bring up something new, and I wish I had trophies to give those people for all of their good ideas, because we just couldn't get it off the ground with the resources that we had. It wasn't a fun way to operate, but it was the most realistic view.

Chris: When in high school and university I was the System Administrator for the school systems. It was astounding seeing what damage to the system can be done -- how people trying to do something could affect shared resources, and the after-effects of that. Most of the time it wasn't malicious; it was due to ignorance, but it built up this mental attitude of 'All users are just there to break things. We need to constrain them as much as possible, because when things break, we're the ones that get shouted at.'

Matt: There was a belief that devs are stupid! All they're going to do is break things, because they don't care about the systems like a SysAdmin does, because they're _ours_.

Yvo: Our devs were incentivized not to care because they were paid based on the amount of code they shipped. I've had some nightmare evenings trying to fix all of the problems.

Bridget then brought the conversation back around to incentives -- are there situations when the incentives are diametrically opposed (or at least not aligend well) between the SysAdmins and the developers?

Matt brings up the point that developers are incentivized to build features, while SysAdmins are incentivized to bring stability, which at its most basic level is maintained by things not changing.

The viewpoint of 'developers don't know what they're asking for' is also a problem, Kevin reminds us. SysAdmins will often call the developer and explain why things work the way that they do, but won't take the time to listen to the actual problem.

In reality, there's a perception of other people touching "our stuff" and things will go wrong, but let's face it: "there are all sorts of things that can go wrong that are often not a specific person's action," says Bridget.

Given that all of us here are supposedly _reformed_ BOFH's here, let's chat about how things have changed, and what that process was.

Chris: I finally realized that my interactions with the developers were better if I went to them without the 'clue stick' and simply spoke to them, asking them if they realized the impact of their code. It finally clicked for me when I had to work together with the client-side SysAdmins as well as the developers at Thoughtworks. Our whole purpose was to get code written by two different development teams out into production, and it was only through being an advocate for both teams that I was able to build up a relationship with both teams and understand the value.

"It seems like DevOps has formalized the relationship between SysAdmins and developers," says Kevin. "It seems like a much more natural, iterative process working with devs." Because we're working side by side, there's much less going back and forth with having to figure out the direction and purpose behind projects, and simply getting to collaborate.

The "handing down stone tablets" philosophy not only no longer works... it has never worked!

In Yvo's case, the change started to happen when the project management team was dissolved. Suddenly, a SysAdmin had to be a part of the development meetings, because there was no longer an intermediary passing information from one team to another. It immediately became more collaborative, and there was visibility into what was happening early on rather than being notified after everything was finished.

We've shifted from a mentality of 'protection' -- teaching our "PFY's" (pimply-faced youths) to protect their systems against the evil developers -- to giving history lessons about how we got to the stage that we're at now where we need to talk to all of the involved parties, and as Chris said, "having everyone focused on the goals, trying to see things from each other's angles rather than antagonistcally." This is how we, as a group, move forward.

"It takes a deliberate decision to shift," Bridget observes. We have to be dedicated to teaching our PFY's this new, collaborative way so that in the future, fewer people will start out with this BOFH mentality.

From there, we shift into _How can we do better?_

Matt asks, "We used to be this way -- we're better now -- but what are some of the ways that we can still improve?"

"I want to be able to maintain this new flexibility that comes with DevOps, but I feel like there's some decision-making that needs to be made as far as tools and standards go," says Kevin. It's a matter of balancing the old playbook of limited resources and mixing in the new cohesion and collaboration efforts.

We've done a great job of bringing in the greater teams of operations and developers, but most companies still have the one or two lone SysAdmins who are struggling on a daily basis to keep their heads above water. Yvo cautions that we need to bring them into the circle as well.

"If we can make their lives easier, they're going to eventually go to another shop with the perception that being alone and supporting developers is not a bad thing, but right now they really don't like life."

Bridget's money-back guarantee: "If you're less BOFH-y, I promise you'll be happier, or else we'll pay for your therapy."


## Checkouts
### Chris
* [Liz Keogh - Perverse Incentives](http://www.infoq.com/presentations/Learning-and-Perverse-Incentives)
* [GOTO Conference Chicago 2015](https://gotocon.com/chicago-2015)

    [Closing Keynote by Anita Sengupta](https://www.youtube.com/watch?v=BT6nwP1CofU) from NASA JPL was awesome

    [James Lewis - "How I finally stopped worrying and learnt to love Conway’s Law"](https://www.youtube.com/watch?v=l1tyfb5we7I)

* [DRW is hiring!](http://drw.com/careers/)

### Kevin
* [Stache](http://www.trekbikes.com/us/en_US/bikes/mountain-bikes/trail-mountain-bikes/stache/stache-9-8/p/2025000-2017/) - new Trek mountain bike

### Yvo
* [Hop Venom Double IPA - Boneyard](http://www.beeradvocate.com/beer/profile/23066/72750/)</a

### Bridget
* [Organic heirloom seeds](http://www.seedsavers.org)
* [_Common Ground and Coordination in Joint Activity_](http://csel.eng.ohio-state.edu/woods/distributed/CG%20final.pdf) by David Woods et al

### Matt
* [_Effective DevOps_](http://shop.oreilly.com/product/0636920039846.do) by Jennifer Davis and Ryn Daniels
* [asciinema](https://asciinema.org/)
