class MouthsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]

    def index
        @mouths=Mouth.order(write_day: :asc)
        @mouths=@mouths.page(params[:page]).per(10)
    end

    def show
        @mouth=Mouth.find(params[:id])
    end

    def new
        @mouth=Mouth.new
    end

    def edit
        @mouth=Mouth.find(params[:id])
    end

    def create
        @mouth=Mouth.new(params[:mouth])
        if @mouth.save
            redirect_to @mouth, notice: "口コミを投稿しました。"
        else
            render "new"
        end
    end

    def update
        @mouth=Mouth.find(params[:id])
        @study.assign_attributes(params[:mouth])
        if @mouth.save
            redirect_to @mouth, notice: "口コミ内容を変更しました。"
        else
            render "edit"
        end
    end

    def destroy
        @mouth=Mouth.find(params[:id])
        @mouth.destroy
        redirect_to :mouths, notice: "口コミを削除しました。"
    end

    def search
        @mouths=Mouth.search(params[:q])
        @mouths=@mouths.page(params[:page]).per(10)
        render "index"
    end
end
