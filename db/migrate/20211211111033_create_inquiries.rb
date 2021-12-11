class CreateInquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiries do |t|
      t.string  :name
      t.string  :email
      t.integer  :title, default: 0, null: false
      t.text  :inquiry
      t.text :reply
      t.string :replyok
      t.timestamps
    end
  end
end
