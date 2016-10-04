class StaticPagesController < ApplicationController
def home
	@post_var=Post.limit(15).order("created_at DESC")
end
end