class ExperiencesController < ApplicationController

    def index
         @experiences = Experience.all
         #
    end

    def show
        @experience = Experience.find(params[:id])
    end

    def new
        @experience = Experience.new
    end

    def create
        @experience = Experience.new(experience_params)

        if @experience.save
            redirect_to @experience, notice: 'Experience was succesfully created.'
        else
            render :new
        end
    end

    def edit
        @experience = Experience.find(params[:id])
    end

    def update
        experience = Experience.find(params["id"])
        experience.update(experience_params)
        redirect_to experience
    end

    def destroy
        Experience.find(params[:id].destroy)
        redirect_to "/experience"
    end
    private
    
    def experience_params
        params.require(:experience).permit(:name_event, :ranking, :scoring, :date_event, :country, :description)
    end
end
