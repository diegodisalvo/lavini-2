class PagesController < ApplicationController
  #this controller is for static pages, like curriculum and contact page

  def show
    render template: "pages/#{params[:page]}"
  end


end
