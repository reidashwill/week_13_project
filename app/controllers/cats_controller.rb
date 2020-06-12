class CatsController < ApplicationController

  def index
    @cats = Cat.all
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
    @first = Cat.first.id
    @last = @first + Cat.count
    @cat = Cat.find(rand(@frist...@last))
  end

  private

  def cat_params
    params.permit(:name, :age, :is_available)
  end

end