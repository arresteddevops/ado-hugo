+++
title = "What's New At Chef?"
Description = "Recorded live at ChefConf 2015, we sat down with Julian Dunn, Seth Falcon, and Adam Edwards of Chef Software to talk about all the cool new things that Chef is cooking up - including Chef Delivery, Chef Analytics, and new awesome things with Chef itself!"
Date = 2015-04-16T21:44:54-05:00
PublishDate = 2015-04-16T21:44:54-05:00
podcast_file = "arrested-devops-podcast-episode034.mp3"
episode_image = "/episode/img/chefconf-2015.png"
episode_banner = "/episode/img/chefconf-2015-banner.png"
guests = ["jdunn","sfalcon","aedwards",] # The names of your guests, based on the filename without extension.
sponsors = ["victorops","datadog","10thmagnitude",]
episode = "34"
images = ["/img/social/fb/chefconf-2015.png"]
#hosts = [] # The names of your hosts, based on the filename without extension.
aliases = ["/34",]
explicit = "yes" # values are "yes" or "no"
hosts = ["mstratton","thess"]
+++
[Seth Falcon](https://twitter.com/sfalcon) is the Engineering General Manager for Chef Delivery.

[Julian Dunn](https://twitter.com/julian_dunn) is the Product Manager for Chef Analytics.

[Adam Edwards](https://twitter.com/adamedx) is the Engineering General Manager for the main Chef product.

Matt, Trevor, and Bridget gather at the Chef Newsroom at [ChefConf 2015](https://www.youtube.com/playlist?list=PL11cZfNdwNyO9CpTWH2qjYfzysEtpfOCd) to talk about the latest and greatest developments at Chef. They are joined by Seth Falcon, Julian Dunn, and Adam Edwards.

One of the biggest announcements at ChefConf 2015 was [Chef Delivery](https://www.chef.io/automate/). Matt asks what is Chef Delivery, and why is it interesting?

"Chef Delivery is a solution for continuously delivering infrastructure and applications, and it's built on top of Chef," says Seth, who's heading up this new program within Chef. "We're really excited about Chef Delivery. Successful software organizations use patterns to deliver software at high velocity collaboratively and safely. We've been able to distill some of those patterns into a workflow that we think will be easier for folks to adopt and learn."

Seth continues: "The workflow is one that we've seen work, by working with customers to build these types of pipelines over and over again, and find those successful patterns. The overall workflow begins on a developer's workstation, where they make a change, they do some local testing, and then submit it to the system, where some automated verification tests run. The job of those verification tests is to determine whether it's worth the time of a human to do some code review on that change. Someone can then do some code review to approve the change. At that point, Delivery will build an asset for us that we could release. The workflow for building that asset is simple: do a merge onto the target branch (usually the master), rerun the same verification tests, which usually consists of unit tests, lint testing, and syntax checks, build that asset, and publish it into a repository where it can be fetched later. Then Delivery will provision an acceptance environment, should you need one, and deploy that asset into that acceptance environment, and run some tests to make sure that the deploy was successful. If it was, it waits there for further instruction. The last step is clicking the 'Deliver' button. That sets the system in motion to get the code all the way out. It first goes into a 'Union' stage, where if you had a number of projects that had some interactions, you'd be testing them together at their latest version, and making sure they're good. If those tests succeed, Delivery rolls automatically for the rest of the stages -- into a rehearsal environment, and then into a delivery environment."

Interested in a more detailed description of the workflow? Seth continues to talk through some of the logistics in the podcast as Bridget and Matt ask questions about particulars. You can also check out this video about Delivery:
<iframe width="560" height="315" src="https://www.youtube.com/embed/YA3VXAQqDi4" frameborder="0" allowfullscreen></iframe>

Seth concludes with, "A lot of what we're providing here is an accelerant to teams, to give them that system that will allow them to move quickly and learn how to move quickly in that way."

We transition into asking Adam Edwards, Engineering GM for the Chef product, what's new in his world.

"There's a lot of new stuff just coming out over the last few weeks," says Adam. He goes on to detail just a few new features:
* [Policyfiles](https://blog.chef.io/2015/08/18/policyfiles-a-guided-tour/) - solves problems with workflow and provides a way to specify in a specific file which cookbooks you want
* [Test Kitchen on Windows](http://kitchen.ci/blog/test-kitchen-windows-test-flight-with-vagrant/)
* [PowerShell DSC Direct Integration](https://blogs.msdn.microsoft.com/powershell/2014/07/29/chef-with-powershell-dsc-now-public/)
* [Chef Provisioning (neé Chef Metal) update](https://docs.chef.io/provisioning.html) - does more with containers and Azure
* Chef Nightlies - releasing Chef Server nightly on apt and yum repos

From here, we move into [Chef Analytics](https://docs.chef.io/release/analytics/), and turn the mic over to Product Manager Julian Dunn. He gives us a quick background on Analytics, explaining that it "gives you a way to visualize, query, and report on the events stream that's coming from your Chef data. Analytics lets you not only visualize that data, but track events in that stream, and then handle them in various ways."

Matt brings up his favorite part of Analytics, and brings up how it's closely affiliated to security: "You can take those same audit rules that you write in Analytics, and apply them through your pipeline to test them there. What's nice is that it's only one thing to write." It keeps things simple and straightforward, rather than needing to search through a huge amount of rules and regulations to ensure that everything is accounted for.

Julian agrees: "You can think of security as just another aspect of quality. We understand that you can't get quality if you try to bolt it on to the back of a system. How many of you have worked with applications that didn't have tests originally, and the software is just poor quality? We tend to treat security in this backwards way, where we think if we don't build it into the system, down the road we can just do an audit and we'll magically get compliance and security. If it's not a characteristic that's already there, it's very difficult to achieve those directives."

In addition, Analytics allows customers to report metrics and characteristics about your infrastructure to business owners. "One of the things we often hear from customers," Julian says, "is how do I measure how successful I am at Chef?" If you're able to use Chef Analytics, it provides you with a direct way to illustrate the ROI of investing in this type of technology.

This business aspect of Chef Analytics was one of the core announcements regarding the Analytics Product Suite at ChefConf, specifically highlighting the integration with Splunk. Julian explains the rationale behind this integration:
* Many enterprise customers are already using Splunk
* Splunk makes it very easy to draw visualizations and make inferences from data

Matt segues into an overview of ChefConf 2015 and asks everyone for their insights on this year's event.

Bridget: One thing that stood out for me at ChefConf is that there's a very unified community feeling. At a lot of conferences (that are very wonderful conferences!), there are very specific tracks, or specific groups of people who end up mixing more than with others, and at ChefConf, it definitely seems like there's a very broad community who are all interacting with each other.

Trevor: I've been rocking the hallway track... and like Bridget said, everyone's been fantastic. I've spoken with so many people here who I thought would never want to give me the time of day outside of our show, where we kind of have them pinned in a corner (laughs). The Open Spaces in particular were fantastic. [Brandon Burton](https://twitter.com/solarce) brought up a very sensitive topic: mental health, burnout, suicide... and it was such a breathtaking and emotional experience to hear everyone share personal experiences around that.

Julian: It's really great that even as we've grown as a company and a community, we've retained certain attributes about that community. I think one of those is that there's a little bit of quirkiness, and a little bit of uniqueness, and fun. Backend automation and IT has not necessarily been the most fun arena to work in, and I think this is a breath of fresh air to that sector. I hope we're able to retain those attributes even as we continue to grow.

Matt: Some of this experience is really hard to explain. You can't explain what the Las Vegas strip looks like at night, even if you've seen it in movies, until you're there. I'm not saying this is like going to Vegas, but just like no one can describe the Matrix to you, you have to experience ChefConf for yourself.

More information on ChefConf:
* [Watch keynotes and highlight videos](https://www.youtube.com/playlist?list=PL11cZfNdwNyO9CpTWH2qjYfzysEtpfOCd)
* [Read wrap-up blogpost](https://blog.chef.io/2015/04/14/chefconf-2015-devops-velocity-and-community/)
* [ChefConf 2016](https://chefconf.chef.io/)

Links:
* [ChefConf Unikitten](http://www.unikitten.com/)
* [#cheffriends](https://twitter.com/search?q=%23cheffriends)
