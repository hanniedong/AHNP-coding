class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :user_agent
      t.integer :counter
      t.timestamp :first_visit
      t.timestamp :recent_visit
    end
  end
end
