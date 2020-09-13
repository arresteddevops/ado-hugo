> *Delyan Raychev:* SMI seems to be like the lingua franca of service meshes.
>
> [music]

> *Bridget Kromhout:* It's time for "Arrested DevOps," the podcast that helps you achieve understanding, develop good practices, and operate your team and organization for maximum DevOps awesomeness. I'm Bridget Kromhout, with a great show for you today. But first, a word from our sponsors.

> *Announcer:* The worst thing about the Arrested DevOps podcast is when it ends. You're left wondering what to do next. What are you going to listen to on your commute home? How do you occupy your time when walking the dog? What are you going to listen to during the quarterly all hands meeting? But fear not, dear listener, there is a solution.
>
> You need to subscribe to "Software Defined Talk" right now. It's a weekly podcast that recaps all the news in cloud computing, DevOps and enterprise software. The hosts Coté, Matt Ray, and Brandon Whichard will keep you up to date on all things cloud while offering tips on how to optimize your Costco Hall and how to PowerPoint.
>
> It's a fun, free-flowing conversation that will keep you entertained and informed. What are you waiting for? Subscribe to the podcast today by visiting [softwaredefinedtalk.com](http://softwaredefinedtalk.com/) or by searching for Software Defined Talk in your favorite podcast app.

> *Bridget:* OK. I feel like I have to start this with the movie announcer voice. In a world where Kubernetes meets Microservices, what's a developer to do? Here to address this exciting service mesh whirl, we have two guests.
>
> How about you tell us a little bit about yourself, where you live, where you work. What's the smallest change worth opening a pull request for? Starting with Michelle.

> *Michelle Noorali:* Hey, Bridget. Thanks for having us today. My name is Michelle Noorali. I live and work in Atlanta. I'm a software engineer here at Microsoft and I work primarily on Open Source Cloud Native technologies.
>
> It's a core maintainer on projects like Helm, Draft, CNAB. Now I focus primarily on the service mesh space, with projects like service mesh interface, SMI and now OSM, which we'll talk about Open Service Mesh a bit later. So, smallest change worth opening a pull request for.
>
> I generally misspell things all the time. The smallest change that I appreciate is like a docs change or a spelling fix, a grammar fix. I always try to open those as well on other people's repos because I appreciate when people fix my mistakes. I think that's what I would go with.

> *Bridget:* That's actually awesome. I agree. I think some of the pull requests that I was the most excited about recently, was pull requests in Helm where people were putting in new lines just to disambiguate something in the docs. I was like, "That's so helpful, thank you." They were like, "I know this is small," and you're like, "No, this is good. This is good." [laughs]
>
> Delyan, tell us about yourself.

> *Delyan:* Hi, friends. My name is Delyan. I live and work in the San Francisco Bay Area with Michelle and Bridget, and I'm also a software engineer at Microsoft. For the past year and a half, I've been focusing on various reverse proxies, Microsoft Azure's app gateway and Kubernetes, trying to bridge the gap between IntelliJ Kubernetes and now service mesh -- extremely exciting and overlapping fields.
>
> Small SPR, I also appreciate typos or correctness of comments. I love adding comments to clarify things. Surprisingly, it's so easy to actually make tiny little PRs via the GitHub URI where you can actually edit code.
>
> GitHub URI, I love that sometimes -- reading code. I love reading code actually. I like to tweak comments to clarify as well -- favorite pastime.

> *Bridget:* That is actually awesome because imagine the comments are like gifts, a gift to your future self, a gift to yourself at two in the morning, a gift to future members of your team. When you have rolled up the project and they're like, "This is why Delyan did this." It's like, "Don't tell me what's in the code," in the comment. "Give me code. I wonder what you were thinking. What were you thinking?" [laughs]

> *Delyan:* I should have stated, I also love leaving to-dos. Sometimes I will just open up a little editor and say, "To-do, we have to add XYZ here." I am fascinated by to-do-driven development.

> *Bridget:* I love it. To-do-driven development. Our agenda for today is service mesh. We've done in the past, and not we the people on this podcast, but we the podcast, have done a number of "Arrested DevOps" episodes about Kubernetes because that's so complex.
>
> I don't know if you've looked at the CNCF landscape. I tried lately, dear listeners, but there's a lot going on in this cognitive world.
>
> Today, we are going to do a deep dive into an exciting and I think often misunderstood niche of service mesh. Let's start by the broader question. What is service mesh? These are words. We are sticking them together. We are saying they mean something. What is a service mesh?

