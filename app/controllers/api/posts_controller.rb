class Api::PostsController < ApplicationController

	# GET /posts
	def index
		@posts = Post.order('updated_at DESC')
	end

	# POST /posts
	def create
    @post = Post.new(post_params)

    if @post.save
      render :show, status: :created
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end
	
	# PATCH/PUT /posts/1
	def update
    @post = Post.find(params[:id])
     
    if @post.update(post_params)
      render :show, status: :ok
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      render_200
    else
      render_error
    end
  end


    private

    	def post_params
    	  params.require(:post).permit(:book_name, :title, :story_1, :story_2, :story_3, :story_4)
    	end

      # @post = Post.find(params[:id])

end