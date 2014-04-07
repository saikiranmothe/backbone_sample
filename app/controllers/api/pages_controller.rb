class Api::PagesController < ApplicationController
  def index
    pages = Page.all
    render :json => pages
  end

  def create
    page = Page.create(:name => params[:name])
    render :json => page
  end
end