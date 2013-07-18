class CreateModels < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.timestamps
    end
    add_index :dogs, :name, :unique => true

    create_table :cats do |t|
      t.string :name
      t.timestamps
    end
    add_index :cats, :name, :unique => true

    create_table :dogs_image_types, id: false do |t|
      t.belongs_to :dog
      t.belongs_to :image_type
    end

    create_table :cats_image_types, id: false do |t|
      t.integer :cat_id, :image_type_id
    end

   create_table :images do |t|
      t.string :name
      t.references :attachable, polymorphic: true
      t.timestamps
    end
    add_index :images, [:attachable_id, :attachable_type]

    create_table :image_types do |t|
      t.string :name
      t.integer :crop_x
      t.integer :crop_y
      t.timestamps
    end
  end
end