> *Michelle:* The proper definition is it's a dedicated layer of infrastructure that helps you manage, secure, and observe service-to-service communication. That's the definition you'll read everywhere. I feel like, at first glance, it doesn't really make a lot of sense to people who aren't super involved in this space.
>
> Stepping back a little bit, the problem here is that application networking-related concepts are a little bit harder now. We're in such highly dynamic environments where your IPs for your applications are changing. If you're Kubernetes, your Pod IPs might be changing just because Cogs come up and down.
>
> It's not that big of a deal. The system handles failures. Things are always changing all the time. That is normal now. Networking requirements have to become a little more dynamic as well.
>
> There are things like traffic encryption, access control, figuring out which service can talk to which service.
>
> Traffic shifting is often talked about when we'll talk about service mesh. That's moving traffic from one version of an application to another version. What else? Observability metrics, people want to see and understand what is going on between the traffic and communication between your different microservices.
>
> All of these topics come into play when you're talking about a service mesh. It's a piece of technology that helps you manage those application networking components and rules and requirements.

> *Bridget:* Love it. That's super thorough, Michelle. Because I happen to know that Delyan is networking focused, I'm wondering if, Delyan, you want to tell us how does a service mesh actually work. How does a mesh work in terms of if a service mesh we're going to mesh, how does it even mesh? What is the actual technical possibilities there?

> *Delyan:* Very interesting. Maybe I will start with the question of, why the heck do you even need a service mesh? I like to look at it from the perspective of perhaps the CTO of organization who they want to augment.
>
> They want to add a bunch of services, but they have very few resources as engineers. They want to add observability. They want to improve security. They want to figure out how to manage traffic. There we go. Networking.
>
> How do you do that when your engineers are already extremely busy? You bring in the service mesh. You launch the install command and, boom, you get all those extra features. It's a beautiful basket full of new features that you'll get for your system.
>
> How we achieve that? Well, yes, because it's primarily focused on encrypting traffic and observing traffic flying between the various pods and payloads. We do that by intercepting the traffic and adding encryption to it or capturing to see who is talking to who.
>
> It's interesting, because in the past, we've done that. We've been doing it for decades. Twitter has Finagle. Netflix was using Hystrix. Google has Stubby. Those are libraries that are very tightly coupled with the various languages that you use, whether it's Java or Go. If you're using a bit more obscure language, you'll struggle to use Hystrix, for instance.
>
> In the networking world, we take a sidecar, a reverse proxy. We bundle it with your payloads. We pipe all the traffic through it. Then this reverse proxy sidecar will then add all those incredible features, like we said, mTLS observability or traffic management, splitting the traffic between the various versions of your services, for instance.
>
> See, I answered a few questions at once, Bridget.

> *Bridget:* I love it, but I also have new questions now. This is what happens. Because you're talking about intercepting traffic, there might be people who will hear that and think, "Wait, wait, wait. Service mesh is some sort of man-in-the-middle attack as a service? How is this safe? Is it safe to use service mesh?"

> *Michelle:* Actually trying to prevent those man-in-the-middle attacks. A big thing that I'm hearing a lot about is this requirement around mTLS, so mutual TLS, especially when related to enterprise environments and government-related requirements.
>
> They'll often say, "Hey, we need to make sure that the traffic between your services is encrypted. Everything looks good, services are talking to each other in a way where the rules have allowed them to and nothing's doing anything wonky."
>
> I guess a lot of people are familiar with TLS because we use it all the time, right? That's when your client or your browser, for example, reaches out to a web server or web service and tries to get information back from it. We use TLS there so the client reaches out and it basically asks the server to prove its identity.
>
> That's great for generally everyone but, because especially in public facing environments like web services, but more and more, we've seen that people want to restrict access between different services. This is where mTLS comes in, mutual TLS.
>
> That's when both the client and the server have to prove to each other that they are who they are. This is a security requirement that's becoming more and more common. It's really nice when you don't have to handle that in code.
>
> You can throw a sidecar and extra application that handles that kind of stuff for you and your service mesh makes sure everybody has the proper identity attached to them.
>
> Is it secure? It's trying to enhance security so I hope so. Delyan, do you have anything to add in this?

