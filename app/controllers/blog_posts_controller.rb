class BlogPostsController < ApplicationController
  def index
    posts = Dir[Rails.root + "public/posts/*.md"].sort
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
    @posts = Dir[Rails.root + "public/posts/*.md"].sort.map { |x| titleify(File.basename(x, ".*")) }
  end
end
