class Contact < ActiveRecord::Base

  def self.columns() @columns ||= []; end
 
  def self.column(name, sql_type = nil, default = nil, null = true)
    columns << ActiveRecord::ConnectionAdapters::Column.new(name.to_s, default, sql_type.to_s, null)
  end
 
  column :name, :string
  column :email, :string
  column :message, :text
 
  validates_presence_of :name
  validates_format_of :email, :with => /^$|^\S+\@(\[?)[a-zA-Z0-9\-\.]+\.([a-zA-Z]{2,4}|[0-9]{1,4})(\]?)$/ix
  validates_presence_of :message
  
end