> *Delyan:* Yeah. Maybe I'll go back to describing how we composed this service mesh and try to prove that it is indeed secure. I think there's the three main components of the service mesh that compose it.
>
> We started with the reverse proxy, which we add in your pod as a sidecar, or we add it onto your VM, so it augments that payload. There's a certificate which is being used to encrypt decrypt traffic between the various services, that's component number two.
>
> Component number three is the control plane that actually tells the sidecar, the reverse proxy, what to do and how to do it. All those three components are actually open source. The reverse proxy, we can review the code, make sure that it's secure.
>
> By using the certificate, which is within the sidecar as well, we can prove that traffic entering the site...a sidecar proxy may look like a man in the middle of tech, but it's actually approvable what that proxy is doing. It's very transparent that everything the proxy is doing, it's encrypting traffic and allowing/denying traffic between the rest of the proxies.
>
> I think it's easy to show that a traffic that is flowing in and out of that sidecar is already encrypted and it's only flowing to other east-west services that we have explicitly allowed or permitted with the SMI actually.

> *Bridget:* Now that you've just unpacked a whole bunch of stuff that I want to get to. Let's start with, you're mentioning east-west services. You're mentioning pods and VMs. At this point, we have to bring it back to Kubernetes.
>
> I guess my question to you folks is, on the scale of hot dog to not hot dog, how does service mesh relate to Kubernetes? Is it a subset? Is it a superset? Is it a fog and all? When people are trying to figure out, "Well, I think I need some Kubernetes, but do I also need some service mesh?" how do you unpack that?

> *Michelle:* You don't need a service mesh unless you need those things that Delyan and I talked about earlier, so definitely don't feel you need it. It's for very specific requirements for a very specific type of environment. But the idea here is that it's really great for when you have lots of microservices running in your environment.
>
> Think like Twitter, think Lyft. Lots of different application components talking to each other. Lots of specialized teams working on different applications that end up talking to each other make this really awesome system work, really awesome application work.
>
> That's the kind of environment that you want to maybe have the service mesh put on, but those kinds of environments have been enabled by the rise of Kubernetes, the rise of Containers, Docker, etc.
>
> Definitely not totally partnered up, but the service mesh has been, the pattern has been enabled by Kubernetes, which has enabled highly dynamic microservice environments for sure.

> *Delyan:* One thing that I keep hearing in conversations with various partner companies is always the concern that this great ecosystem the Kubernetes is, unlocks so much potential that, at some point, operators get lost in the complexity of it. How do you reign in that complexity?
>
> How do you make sure that only service A conduct to service B between namespaces? Or perhaps you have various teams in various namespaces within Kubernetes, but you don't want to necessarily allow every service and every namespace to talk to every other service in every other namespace.
>
> Then you use a service mesh to control that east-west flow within the Kubernetes cluster.
>
> Then we also keep hearing about zero-trust networking. Maybe all the teams operating in the same Kubernetes cluster don't necessarily trust each other for various reasons.
>
> Actually one more thing strikes me as the most interesting, we keep hearing about auditability. An operator of a Kubernetes cluster has a very successful operation. Everybody's really happy, but at some point, you lose track of what services even exist and who is talking to who.
>
> How do you actually map that out to understand what is happening? I think service meshes are really easy solution to all those, that basket of problems.

> *Bridget:* I'm laughing at the word easy because it's well, [laughs] at least it's definable, right? This kind of brings me to this. Let's look at some, you mentioned SMI, but when people are saying "service mesh," they start mentioning different planes and, it's a word, it's a plane.
>
> Control plane, data plane, what are these planes of existence that we have to be living on?

