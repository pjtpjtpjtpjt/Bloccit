 class Api::V1::CommentsController < Api::V1::BaseController

   before_filter :authenticate_user, except: [:show]
   before_filter :authorize_user, except: [:show]
 
   def show
    @post = Post.find(params[:id])
     render json: @post.comments.to_json, status: 200
   end
   
 end