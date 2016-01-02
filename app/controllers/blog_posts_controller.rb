class BlogPostsController < ApplicationController
  def index
    posts = Dir[Rails.root + "public/posts/*.md"]
    @postindex = params[:p] == nil ? posts.count - 1 : params[:p].to_i
    renderer = Redcarpet::Render::HTML.new(render_options = {})
    markdown = Redcarpet::Markdown.new(renderer, extensions = {})

    postfile = posts[@postindex]
    @content = markdown.render(IO.read(postfile))

    @date = postdate(File.basename(postfile, ".*"))
    @next_title = posts[@postindex + 1] == nil ? nil : titleify(File.basename(posts[@postindex + 1], ".*"))
    @previous_title = @postindex == 0 ? nil : titleify(File.basename(posts[@postindex - 1], ".*"))
  end

  def allposts
    # post title is derived from filename by removing the date prefix
    # then adding a single space character at every new capital letter
    # i.e., 20150101_HelloHowAreYou becomes Hello How Are You
    # @posts = Dir[Rails.root + "public/posts/*.md"].map { |x| File.basename(x, ".*").split("_")[1].split(/(?=[A-Z])/).join(" ") }
    @posts = Dir[Rails.root + "public/posts/*.md"].map { |x| titleify(File.basename(x, ".*")) }
  end
end
