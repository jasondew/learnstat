require File.dirname(__FILE__) + '/../spec_helper'

describe Document do
  before(:each) do
    @document = Document.new
  end

  it "should be valid" do
    @document.should be_valid
  end

  it 'should clean filenames like so' do
    @document.uploaded_file = Struct.new( :original_filename, :content_type, :read ).new(
                                          'we#\)ird.st(!*uf&f', 'text/csv', 'some,data,here' )
    @document.filename.should == 'we___ird.st___uf_f'
  end
end
