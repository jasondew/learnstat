require File.dirname(__FILE__) + '/../spec_helper'

describe ApplicationHelper do

  it 'should format datetimes' do
    datetime_format(Time.now).should == Time.now.strftime("%A, %B %d at %I:%M%p")
  end

  it 'should format percents' do
    percent_format(nil).should == '**'
    percent_format(0.87325).should == '87.33%'
  end

end
