Rails.application.routes.draw do
  root 'blog_posts#index'
  get 'blog_posts/index'
  get 'blog_posts/allposts'
end
