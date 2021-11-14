class TodolistsController < ApplicationController
    def index
        @lists = List.all
    end
    def new
        @list = List.new
    end
    def create
        @list = List.new(listparams)
        # byebug
        if @list.save
            redirect_to todolists_path
        else
            render :new
        end
    end
    def show
        @list = List.find(params[:id])
    end
    def edit
        @list = List.find(params[:id])
    end
    def update
        list = List.find(params[:id])
        list.update(listparams)
        redirect_to todolist_path(list.id)
    end
    def destroy
        list = List.find(params[:id])
        list.destroy
        redirect_to todolists_path
    end

    private
    def listparams
        params.require(:list).permit(:title, :body, :image)
    end
end
