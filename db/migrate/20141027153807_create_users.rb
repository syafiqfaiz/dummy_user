class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |u|
      u.string :name, presence: true
      u.string :email, uniqueness: { case_sensitive: false}
      u.string :password

      u.timestamp
    end
  end
end
