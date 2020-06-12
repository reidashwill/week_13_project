class CatsController < ApplicationController

  def index
    @cats = Cat.all.page params[:page]
    @page = params[:page]
    json_response(@cats)
  end

  def show
    @cat = Cat.find(params[:id])
    json_response(@cat)
  end
 
  def create
    @cat = Cat.create!(cat_params)
    json_response(@cat, :created)
  end

  def update
    @cat = Cat.find(params[:id])
    if @cat.update!(cat_params)
      render status: 200, json: {
        message: "This cat has been successfully updated"
      }
    end
  end

  def destroy
    @cat = Cat.find(params[:id])
    if @cat.destroy 
      render status: 200, json: {
        message: "You've successfully deleted this cat"
      }
    end
  end

  def random
    first = Cat.first.id
    last = first + Cat.count
    cat_id = rand(first...last)
    @cat = Cat.find(cat_id)
    json_response(@cat)
  end

  def search
    @cats = Cat.search_cats(params[:query])
    json_response(@cats)
  end

  private

  def cat_params
    params.permit(:name, :age, :breed, :is_available)
  end

end