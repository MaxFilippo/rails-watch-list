class ListsController < ApplicationController
  before_action :set_list, only: %i[show edit update destroy]
  def index
    @lists = List.all
  end

  def show
    # @list = List.find(params[:id])
    @bookmark = Bookmark.new
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to list_path, status: :see_other
  end

  private

  def list_params
    
  end

  def set_list
    @list = List.find(params[:id])
  end
end
