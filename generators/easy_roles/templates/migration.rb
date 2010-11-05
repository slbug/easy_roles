class AddRolesTo<%= class_name.pluralize %> < ActiveRecord::Migration
  def self.up
    add_column :<%= table_name %>, :<%= args.first %>, :string, :default => "--- []"
  end

  def self.down
    remove_column :<%= table_name.to_sym %>, :<%= args.first.to_sym %>
  end
end