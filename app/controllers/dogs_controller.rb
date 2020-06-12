class DogsController < ApplicationController

  def index
    @dogs = Dog.all
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

  private

  def dog_params
    params.permit(:name, :age, :is_available)
  end

end