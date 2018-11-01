class AddJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :privatemessages do |t|
    end
  end
end
