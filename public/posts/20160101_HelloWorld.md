## Hello World: Complexity For Complexity's Sake Is The Enemy Of Progress.
Today, I read a very interesting article on minimalism, browser performance, and the state of the web. In better interest of not boring you to death with my own inadequate interpretation, here's the link: [http://idlewords.com/talks/website_obesity.htm](http://idlewords.com/talks/website_obesity.htm)

Read it yet? No? Fucking read it, the whole thing. I'll wait.

...

Ready? Good. So I'm doing something that I've always wanted to do - I'm writing my own fucking blogging platform. Here are the features:

* Posts are fucking Markdown. There is literally no reason to use anything else.
* Posts are text files that you upload to the blog by pushing to your Git repo.
* No comments. Most agree that you shouldn't fucking read them, so why let anyone write them?
* No JavaScript. When has JavaScript ever done anything to remove the barrier between text and eyeballs? Did _War and Peace_ suffer readability issues from lack of JavaScript support? That's what I thought.
* Literally anything else that could possibly be construed as YAGNI has been removed.
* I did this in Rails because it took all of fifteen minutes to get from _rails new_ to a working minimum viable product. I could probably be leaner by using something more basic, but I'm not really a Web developer, and this is what I know.

The source code is available [here](http://github.com/angrysql/hypertextual). Host on Heroku, host your code on Bitbucket or Github or I-don't-fucking-care and call it a fucking day. Heroku's free tier will probably work just fine - they prorate to the second, and unless you are servicing 18 hours of traffic a day to your blog written on a framework that responds and loads pages in milliseconds, then that's all you're going to need.

Happy blogging, and remember: _if you're not part of the solution, you're part of the problem._