> *Michelle:* By the way, East-West traffic, we mentioned that a lot. East-West traffic is your services communicating with each other, and then when you say North-South, that's maybe some external traffic coming to your cluster and communicating with services that are a part of your mesh.
>
> But a lot of times, you'll hear East-West, North-South when we talk about service mesh. You'll hear about data plane versus control plane. I think data plane generically just means the part of the network that carries user traffic. We've been talking about the sidecar approach to service mesh.
>
> By the way, sidecar approach is not the only way you can do service mesh. There are other meshes out there that do proxy per node rather than proxy per app instance. We generally see service meshes implementing the sidecar approach.
>
> The sidecar is all the set of proxies is what we refer to as the data plane. Then the control plane is the thing that is your source of truth for all your configuration. It bootstraps and manages those proxies. It manages your certificates.
>
> Delyan, anything else I'm missing here?

> *Delyan:* You're exactly right. I think perhaps from a service mesh developer perspective, the difference becomes quite drastic, because the data plane is something that needs to be operational 24/7 nonstop with as little latency as possible, because that's where all the data is flowing through, that is customer's data.
>
> The control plane, of course, it also needs to be up all the time and be very reliable. But the control plane is, because it controls the reverse proxies, you have a little bit of flexibility around when you can upgrade it and downtime, etc., because the customers traffic is not flowing through the control plane, it's flowing through the proxies that we call data plane.

> *Bridget:* You also mentioned SMI and that brings us to, what's the difference between SMI and say, a control plane?

> *Michelle:* SMI stands for Service Mesh Interface. It's essentially, we got together with a bunch of service mesh providers and created this affordable set of APIs that represent the most common functionality that people want from a service mesh. There's a lot of meshes, they all have their own APIs and their own constructs.
>
> This interface allows people who are actually building tools on top of service mesh technology to build against a consistent set of APIs without having to worry about what the actual implementation is, what service mesh provider they're using. That's what it is at a high level.
>
> How does it differ from a control plane? Delyan, I'm going to pop it back to you for that.

> *Delyan:* That's a tough question. SMI reminds me of, this pseudo language that we created way back in the day in college, a few people from a few different Eastern European countries that perhaps share the roots of a language and we came up with our own language. SMI seems to me like the lingua franca of service meshes.
>
> People oftentimes ask me, "What's the benefit?" There's incredible benefits. You can install service mesh A and check it out, configure all your policies. Then you might decide, "Hey, what if I check out service mesh B? I want to see how that works." You don't have to change all your policies.
>
> SMI stays in your cluster. You swap the data plane. How is SMI different than the control plane? SMI is the language that defines, describes, creates the topology of your mesh.
>
> The control plane ingests all the SMI primitives and tells all the reverse proxies, or not reverse proxies if you have proxy-less service mesh, it essentially from SMI to control plane, control plane to data plane, on how to run the whole service. I hope this simplifies it a bit.

> *Bridget:* It at least gives people more breadcrumbs to go forward when they're learning about this. The reason that I had you two come on Arrested DevOps today is because you're announcing something today.
>
> Michelle, you want to tell us what exactly, now that we gave people enough context to understand the announcement. What are we announcing?

> *Michelle:* Delyan is from the Azure networking side of Microsoft. I am from the Azure containers upstream team. We contribute to upstream projects and do the open source thing. We've come together and built out this project called Open Service Mesh.
>
> This is a lightweight envoy based, Kubernetes-native, SMI compliant, all the words that we've talked about today. Service mesh, we've been working on this for several months now. We're so excited to open it up and have people come and play with it.

> *Delyan:* It is so exciting to me. We've been working on that for a while. When I say we, we first of all standing on the shoulders of giants. We've had people, like we said earlier, with all the libraries that were developed decades ago now.
>
> Then we had folks like Matt Klein come with this incredible proxy. We had, of course, SMI to unite all the various service meshes. Now, we're building this standing on the shoulders of giants, but we have been focusing on a few guiding principles.
>
> Our goal here, our mission is to create first of all a service mesh and also source code that is very simple to understand and contribute to. It's effortless to install painless to troubleshoot and, of course, it's very easy to configure by using SMI.

> *Bridget:* I've got to roll it back just a little bit and say, "Oh wait, you're talking about proxies." People maybe be like, "OK, proxy," I understand that you mentioned Matt Klein, who of course is famous for Envoy and like "What are all those things again?" For our listeners who are like, "We don't even remember which all these things are." "What are those things?"

