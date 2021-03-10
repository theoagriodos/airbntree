class PagesController < ApplicationController
  def home
    @trees = Tree.all
  end
end
