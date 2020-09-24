class CompaniesController < ApplicationController
    before_action :authenticate_user!

    def index
        @companies=Company.order("id")
    end

    def show
        @company=Company.find(params[:id])
    end

    def new
        @company=Company.new
    end

    def edit
        @company=Company.find(params[:id])
    end

    def create
        @company=Company.new(params[:company])
        if @company.save
            redirect_to @company, notice: "企業情報を登録しました。"
        else
            render "new"
        end
    end

    def update
        @company=Company.find(params[:id])
        @company.assign_attributes(params[:company])
        if @company.save
            redirect_to @company, notice: "企業情報を更新しました。"
        else
            render "edit"
        end
    end

    def destroy
        @company=Company.find(params[:id])
        @company.destroy
        redirect_to :companies, notice: "企業情報を削除しました。"
    end

    def search
        @companies=Company.search(params[:q])
        render "index"
    end

end