> *Michelle:* There's a lot of history in this space. It's been changing and evolving a lot. It's a hot place to be. It's an exciting place to be.
>
> I think these people and these technologies are very well known within the service mesh community with, of course, Matt Klein, the creator of Envoy, Linkerd is another SMI compliance service mesh and they've been very active and ask my community group to work with on that. What other terms were there that you threw out?

> *Bridget:* Oh, There's so many different things. Maybe a good one to point out is we were getting into talking about standards and standards compliance. Why is that important?
>
> If we have a lot of service meshes and they all comply to a standard. Do we have too many service meshes? What is even the point of another service mesh? Diving into the differences or the details.

> *Michelle:* Well, again, this is very early days for service mesh. There are a lot of different opinions on what the control plane should look like, how it should scale, what the sidecar proxy should be and which one would you use for different things that you need to do? How do you do ingress? What is the user experience like? What is the APIs you comply with? Things like that.
>
> In terms of OSM, what we've tried to focus on is getting the project to a point where people can use the most common functionality that people have been requesting. We've implemented SMI APIs, and SMI represents that the most common features that people want from service mesh, which is mTLS, traffic shifting, access control, and metrics.
>
> By far, we've done lots of surveying, talking to customers, working with other mesh providers, came together with this common set of things that we want to implement. That's a first and foremost things that's something we're passionate about sticking with and making sure that this remains an SMI-compliant piece of technology.
>
> We also are excited about contributing back so the SMI community, based on our learning. SMI is not just we developed a spec first and then we're developing the technology after. It was mesh first. Lots of implementations came first, and then we got together, and we were like, "OK, we're going to drive the spec of the interface based off of those learning."
>
> Now that we have our own implementation here, we hope to contribute back to the SMI community with those.
>
> Another thing is a differentiator is that there are lots of proxies to choose from, to serve as your sidecar, and we went with Envoy based. We're very excited about all of the features that Envoy has.
>
> There's a lot of community momentum around this project. We're just very excited to be involved with that community, we've been in touch with that community. They also have a great way to write extensions with WebAssembly. It's not only production-ready, hardened, proven, but it also is extensible, and that's very important for us.
>
> Although we're committed to making things easy, so making things SMI compliant, we're also very committed to this "no cliffs" design philosophy that we have here at Microsoft. The idea is your project. Your software should be flexible enough to handle both the simple scenarios as well as the complex scenarios. We're going to continue focusing on making sure everything's easy to use with SMI.
>
> Also, we're going to focus on if you need to break out of SMI or if you need to do some really complex stuff, we're going to make sure that there is a path forward with that. There's a lot of talking about that.

> *Bridget:* They'll know this wonderful, there's a lot there. I actually want to focus in on this no cliffs thing, and I'm smiling. I started smiling when you said that because for anyone who's watching the video, Delyan has a picture of some cliffs behind him so...

> *Delyan:* Oh, nice.
>
> [laughter]

> *Delyan:* They're pretty steep.

> *Bridget:* I would actually like Delyan to give us a little bit more depth on the idea of where do we move from simple to complex. What are those scenarios look like? I know nothing is set in stone, but what are some of the ways that those problems can be solved?

> *Delyan:* Yeah, very interesting. Well, maybe I'll roll back just a little bit. One way that I think about the various service meshes before we jump into the no-cliffs pattern, I think of service meshes as motorcycles. The various different service meshes that you have on your cluster are kind of like the motorcycles in my garage. They're all different. Very, very different.
>
> You may have some old school motorcycle that you really love for certain reasons, or something more modern that you like to work on. Some of them are simple to work on. Some of them are impossible. I think that's why there's always room for one more service mesh or one more motorcycle because they're all different and fine-tuned for various use cases. But getting...

> *Bridget:* Wait. Do any of your motorcycles have sidecars? The important question.

> *Delyan:* [laughs] You know what, I have not installed a sidecar on my motorcycle yet.
>
> [laughter]

> *Bridget:* But anyway, back to the no cliffs.

