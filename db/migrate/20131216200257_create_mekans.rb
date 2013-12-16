class CreateMekans < ActiveRecord::Migration
  def change
    create_table :mekans do |t|
      t.string :isim

      t.timestamps
    end
  end
end
