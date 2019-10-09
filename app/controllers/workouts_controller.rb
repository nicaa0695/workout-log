class WorkoutsController < ApplicationController
    before_action :find_workout, only: [:show, :edit, :update, :destroy]
    def index
        @workouts = Workout.all 
    end 

    def show
    end 

    def new 
        @workout = Workout.new
    end 

    def create 
        @workout = Workout.new
        @workout.date = params[:date]
        @workout.training = params[:training]
        @workout.mood = params[:mood]
        @workout.length = params[:length]
        @workout.save
        redirect_to workout_path(@workout)
        # @workout = Workout.new(workout_params)
        # if @workout.save 
        #     redirect_to @workout
        # else 
        #     render 'show'
        # end 
    end 
    # def create
    #     workout = Workout.new
    #     workout.date = params[:date]
    #     workout.training = params[:training]
    #     workout.mood = params[:mood]
    #     workout.length = params[:length]
    #     workout.save
    #     redirect_to 'show'
    # end

    def edit
        @workout = Workout.find(params[:id])
    end
    
    def update
        @workout = Workout.find(params[:id])
        @workout.update(date: params[:workout][:date], training: params[:workout][:training], mood: params[:workout][:mood], length: params[:workout][:length])
        redirect_to workout_path(@workout)
        # if @workout.update(workout_params)
        #     redirect_to @workout 
        # else 
        #     render 'edit'
        # end 
    end 

    def destroy 
    end 

    private 

    def workout_params
        params.permit(:date, :training, :mood, :length) 
    end 

    def find_workout
        @workout = Workout.find(params[:id])
    end 
end
