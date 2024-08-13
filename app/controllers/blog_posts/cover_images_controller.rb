class BlogPosts::CoverImagesController < ApplicationController
  # `BlogPosts::CoverImagesController` is a child controller of `ApplicationController`.
  # `ApplicationController` is the parent controller, and it inherits from `ActionController::Base`.
  #
  # The purpose of a child controller is to handle actions related to the child resource.
  # In this case, the parent resource is `BlogPost`, and the child resource is `CoverImage`.
  #
  # By inheriting from `ApplicationController`, we gain access to the functionality defined in `ApplicationController`.
  # This includes things like authentication, rendering views, and handling HTTP requests.
  include ActionView::RecordIdentifier

  before_action :authenticate_user!
  before_action :set_blog_post

  def destroy
    @blog_post.cover_image.purge_later

    respond_to do |format|
      format.html {redirect_to edit_blog_post_path(@blog_post)}
      format.turbo_stream { render turbo_stream: turbo_stream.remove(dom_id(@blog_post, :cover_image))}
    end
  end

  private

  def set_blog_post
    @blog_post = BlogPost.find(params[:blog_post_id])
  end
end
