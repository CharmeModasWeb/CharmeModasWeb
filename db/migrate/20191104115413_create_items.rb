class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.references :produto, foreign_key: true
      t.belongs_to :pedido, foreign_key: true

      t.timestamps
    end
  end
end
