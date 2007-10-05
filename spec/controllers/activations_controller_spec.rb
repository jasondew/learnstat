require File.dirname(__FILE__) + '/../spec_helper'

describe ActivationsController do

  it 'should activate users' do
    @user = mock_model(User)
    @user.should_receive(:activated?).once.and_return(false)
    @user.should_receive(:activate).once
    @user.should_receive(:course).once.and_return(1)

    User.stub!(:find_by_activation_code).and_return(@user)
    login_as(:student_1)

    get 'new', :activation_code => 'test'

    flash[:notice].should == 'Signup complete!'
    response.should redirect_to( course_path(1) )
  end

end