> *Delyan:* No cliffs. Yes. One thing that we know with a SMI, for instance, is that it doesn't obviously contain all the features that you might want to program on the proxy like Linkerd or Envoy. We are launching OSM with Envoy as the default proxy right now.
>
> Envoy is incredible with so many different features. One thing that you might notice in our repo is that we have put in a little bit of work to work on back pressure or circuit breaking.
>
> That's, obviously, not part of SMI yet. That's one cliff, for instance. We think of that as a cliff. You perhaps develop the topology of your mesh, and you create all the policies, but you want to do something that's not quite there in SMI. How do you do that? To avoid that cliff, to avoid kind of the end of the road, we do have a continuation of the road is just not the smooth asphalt road.
>
> It might be a dirt road, but it does exist. So, we switch into hard mode. You might want to use XDS now, which is the Envoy protocol or the envoy way of configuring things, which is much more difficult than SMI. There is a way to now switch to XDS and fine-tune all the Envoy proxies. You do get the benefits of circuit breaking, which Envoy ships with.

> *Bridget:* It gives our listeners a lot of things that they can go read and learn about. I would ask like, what do you recommend? Today, we are...publication date of this podcast. We are also open sourcing all this. Where would people go to learn more about OSM? Open Source mesh specifically and then this whole ecosystem?

> *Michelle:* A great place to get started is on our GitHub repository. We have a great install and getting started guide. We hope that you'll run the demo and read the docs. We've tried to make it as painless as possible. We're not going to be reading a ton of a wall of text. There is definitely a lot of information there. For anybody to get started and just play with it.
>
> You can even have a local cluster like Kubernetes, Kind or minikube, running, and you can get started there. If you read a doc and, there's a spelling mistake, or some grammar could be better or anything like that...you want to add a text to the repo, if you're excited to even contribute to it, then please feel free.
>
> We have all the documentation on how to contribute on a repo as well, and projects and things like that. So, everything and anything helps, and we love feedback in the form of GitHub issues or join our Slack channel.

> *Bridget:* That is such a good point. Michelle, you just brought up something that made me like, "Oh my god...highlight that." You brought up the idea of contributing to a project you don't know something about. I find one of the most useful things is when people try the walkthrough, and then they put in an issue saying...there's a leap of logic here. [inaudible 32:56] happening, because this doesn't work for me.
>
> That's so helpful, because maybe everyone who wrote that walkthrough had such and such already configured, they had Kind already set up or whatever. Somebody goes in, and they follow the steps in there. It doesn't say, "Get your Docker daemon going." So people are like, this doesn't work.
>
> Well, it doesn't work unless we add in a little bit more context that only the newbie superpower of, "Hasn't never done this before," can actually give that feedback. People working on the project cannot do it. [laughs]

> *Michelle:* They absolutely, 100 percent agree.

> *Delyan:* One of the principles of this project has been let's make the code as readable as possible. I also hope that folks would come to the repo and take some joy, enjoy reading the code. If it's not enjoyable, please tweak it. Help us rename variables. Reformat, make it yours as well.

> *Bridget:* It's fantastic. I love it. We're almost at our time here. So let's just wrap by having each of you tell us where can our audience follow your work or learn more about anything, motorcycles or anything else that you are really interested in? What would you recommend people would check out?

> *Michelle:* I'm pretty active on Twitter, @michellenoorali, just my first and last name. My GitHub repo has a lot of random repositories in it, but I was really active, or have been really active with the home projects and stuff, a lot of random charts and apps. If you're looking for examples for things like that, I'm happy to provide those and answer questions on that kind of stuff. So, yeah, reach out.

> *Delyan:* Same here, find me on Twitter, @DelyanRaychev, and also on GitHub @DRaychev. My email is there, shoot me an email. We'd love to help you onboard to the repo. Answer any questions about service meshes proxies as SMI, Golang, you name it. Get in touch.

> *Bridget:* Awesome. So head over to [arresteddevops.com/service-mesh](http://arresteddevops.com/service-mesh). For this episode's show notes will have links to all the repos, and things people mentioned. Visit [arresteddevops.com/iTunes](http://arresteddevops.com/iTunes) and leave us a review in the iTunes store if you want to help other people find the podcast.
>
> I have no idea how that works. Apparently that is a thing that exists in the world. We're also on Spotify and iHeartRadio if you're into those systems as well.
>
> Thank you so much, Delyan and Michelle for joining today.

> *Delyan:* Thank you, Bridget. Thank you, Michelle.

> *Bridget:* I'm Bridget, Bridget Kromhout. This is Arrested DevOps, and remember, there's always DevOps in the banana stand.
>
> [music]
