class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table "users", :force => true do |t|
      t.column :course_id,                 :integer
      t.column :login,                     :string
      t.column :email,                     :string
      t.column :first_name,                :string
      t.column :last_name,                 :string
      t.column :blackboard_username,       :string
      t.column :registration_code,         :string
      t.column :instructor,                :boolean, :default => false

      t.column :crypted_password,          :string, :limit => 40
      t.column :salt,                      :string, :limit => 40
      t.column :created_at,                :datetime
      t.column :updated_at,                :datetime
      t.column :remember_token,            :string
      t.column :remember_token_expires_at, :datetime
      
      t.column :activation_code, :string, :limit => 40
      t.column :activated_at, :datetime
    end

    User.create( :login => 'jasondew', :email => 'jason.dew@gmail.com', :first_name => 'Jason', :last_name => 'Dew',
                 :blackboard_username => 'dew', :password => 'password', :password_confirmation => 'password',
                 :registration_code => 'stat110f07', :instructor => true ).activate

    User.create( :login => 'student', :email => 'jason.dew@gmail.com', :first_name => 'Student', :last_name => 'X',
                 :blackboard_username => 'student', :password => 'password', :password_confirmation => 'password',
                 :registration_code => 'stat110f07' ).activate

  end

  def self.down
    drop_table "users"
  end
end
