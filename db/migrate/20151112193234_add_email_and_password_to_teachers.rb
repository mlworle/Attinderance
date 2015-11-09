class AddEmailAndPasswordToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :email, :string
    add_column :teachers, :password, :string
    add_column :teachers, :password_confirmation, :string
  end
end
