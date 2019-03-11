+++
title = "Disasters!"
Description = "In this episode, Stephanie Van Dyk and Mark Imbriaco discuss how to communicate and how to recover in the event of complete disasters."
Date = 2015-05-28T22:23:56-05:00
PublishDate = 2015-05-28T22:23:56-05:00
podcast_file = "arrested-devops-podcast-episode037.mp3"
episode_image = "/episode/img/disasters.png"
episode_banner = "/episode/img/disasters-banner.png"
guests = ["svandyk","mimbriaco",] # The names of your guests, based on the filename without extension.
sponsors = ["victorops","10thmagnitude",]
episode = "37"
images = ["/img/social/fb/disasters.png"]
hosts = ["mstratton", "thess", "bkromhout"] # The names of your hosts, based on the filename without extension.
aliases = ["/37",]
explicit = "yes" # values are "yes" or "no"
youtube = "E_DdM-pGHb8"

+++
**Stephanie Van Dyk** [@sevandyk](https://twitter.com/sevandyk) is an SRE at Google, and has also worked on [healthcare.gov](http://healthcare.gov).

**Mark Imbriaco** [@markimbriaco](http://twitter.com/markimbriaco) is co-founder and CEO of OperableInc. He's worked previously at DigitalOcean, GitHub, LivingSocial, Heroku, and 37signals.

Bridget starts by asking Mark what Operable is all about. Mark explains that Operable is trying to help people who are on the "pointy end" of incidents. They're trying to build tools that help people collaboratively fix problems. "There's a lot of tools these days that do things like wake you up and alert when you when there _is_ a problem," says Mark, "but we think there's a lot of room to help people actually _solve_ problems."

Stephanie briefly goes through some of the history of [healthcare.gov](http://healthcare.gov), and how she first learned about it. Her position was unique, she points out. "We worked very hard, and very long hours... We were also in the fortunate position of having a lot of authority, which is important if you're trying to fix a disaster. There's a lot of problems to solve, and you don't want any of your additional problems to be 'Well, who gave you permission to do that?'"

"That's a really good point -- not all disasters are created equal," Bridget notes, "and maybe we should take a step back and think, what are the ingredients that make something a disaster?"

Mark: I'm used to catestrophic problems that last for a few hours at most, or in the really bad case, mabe it lasts for two or three or four days, not something that goes on for weeks or months, so that's a different perspective from what I have, so I'm super interested to hear about [healthcare.gov].

Matt: I think there's the disasters where there's a thing that happens, that's maybe localized to one type of scenario; then there is what happens in [an episode of This American Life](http://www.thisamericanlife.org/radio-archives/episode/61/fiasco), where it's just one thing after another and everything unravels. There's a quote from the episode that I like to think about when we think about these bigger disasters that are more than just an outage that may be far reaching:

*"One ingredient of many fiascos is that great, massive, heart-wrenching chaos and failure, are more likely to fail, when great ambition has come into play, when plans are big, expectations are great, and hopes are at their highest."*

"I think you're certainly right," agrees Stephanie. "In order for something to be a disaster, the stakes have to be quite high... An outage that you find, and fix, and write a postmortem, and everyone learns something, and the users all get over their hurt, that's not a disaster. That's just life.

At times, there are incidents that leave scar tissue in their wake, making people wonder for years to come if they truly want to use certain products, or trust their data to a certain company. Mark reminisces: "The gutwrenching terror is, are we going to get our customers' data back, or is it just gone? As an ops person, there's almost nothing more terrifying than losing data."

This provides a perfect segue into some of the non-obvious issues that arise with disasters. Stephanie brings up the point that you have to be prepared to regain the trust of your users. "How people think about your service is going to determine the fallout of it, and the impact. It's interesting -- it's not something engineers like to think about very much, because they simply fix the problem. But someone has to be the one to reassure people that it'll be ok."

Mark agrees: It's really, really hard to be in the middle of responding to a serious problem, and also have to be the person who needs to communicate about that externally. There's so much good will that can be gained from being as transparent and public as you can about what's going on, without pulling punches or hiding, even if things are really bad.

This is all well and good, but Bridget brings up a good point:
"How _do_ you know exactly how and what to communicate to people?"

Stephanie: There are definitely rings of communication. You have to be able to talk to the other engineers who are working on the problem, and those conversations are going to be very different than how you talk to your customers, even if you're trying to be super open and honest. Your customers don't care about where in the logs you found that tiny error. They care about when it's going to be fixed, and whether you're actually working on it... Also, the person who's in charge of solving the outage should not be the same person who's in charge of communicating about the outage. You should have different roles for that.

Mark agrees emphatically, and also noted that wording is incredibly important -- not only what you say, but how you say it, and the words that you use. "There are three things I want to get across. The first thing is, I want to apologize to people. It has to be a sincere apology. The other thing I need to do is make sure people feel confident that I understand what happened. I need to display confidence, and a really firm grasp about the problem. The last thing I need to do is tell them what I'll do to try to reduce the likelihood of something like this happening again."

The conversation turns a corner as Matt asks how you plan for outages and prevent disasters. Stephanie jumps in, and reminds us all:

*"If you don't test your backups, you don't really have backups. Similarly, if you don't test your outage plan, you don't have an outage plan."*

She suggests setting up brainstorming sessions with a handful of people from your team, appointing a "DM" (dubbed "Disaster Master" rather than "Dungeon Master" by Tyler), and running through possible scenarios. Keep an eye out for a Kickstarter in the near future ;)

_There are definitely advantages to documenting incident reports along the way, but how do you balance the speed of talking through a solution out loud, and the value of face-to-face communication to build trust vs. the need to document things for posterity?_
Mark: How you interact on a day-to-day basis is also how you should communicate during an outage. The last thing you want to do is change your mode of communication when everything is falling apart and you've got high stress.

Matt posits that sometimes what's a disaster for one company isn't for another, because of their size, their logistical capabilities, etc., but also, sometimes what is being presented as a disaster isn't actually all that bad.

Stephanie identifies the first benchmark as determining whether or not your users are hurting. "If they're not hurting yet, you might have a disaster coming, but I don't think it qualifies. But if your users are hurting, that's when you really need to jump on board and get focused."

Mark agrees, and adds that being able to quantify how many users are affected, and in what way they're affected, is hugely important. "That's different than monitoring. Monitoring may tell you that the server's down, but it doesn't tell you how many users that impacts." He reminds us that when you're working at scale, "services are down for somebody literally all of the time.  "What is the threshold where it becomes a disaster? When do you need to start talking about it publicly and in status? Those are questions you really need to answer up front."


<h2>Checkouts</h2>
<h3>Stephanie</h3>
<ul>
	<li><a href="http://www.catehuston.com">catehuston.com, Accidentally in Code</a></li>
</ul>
<ul>
	<li><a href="https://www.whitehouse.gov/digital/united-states-digital-service">USDS</a></li>
</ul>
<h3>Mark</h3>
<ul>
	<li><a href="http://preaccidentpodcast.podbean.com/e/pre-accident-podcast/">Pre-Accident Podcast</a></li>
	<li><a href="http://www.destinythegame.com">Destiny (the Game)</a></li>
</ul>
<h3>Bridget</h3>
<ul>
	<li><a href="http://www.seedsavers.org">seedsavers.org</a> - Organic heirloom seeds</li>
	<li><a href="http://csel.eng.ohio-state.edu/woods/distributed/CG%20final.pdf"> “Common Ground and Coordination in Joint Activity” by David Woods et al</a></li>
</ul>
<h3>Trevor</h3>
<ul>
	<li><a href="http://www.amazon.com/Chainmate-CM-24SSP-24-Inch-Survival-Pocket/dp/B0026OOS60/ref=sr_1_1?ie=UTF8&amp;qid=1432065575&amp;sr=8-1&amp;keywords=hand+chain+saw">Pocket chainsaw</a></li>
	<li><a href="http://www.dragonballxenoverse.com/en/">Dragonball Z XENOVERSE</a></li>
	<li><a href="https://plus.google.com/communities/115302484554583402046">MSOffice for Android Smartphones (Excel, Powerpoint, Word) Preview</a></li>
</ul>
&nbsp;
<h3>Matt</h3>
<ul>
	<li>Does Not Commute - iOS/Android game <a href="https://itunes.apple.com/us/app/does-not-commute/id971756507?mt=8">iOS
</a> | <a href="https://play.google.com/store/apps/details?id=com.mediocre.commute&amp;hl=en">Android</a></li>
	<li><a href="http://www.avclub.com/article/these-are-impressive-breaking-bad-highlights-recre-219640">Recreating highlights of Breaking Bad in GTA5 editor</a></li>
	<li>I’m also obsessed with Hearthstone on iOS now (World of Warcraft card game thingy)</li>
</ul>
