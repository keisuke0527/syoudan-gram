class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text       :text,            null: false
      t.integer    :kind_id,         null: false
      t.references :user,            foreign_key: true
      t.references :opportunity,     foreign_key: true
      t.timestamps
    end
  end
end
