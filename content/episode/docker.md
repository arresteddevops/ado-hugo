+++
title = "Docker! Docker! Docker!"
Description = "James Turnbull has traveled the world speaking about Docker, and now he's here to tell ADO all about it. The tech, the company, and the community: James has opinions and was more than willing to share them!"
Date = 2015-02-26T20:52:19-05:00
PublishDate = 2015-02-26T20:52:19-05:00
podcast_file = "arrested-devops-podcast-episode031.mp3"
episode_image = "/episode/img/docker.png"
episode_banner = "/episode/img/docker-banner.png"
guests = ["jturnbull",] # The names of your guests, based on the filename without extension.
sponsors = ["victrops","datadog","10thmagnitude",]
episode = "31"
images = ["/img/social/fb/docker.png"]
hosts = ["mstratton", "bkromhout"] # The names of your hosts, based on the filename without extension.
aliases = ["/31",]
explicit = "yes" # values are "yes" or "no"
youtube = "2AqE6KMCAK4"

+++
James Turnbull describes Docker as “a solution that is built by people to be usable by people, as opposed to some of the previous containerized solutions which were built by engineers to be usable by a very small subset of other engineers”.

When you might want to fly less… “when you start to recognize the airport lounge staff and the flight attendants on the New York-San Francisco route and they start to recognize you.”

James wrote The Docker Book to allow people of varying skill levels to quickly understand how to use Docker and what the practical applications could be for them. It’s intended to be a practical how-to guide.

At Kickstarter, developers have a dockerized replica of production on their laptops.

Matt asks if Docker can be only used in completely new deployments designed for Docker from the ground up. James points out that if you have existing infrastructure tools, it’s simple to create Dockerfiles from them.

The night before 1.0 launched at the first Docker conference in mid-2014, James removed all references to “don’t use this in production” from docker.com.

James mentions that Fig (soon to be renamed to Compose) helps with modeling multi-tier architectures locally.

James says, “People kinda forget the past and go, “oh my god Docker’s a pain in the ass to use”, and I’m like “compared to what, exactly? Compared to your previous build, or compared to you shipping around 10 ISO files and running Vagrant and 20 VMs on your local machine?”

He continues, “It wasn’t that long ago that the dark ages were real. I’m not suggesting that Docker’s a panacea, but it’s certainly a step in the right direction.”

James points out that something like Elasticsearch does well in Docker, since “it’s a bit of a fiddly thing to build, with the right version of the JVM, right version of Elasticsearch, prepping all the data, etc”.

James highlights continuous integration as a “sensational combination” with Docker.

On the controversy, James points out there will always be hype and people claiming “this is a revolutionary technology that will cure world hunger”. He says, “I’m fond of saying that Docker is a powerful tool to help you in your development life cycle [...] not every workload in your data center is well-suited to Docker.” James doesn’t make technical architecture decisions based on the writing of tech journalists or blog posts, but rather by testing and evaluating the relative merits of a given solution.

In the case of Graphite, James would run carbon-relay and carbon-cache inside Docker containers, but he’d point them at a physical machine with SSDs to actually write the whisper files.

Matt read a <a href="http://iops.io/blog/docker-hype/" target="_blank">blog post</a> and <a href="http://www.reddit.com/r/sysadmin/comments/2v4fqe/docker_is_fundamentally_flawed_useless_hype/" target="_blank">reactions on reddit</a> and wanted to see what James thought of the concerns around security and operability. James points out that empathy for developers is something sysadmins need to cultivate, because you don’t manage infrastructure for infrastructure’s sake.

James points out that the main reason developers ship code that doesn’t work in production is that they have no fucking idea what production looks like because there’s this grumpy asshole that manages production and they’re terrified to go ask them a question. Bridget says that as such a former grumpy asshole, she’s much happier when the devs aren’t afraid to talk to her.

James mentions that Docker containers are not virtual machines and should not be used to separate security concerns, and you should secure the host the containers are running on.

Matt: “I’m not suggesting that this [security concerns] is why DOCKER BAD…” Bridget: “Race conditions with devicemapper is why DOCKER BAD.”

James: “[PCI/DSS] is a low bar. If you followed simply the regulations for the compliance stuff that related to PCI/DSS, you would be running a massively insecure system.”

James points out that “owning” the standard gives one access to the marketing around an ecosystem. He also thinks that even if Rocket is a better technical solution, Docker has more traction.

Bridget: “So when I feel ranty about Docker and devicemapper, I should submit some pull requests.” James: “You should talk to Michael Crosby... Michael Crosby is currently in San Francisco somewhere going <em>you motherfucker</em>.”

James sees Amazon and Microsoft’s embracing of Docker as a great driver of revenue towards these cloud providers, if it gets developer code to production faster. They aren’t following hype; there are transparently obvious business reasons to do it.

In terms of skating to where the puck is going to be, James suggests looking at orchestration, software-defined networking, software-defined data centers - people building that sort of thing with Docker components. Docker Compose, Docker Swarm, people moving up the stack to manage different levels of abstraction.

James: “I challenge you to find a LAMP stack site where 80-90% of the configuration files aren’t identical - our secret knowledge of what to tweak isn’t as valuable as we think it is.”
<h2>Check outs</h2>
<h3>James</h3>
<ul>
	<li>Jason Dixon’s <a href="http://shop.oreilly.com/product/0636920035794.do" target="_blank"><em>Monitoring with Graphite</em> book</a></li>
	<li><a href="http://artofmonitoring.com/" target="_blank"><em>The Art of Monitoring</em></a> - James's upcoming book</li>
</ul>
<h3>Bridget</h3>
<ul>
	<li>Spent a week with my Philly &amp; NY co-workers, went to the 3rd annual DramaFever Awards show, sang more off-key karaoke.</li>
	<li><a href="http://github.com/paulczar/docker-to-ducy" target="_blank">Docker to Ducy</a> Chrome plugin</li>
</ul>
<h3>Matt</h3>
<ul>
	<li>Was in PDX for the first time last week for <a href="http://agileopennorthwest.org/2015.php" target="_blank">Agile Open Northwest</a>. Led an improv open space. Got a <a href="http://instagram.com/p/zEQeJImEtn" target="_blank">tattoo</a>. Met the founder of Voodoo donuts winding a clock. Such hipster. Very Portland.</li>
	<li><a href="http://github.com/bryanwoods/kitty" target="_blank">kitty gem</a></li>
	<li><em>Better Call Saul</em> - new AMC show</li>
</ul>
