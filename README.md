shipmonk
========

Environment for prototyping, developing, and maintaining static websites

I do this quite frequently: I'll just want to play around with some HTML/CSS/Javascript, either for an idea I have for a website design, a CSS attribute I've never seen before that I want to try out, or a Javascript library I want to play aroudn with. Regardless, I always end up with the same problem.

* I want a local server I can start up quickly, like as in as soon as I create the project
* I want to use HAML because HTML is irritating after using HAML
* I hate repeating myself for things like menus

I came up with the idea for shipmonk to be a dev-happy static website prototyping environment that can then generate html files that can be transferred to a static host server via FTP or SSH or whatever you want to use to deploy.

I've since expanded on the vision behind what I want Shipmonk to be. Picture a website development environment that can take a website from a prototype you do for a client, to a "compiled" version of your prototype to be that client's website, all easily maintainable through a dynamic templating environment that you can then recompile and redistribute to the host site. Then if the client's needs grow, they can graduate to a user friendly CMS system all the while the entire codebase never has to switch frameworks.

Below is a list of features I want to see eventually added to Shipmonk, because right now the current feature set is quite small. It's just a basic library I use myself to quickly whip up proof of concept websites.

TODO
==========
* A CLI command to generate a new shipmonk projects - our `rails new` equivalent.
* A CLI command for compiling the website into HTML - I think right now I just use a local ruby script to do this on a project per project basis
* A CLI command for starting the server on an agreed upon port - our `rails server` equivalent.
* The templating engine needs beefing up, for supporting and selecting layouts through a convention over configuration approach
* Supporting multiple templating engines beyond just HAML. ERB, Markdown, or whatever else someone may want to add support for.
* A CMS UI
* Having the website that's hosted by the internal server support being run under a Rails Engine
* Having the CMS UI run under a Rails Engine
* A cool logo/mascot that involves a ship (old school sailing ship) or just the crowsnest, a Chipmunk dressed as a monk with possibly some pirate elements woven into it.
