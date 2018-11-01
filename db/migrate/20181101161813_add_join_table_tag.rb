class AddJoinTableTag < ActiveRecord::Migration[5.2]
  def change
    create_join_table :gossips, :tags do |t|
    end
  end
end
