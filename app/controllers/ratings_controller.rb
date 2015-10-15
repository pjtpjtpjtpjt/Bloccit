class RatingsController < ApplicationController
    

    def show
    @rating = Rating.find(params[:id])
    end


   def new
    @rating = Rating.new(ratable_id: params[:ratable_id], ratable_type: params[:ratable_type])
    
   end
   
   def create
       @rating = Rating.new(rating_params)
       
       if @rating.save
           flash[:notice] = "Your rating has been saved"
           redirect_to @rating.ratable
           
       else
           flash[:notice] = "Your rating was not saved"
           render :new
       end
   
  
   end
   
   private
   
   def rating_params
       params.require(:rating).permit(:name, :ratable_id, :ratable_type)
       
   end
  
    
    
end
