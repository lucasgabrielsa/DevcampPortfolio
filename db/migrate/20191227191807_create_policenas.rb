class CreatePolicenas < ActiveRecord::Migration[6.0]
  def change
    create_table :policenas do |t|
      t.string :name
      t.integer :idade
      t.text :comentario

      t.timestamps
    end
  end
end
