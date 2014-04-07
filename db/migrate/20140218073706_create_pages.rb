class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :title
      t.string :background_color
      t.integer :padding
      t.integer :margin
      t.string :font

      t.timestamps
    end
  end
end
