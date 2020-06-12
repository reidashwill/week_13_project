class AddAttributes < ActiveRecord::Migration[5.2]
  def change
    add_column(:cats, :breed, :string)
    add_column(:dogs, :breed, :string)
  end
end
