module CategoryTree
  class Api::CategoriesController < ApplicationController
    def index
      @categories = Category.order(:name)
      @categories = @categories.search(params[:term]) if params[:term].present?
    end

    def show
      @category = Category.find(params[:id])
    end
  end
end
