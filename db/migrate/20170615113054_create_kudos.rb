class CreateKudos < ActiveRecord::Migration
  def change
    create_kudos :users do |t|
      t.string :user_name, :null => false
      t.string :subject, :null => false
      t.string :description, :null => false
      t.integer :applause, :null => false
      t.references :user

      t.timestamps :null =>false
    end
  end
end
