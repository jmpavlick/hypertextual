class BlogPostsController < ApplicationController
  def index
    renderer = Redcarpet::Render::HTML.new(render_options = {})
    markdown = Redcarpet::Markdown.new(renderer, extensions = {})

    posts = Dir[Rails.root + "public/posts/*.md"]

    # @content = markdown.render(IO.read(Rails.root + "public/posts/20160101_HelloWorld.md"))
    postfile = posts[0]
    @content = markdown.render(IO.read(postfile))

    # @date = "2016-01-01"
    datebase = File.basename(postfile).split("_")[0]
    @date = datebase[0..3] + "-" + datebase[4..5] + "-" + datebase[6..7]
  end

  def getpost
  end
end
