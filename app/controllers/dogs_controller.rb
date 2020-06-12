class DogsController < ApplicationController

  def index
    @dogs = Dog.all.page params[:page]
    @page = params[:page]
    json_response(@dogs)
  end

  def show
    @dog = Dog.find(params[:id])
    json_response(@dog)
  end

  def create
    @dog = Dog.create!(dog_params)
    json_response(@dog, :created)
  end

  def update
    @dog = Dog.find(params[:id])
    if @dog.update!(dog_params)
      render status: 200, json: {
        message: "This dog has been successfully updated"
      }
    end
  end

  def destroy
    @dog = Dog.find(params[:id])
    if @dog.destroy 
      render status: 200, json: {
        message: "You've successfully deleted this dog"
      }
    end
  end
  
  def random
    first = Dog.first.id
    last = first + Dog.count
    dog_id = rand(first...last)
    @dog = Dog.find(dog_id)
    json_response(@dog)
  end

  def search
    @dogs = Dog.search_dogs(params[:query])
    json_response(@dogs)
  end

  private

  def dog_params
    params.permit(:name, :age, :breed, :is_available)
  end

end