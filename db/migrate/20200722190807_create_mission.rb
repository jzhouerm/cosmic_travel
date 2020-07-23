class CreateMission < ActiveRecord::Migration[6.0]
  def change
    create_table :missions do |t|
      t.integer :planet_id
      t.integer :scientist_id
    end
  end
end
