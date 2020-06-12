class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.column :name, :string
      t.column :age, :integer
      t.column :is_available, :boolean, default: true
    end
  end
end
