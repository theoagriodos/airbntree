class PagesController < ApplicationController
  def home
    @trees = Tree.all
    @markers = @trees.geocoded.map do |tree|
      {
        lat: tree.latitude,
        lng: tree.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { tree: tree })
      }
    end
  end
end
