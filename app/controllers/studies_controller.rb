class StudiesController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @studies=Study.order(id: :desc)
        @studies=@studies.page(params[:page]).per(10)
    end

    def show
        @study=Study.find(params[:id])
    end

    def new
        @study=Study.new
    end

    def edit
        @study=Study.find(params[:id])
    end

    def create
        @study=Study.new(params[:study])
        if @study.save
            redirect_to @study, notice: "記事を投稿しました。"
        else
            render "new"
        end
    end

    def update
        @study=Study.find(params[:id])
        @study.assign_attributes(params[:study])
        if @study.save
            redirect_to @study, notice: "記事内容を変更しました。"
        else
            render "edit"
        end
    end

    def destroy
        @study=Study.find(params[:id])
        @study.destroy
        redirect_to :studies, notice: "記事を削除しました。"
    end

    def search
        @studies=Study.search(params[:q])
        @studies=@studies.page(params[:page]).per(10)
        render "index"
    end
end
