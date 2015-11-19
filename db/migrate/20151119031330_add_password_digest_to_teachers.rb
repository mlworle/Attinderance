class AddPasswordDigestToTeachers < ActiveRecord::Migration
  def change
  	add_column :teachers, :password_digest, :string
  	remove_column :teachers, :password, :string
  	remove_column :teachers, :password_confirmation, :string
  end
end
