+++
Description = "The software industry is experiencing another seismic shift. After decades of agile transformations, cloud migrations, and DevOps revolutions, we're now navigating the integration of AI into the software development lifecycle. But this time feels different—the pace is faster, the technology less mature, and the stakes feel higher. Matty Stratton sat down with Hannah Foxwell and Robert Werner to explore what this transformation means for developers, operations teams, and the organizations they serve."
Date = 2025-10-01T08:36:13-05:00
PublishDate = 2025-10-01T08:36:13-05:00 # this is the datetime for the when the episode was published. This will default to Date if it is not set. Example is "2016-04-25T04:09:45-05:00"
podcast_file = "arrested-devops-podcast-episode205.mp3" # the name of the podcast file, after the media prefix.
podcast_duration = "00:39:51"
podcast_bytes = "18200000" # the length of the episode in bytes
episode_image = "episode/img/ai-sdlc.png"
episode_banner = "episode/img/ai-sdlc-banner.png"
guests = ["hfoxwell","rwerner"] # The names of your guests, based on the filename without extension.
sponsors = ["flyio","attribute"]
episode = "205"
title = "How AI is changing the SDLC with Hannah Foxwell and Robert Werner"
#subtitle = ""
images = ["img/social/fb/ai-sdlc.png"]
hosts = ["mstratton"] # The names of your hosts, based on the filename without extension.
aliases = ["/205","/aisdlc"]
#youtube = ""
explicit = "no" # values are "yes" or "no"
#media_override # if you want to use a specific URL for the audio file
#truncate = ""
#upcoming = true # set to true if you want this to be listed as upcoming, etc, etc
#categories = []
#series = []
#tags = []
transcript = "/static/transcripts/ai-sdlc.md"
+++
## The Trust Problem Returns

Hannah Foxwell, who has spent over a decade in DevOps and platform engineering, draws a striking parallel to earlier transformations: "It used to be that testers didn't trust developers and ops didn't trust testers and there were all these silos. Now we're putting AI agents in the mix. Can we trust them? Should we trust them?"

This isn't just déjà vu—it's a fundamental challenge that resurfaces with every major shift in how we build software. As Robert Werner points out, management had to give up control and push trust to the edges of organizations during the agile transformation. With cloud adoption came self-service and automation. Now, with AI, we're dealing with non-deterministic black boxes that we need to trust to be "right often enough."

## The Fluency Gap

One of the biggest challenges isn't the technology itself—it's the lack of shared understanding. Hannah launched "AI for the Rest of Us," a community now with over 1,000 members, after realizing that AI fluency is essential for making good decisions about where and how to use these tools.

"I went to a talk at a conference thinking I'd learn about AI in one talk and become an expert by tomorrow," Hannah recalls. "It just didn't happen like that. There's a whole new domain with new vocabulary, new concepts, new techniques."

The community focuses on making AI accessible without dumbing it down—providing talks and content that explain complex concepts in simple language so more people can participate in the conversation about AI's role in software development.

## The Speed-Responsibility Paradox

The technology is evolving so rapidly that best practices barely have time to solidify before they're obsolete. Robert describes how hiring strategies at startups are changing every few weeks as new capabilities emerge. "Things that weren't feasible last week are suddenly possible," he notes.

But this speed creates a dangerous tension. Organizations are pushing hard for AI adoption while the guardrails, workflows, and cultural practices needed to use it safely are still being figured out. As Matty observes, this leads to perverse incentives—developers required to "use AI" who find ways to tick the box without actually deriving value, just like teams that once added meaningless tests to meet sprint requirements.

## Who Owns the Code?

A critical question emerges: if AI generates the code, who owns it? Who's responsible when something goes wrong?

Hannah frames it in familiar DevOps terms: "Does anybody really want to own a service if they didn't write it and they don't understand how it works? It's the ops challenge again—AI throwing code over the wall to us."

Robert's answer is pragmatic and honest: humans will need to take responsibility for validating AI-generated code, even if it's tedious work most developers won't enjoy. His company, Leap, is building tools specifically to make that verification process as convenient and enjoyable as possible, because he believes there's simply no other way to do it safely.

## The Documentation Double-Bind

There's an ironic twist in how AI agents work best: they need excellent documentation. Organizations improving their documentation to support AI-powered development are inadvertently following DevOps best practices that benefit human developers too.

But as Matty discovered building his own project, AI-generated documentation can be dangerously unreliable. The tools will confidently document features that don't exist, pulling from incomplete PRDs or speculative notes in the codebase. Great documentation trains better agents, but agents shouldn't write that documentation—creating a challenge that requires human judgment and oversight.

## Lessons from Past Transformations

The parallels to earlier shifts are instructive. Hannah remembers enterprise clients who insisted continuous delivery would "never work here." Now it's common practice. The same resistance appeared with cloud adoption and agile methodologies.

What worked then still matters now:
- **Guardrails enable freedom**: Constraints and safety nets let people explore confidently
- **Make the right way the easy way**: Transformations succeed when good practices are more convenient than bad ones
- **Community and shared learning**: Success stories and failures shared openly help everyone navigate change faster
- **Start with good practices**: Teams with solid engineering fundamentals—blue-green deployments, A/B testing, safe-to-fail production environments—are better positioned to benefit from AI-assisted development

## Practical Advice for Explorers

For developers and teams trying to navigate this transformation, Hannah and Robert offer grounded guidance:

**Keep your eyes open**: Watch for patterns of success and failure. Who's making this work, and what do they have in common?

**Build community**: Find or create spaces where people can share honestly about what's working and what isn't, without the pressure to pretend everything's perfect.

**Be selective about information sources**: With so much noise and hype, focus on quality outlets. Ignore things for a few weeks, and if they keep coming up, that's when to invest your time.

**Practice regularly**: The technology evolves so fast that hands-on experience goes stale quickly. Even if it's not your main job, refresh your skills every few months.

**Be specific and constrained**: AI coding assistants work best with clear, narrow requests. Frustration comes from asking too much or being too vague.

## The Future We're Building

We're in the Nokia phone stage of AI-assisted development, as Robert puts it—the technology will look completely different in just a few years. But unlike waiting passively for that future to arrive, developers and teams are actively creating it through the choices they make today about how to integrate these tools.

The question isn't whether AI will transform software development—it already is. The question is whether we'll learn from past transformations to build better practices, stronger safety nets, and more trustworthy systems. Or whether we'll repeat old mistakes at unprecedented speed.

As Hannah emphasizes, having more people with AI fluency means better conversations and better decisions at a pivotal moment in history. The rollercoaster is moving whether we're ready or not. The best approach is to keep your eyes open, stay connected to community, and remain thoughtfully critical about what works and what doesn't.

*Learn more about Hannah's work at [AI for the Rest of Us](https://aifortherestofus.live/). Use code **ADO20** for 20% off tickets to their London conference on October 15-16, 2025.*
