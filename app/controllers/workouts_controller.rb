class WorkoutsController < ApplicationController
    def index 
    end 

    def show 
    end 

    def new 
        @workout = Workout.new
    end 

    # def create 
    #     @workout = Workout.new(workout_params)
    #     if @workout.save 
    #         redirect_to @workout
    #     else 
    #         render 'new'
    #     end 
    # end 
    def create
        workout = Workout.new
        workout.date = params[:date]
        workout.workout = params[:workout]
        workout.mood = params[:mood]
        workout.length = params[:length]
        workout.save
        render 'show'
    end

    def edit 
    end
    
    def update 
    end 

    def destroy 
    end 

    private 

    # def workout_params
    #     params.require(:workout).permit(:date, :workout, :mood, :length) 
    # end 

    def find_workout 
    end 
end
