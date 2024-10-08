class BlogPostsController < ApplicationController
  # The `before_action` method is used to set up a filter that will run before
  # each action in the controller. In this case, we're using it to require the
  # user to be authenticated (`authenticate_user!`) for all actions except for
  # `index` and `show`.
  #
  # The `:except` option is used to specify which actions should _not_ have the
  # filter applied. In this case, we're specifying that the `index` and `show`
  # actions should not require authentication.
  #
  # So, to summarize, this code ensures that all actions in this controller
  # require the user to be authenticated, except for the `index` and `show`
  # actions.
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_blog_post, except: [:index, :new, :create]

  def index
    @blog_posts = user_signed_in? ? BlogPost.sorted : BlogPost.published.sorted
    @pagy, @blog_posts = pagy(@blog_posts)
  rescue Pagy::OverflowError
    redirect_to root_path(page: 1)
  end

  def show
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end

  def new
    @blog_post = BlogPost.new
  end

  def create
    @blog_post = BlogPost.new(blog_post_params)
    if @blog_post.save
      redirect_to @blog_post
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @blog_post.update(blog_post_params)
      redirect_to @blog_post
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @blog_post.destroy
    redirect_to root_path
  end

  private

  def blog_post_params
    params.require(:blog_post).permit(:title, :content, :cover_image, :published_at)
  end

  def set_blog_post
    if user_signed_in?
      @blog_post = BlogPost.find(params[:id])
    else
      @blog_post = BlogPost.published.find(params[:id])
    end
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end
end
