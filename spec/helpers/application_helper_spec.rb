require File.dirname(__FILE__) + '/../spec_helper'

describe ApplicationHelper do

  before(:each) do
    @current_user = User.authenticate('student', 'studentpass')
  end
  
  it 'should generate quiz info' do
    current_user
    quiz_info(1).should == 'Not attempted.'
  end
  
end
