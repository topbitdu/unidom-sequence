class CreateUnidomSequences < ActiveRecord::Migration

  def change

    create_table :unidom_sequences, id: :uuid do |t|

      t.column :sequentiality_code, 'char(4)', null: false, default: nil

      t.string  :prefix,        null: false, default: '', limit: 200
      t.integer :serial_number, null: false, default: 0,  limit: 8

      t.text :description
      t.text :instruction

      t.column   :state, 'char(1)', null: false, default: 'C'
      t.datetime :opened_at,        null: false, default: Time.utc(1970)
      t.datetime :closed_at,        null: false, default: Time.utc(3000)
      t.boolean  :defunct,          null: false, default: false
      t.jsonb    :notation,         null: false, default: {}

      t.timestamps null: false

    end

    add_index :unidom_sequences, :prefix

  end

end
