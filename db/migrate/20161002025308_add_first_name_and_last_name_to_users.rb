class AddFirstNameAndLastNameToUsers < ActiveRecord::Migration
  def up
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string

    User.all.each do |user|
      split_name = user.name.split(" ")
      user.first_name = split_name.first
      user.last_name = split_name.last
      user.save
    end

    remove_column :users, :name
  end

  def down
    add_column :users, :name, :string

    User.all.each do |user|
      name = [user.first_name, user.last_name].join(" ")
      user.name = name
      user.save
    end

    remove_column :users, :first_name
    remove_column :users, :last_name
  end
end
