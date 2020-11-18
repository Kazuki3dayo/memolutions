class CreateMemos < ActiveRecord::Migration[6.0]
  def change
    create_table :memos do |t|
      t.string     :title,           null: false
      t.text       :text,            null: false
      t.integer    :amount
      t.references :user,            foreign_key: true
      t.integer    :category_id,     null: false
      t.integer    :store_id
      t.integer    :genre_id
      t.integer    :when_id,         null: false
      t.timestamps
    end
  end
end
