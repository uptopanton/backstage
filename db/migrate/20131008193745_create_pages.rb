class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :url
      t.string :title
      t.string :description
      t.text :body

      t.timestamps
    end
  end
end
