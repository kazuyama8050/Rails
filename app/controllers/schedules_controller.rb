class SchedulesController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @schedules=Schedule.order(event_day: :desc)
        @schedules=@schedules.page(params[:page]).per(10)
    end

    def show
        @schedule=Schedule.find(params[:id])
    end

    def new
        @schedule=Schedule.new
    end

    def edit
        @schedule=Schedule.find(params[:id])
    end

    def create
        @schedule=Schedule.new(params[:schedule])
        if @schedule.save
            redirect_to @schedule, notice: "スケジュールを登録しました。"
        else
            render "new"
        end
    end

    def update
        @schedule=Schedule.find(params[:id])
        @schedule.assign_attributes(params[:schedule])
        if @schedule.save
            redirect_to @schedule, notice: "スケジュールを変更しました。"
        else
            render "edit"
        end
    end

    def destroy
        @schedule=Schedule.find(params[:id])
        @schedule.destroy
        redirect_to :schedules, notice: "スケジュールを削除しました。"
    end
    
    def search
        @schedules=Schedule.search(params[:q])
        render "index"
    end
end
