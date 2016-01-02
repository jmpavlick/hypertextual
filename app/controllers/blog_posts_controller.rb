class BlogPostsController < ApplicationController
  def index
    @postindex = params[:p] == nil ? 0 : params[:p].to_i
    renderer = Redcarpet::Render::HTML.new(render_options = {})
    markdown = Redcarpet::Markdown.new(renderer, extensions = {})

    posts = Dir[Rails.root + "public/posts/*.md"]
    postfile = posts[@postindex]
    @content = markdown.render(IO.read(postfile))

    datebase = File.basename(postfile).split("_")[0]
    @date = datebase[0..3] + "-" + datebase[4..5] + "-" + datebase[6..7]
    @next_title = posts[@postindex + 1] == nil ? nil : File.basename(posts[@postindex + 1], ".*").split("_")[1]
    @previous_title = @postindex == 0 ? nil : File.basename(posts[@postindex - 1], ".*").split("_")[1]
  end

  def allposts
    @posts = Dir[Rails.root + "public/posts/*.md"].map { |x| File.basename(x, ".*").split("_")[1] }
  end
end
