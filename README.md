#hypertextual - a blogging framework to fight chickenshit minimalism

## what is this
hypertextual is the most lightweight blogging framework that I could come up with. hypertextual supports the following:

* display text in a browser
* load times so fast they'll peel the skin right off your face
* all posts are composed in your editor of choice, in Markdown
* previous / next post from blog post page
* view to show all posts from all time

hypertextual doesn't support the following:

* logging in and logging out
* a WYSIWIG editor
* comments

hypertextual doesn't support those things because honestly, you don't need them - or at least, I don't. If you need those things, they're not hard to come by in literally any other blogging platform - but I didn't want them, so I built this.

## why are you doing this
I read [http://idlewords.com/talks/website_obesity.htm](http://idlewords.com/talks/website_obesity.htm) and it struck a chord with me. I've always wanted to build a truly minimalist blog, so I rolled up my sleeves and did just that. It's fun to build things.

## how do I use this
hypertextual was developed in Rails, but you don't need to be a Rails developer, or even have Rails installed, to use it. You do, however, need:

### Dependencies:

* Git
* [Heroku Toolbelt](https://toolbelt.heroku.com/)
* A tenative grasp on [Markdown](https://daringfireball.net/projects/markdown/) (and this can be acquired in about four minutes because it is not hard)

### To go from zero to deploy, follow these simple steps:

0. Install any dependencies and create an account at [heroku.com](heroku.com)
0. `git clone git@github.com:angrysql/hypertextual.git`
0. `heroku login`
0. `heroku keys:add`
0. `heroku create`
0. `git push heroku master`

### To make this blog your own, follow these simple steps:

* Edit `$YOUR_FOLDER/hypertextual/app/views/layouts/application.html.erb`:
	0. Change the `<title>` and the `<h1>` to the name of your own blog
	0. Remove the bit about directing hatemail to [@angrysql](twitter.com/angrysql)
	0. Keep the bit about 'This blog powered by [hypertextual](github.com/angrysql/hypertextual)', if you would be so kind

### To write a blog post, follow these simple steps:

0. Create a new text file in `$YOUR_FOLDER/hypertextual/public/posts`
	* File naming convention is `YYYYMMDD_PostTitle.md`
		* Example: `20160101_HelloWorld.md`
0. Write your post in Markdown. HTML works, too.
0. `git add --all`
0. `git commit -am "yada yada yada"`
0. `git push heroku master`

See? Now that wasn't so bad, was it?
