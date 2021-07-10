class Api::PostsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        @posts = Post.all.includes(:user, :likes)
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            render :show
        else
            render json: @book.errors.full_messages, status: 422
        end
    end

    # local Books to Book in show, destroy and update
    def show
        @post = Post.find(params[:id])
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        render :show
    end

    def update
        @post = Post.find(params[:id])
        if @post.update(post_params)
            render :show
        else
            render json: @book.errors.full_messages
        end
    end


    private 

    # def post_params
    #     params.require(:post).permit()
    # end
end
