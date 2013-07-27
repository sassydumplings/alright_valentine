class Message < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer   :sender_id
      t.integer   :receiver_id
      t.string    :subject
      t.text      :content
      t.boolean   :unread,    :default => false
    end
  end
end
