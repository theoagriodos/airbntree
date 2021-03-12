class TreesController < ApplicationController
  def index
    @trees = Tree.all
  end

  def show
    @current_user = current_user
    @tree = Tree.find(params[:id])
    @markers = [{
        lat: @tree.latitude,
        lng: @tree.longitude
      }]

  end

  def new
    @tree = Tree.new
  end

  def create
    @tree = Tree.new(tree_params)
    @tree.user = current_user
    if @tree.save
      redirect_to tree_path(@tree)
    else
      render "new"
    end
  end

  def edit
    @tree = Tree.find(params[:id])
  end

  def update
    @tree = Tree.find(params[:id])
    @tree.update(tree_params)
    redirect_to tree_path(@tree)
  end

  def destroy
    @tree = Tree.find(params[:id])
    @tree.destroy
    redirect_to user_path(current_user)
  end

  private

  def tree_params
    params.require(:tree).permit(:name, :description, :localisation, :price, :photo)
  end
end
