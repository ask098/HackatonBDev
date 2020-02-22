class AthletesController  < ApplicationController

    def index
        @athletes = Athlete.all
       
    end
    
     def new
         @athlete = Athlete.new
     end
    
     def create
         @athlete = Athlete.new(athlete_params)
         #@athlete.user_id = current_user.id
         if @athlete.save
             redirect_to @athlete
             flash[:notice] = "athlete created!"
         else
             redirect_back(fallback_location: root_path)
             flash[:alart] = "athlete creation failed"
         end    
     end
    
    def show
        @athlete = Athlete.find(params[:id])
    end
    
    # def destroy
    #     athlete = Athlete.find(params[:id])
      
    #     if current_user == athlete.user
    #         athlete.destroy
    #         redirect_to "/athletes"
    #         flash[:notice] = "athlete destroyed"
    #     else    
    #         redirect_back(fallback_location: root_path)
    #         flash[:alert] = "Not autorized to delete post"
    #     end    
    # end
    
    def edit
        @athlete = Athlete.find(params[:id])
        if current_user != @athlete.user
        redirect_back(fallback_location: root_path)
        flash[:alert] = "Not autorized to edit athlete profile"
        end
    end
    
    def update
        athlete = Athlete.find(params[:id])
        if current_user == athlete.user
            athlete.update(update_params)
            redirect_to athlete
            flash[:notice] = "athlete updated"
        else    
            redirect_back(fallback_location: root_path)
            flash[:alert] = "Not autorized to edit athlete"
        end    
    end
    
    
    
    private
    def athlete_params
        params.require(:athlete).permit(:account_type,:name, :age, :gender, :sport_name, :nacionality, :cur_company, :bio,)
    end
    def update_params
        params.require(:athlete).permit(:name, :age, :gender, :sport_name, :nacionality, :cur_company, :bio,)
    end
end    