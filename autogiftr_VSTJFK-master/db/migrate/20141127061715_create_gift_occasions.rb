class CreateGiftOccasions < ActiveRecord::Migration
  def change
    create_table :gift_occasions do |t|
      t.references :gift, index: true
      t.references :occasion, index: true

      t.timestamps
    end
  end
end
