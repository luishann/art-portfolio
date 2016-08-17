class CreateIllustrations < ActiveRecord::Migration[5.0]
  def change
    create_table :illustrations do |t|
      t.text :title
      t.text :path
      t.text :description

      t.timestamps
    end
  end
end
