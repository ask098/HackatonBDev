class CompaniesController  < ApplicationController

    def index
        @companies = Company.all
        #
    end
    
    def show
        @companie =Company.find(params[:id])
    end
    
    def edit
        @companie =Company.find(params[:id])
        if current_user != @companie.user
        redirect_back(fallback_location: root_path)
        flash[:alert] = "Not autorized to edit company profile"
        end
    end
    
    def update
        companie =Company.find(params[:id])
        if current_user == companie.user
            companie.update(update_params)
            redirect_to companie
            flash[:notice] = "companie updated"
        else    
            redirect_back(fallback_location: root_path)
            flash[:alert] = "Not autorized to edit company"
        end    
    end
    
    
    
    private
    def company_params
        params.require(:companie).permit(:account_type,:nombre, :nacionality, :industry, :sport_nombre, :bio,)
    end
    def update_params
        params.require(:companie).permit(,:nombre, :nacionality, :industry, :sport_name, :bio,)
    end
end    