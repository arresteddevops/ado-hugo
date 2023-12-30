+++
Description = "Most developers are familiar with two sources of data about their applications: 1) static code analysis, and 2) observability tools monitoring their system in production. However, a new data source is gaining popularity: Runtime analysis. Runtime analysis is a technique where an application's dynamic behavior is recorded and analyzed during development time, allowing flaws and other insights to be revealed before that code is deployed to production."
Date = 2023-11-23T15:52:59-06:00
PublishDate = 2023-11-23T15:52:59-06:00 # this is the datetime for the when the epsiode was published. This will default to Date if it is not set. Example is "2016-04-25T04:09:45-05:00"
podcast_file = "arrested-devops-podcast-episode197.mp3" # the name of the podcast file, after the media prefix.
podcast_duration = "38:55"
podcast_bytes = "17800000" # the length of the episode in bytes
episode_image = "episode/img/runtime-analysis.jpg"
episode_banner = "episode/img/runtime-analysis-banner.jpg"
guests = ["bkelly"] # The names of your guests, based on the filename without extension.
sponsors = ["uffizzi", "gliffy", "gitbook"]
episode = "197"
title = "Runtime Analysis with Brian Kelly"
#subtitle = ""
images = ["img/social/fb/runtime-analysis.png"]
hosts = ["mstratton"] # The names of your hosts, based on the filename without extension.
aliases = ["/197"]
#youtube = ""
explicit = "no" # values are "yes" or "no"
#media_override # if you want to use a specific URL for the audio file
#truncate = ""
#upcoming = true # set to true if you want this to be listed as upcoming, etc, etc
#categories = []
#series = []
#tags = []
+++
- [OWASP Top 10](https://owasp.org/Top10/)
- Stripe: [The developer coefficient](https://stripe.com/files/reports/the-developer-coefficient.pdf) (quantifies the cost of bad code to companies to be $59B annually)
- Facebook: [FAUSTA: Scaling Dynamic Analysis with Traffic Generation](https://research.facebook.com/publications/fausta-scaling-dynamic-analysis-with-traffic-generation-at-whatsapp/) (how runtime analysis was used at WhatsApp to catch design flaws before they reached production)
- Dragan Stepanović - [Async code reviews are choking your company’s throughput](https://vimeo.com/774651621) (from LAS 2022, a talk which highlights the systemic problems with developers trying to do manual code reviews of large PRs)
- [AppMap](https://appmap.io/), the runtime analysis company which Brian works for
- [Cloud Native Security with Michael Isbitski](cloud-native-security/) ADO Episode
