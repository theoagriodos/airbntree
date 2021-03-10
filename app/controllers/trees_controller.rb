class TreesController < ApplicationController
  def index
    @trees = Tree.all
  end

  def show
    @tree = Tree.find(params[:id])
  end

  def new
    @tree = Tree.new
  end

  def create
    @tree = Tree.find(tree_params)
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
    @tree = current_user.trees
    @tree.destroy
    redirect_to trees_path
  end

  private

  def tree_params
    params.require(:tree).permit(:name, :description, :localisation, :price)
  end
end
