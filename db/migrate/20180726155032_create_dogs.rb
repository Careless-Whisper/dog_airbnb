class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.belongs_to :city
      t.timestamps
    end
  end
end
