require 'spec_helper'
require 'rails_helper'

require_relative '../../app/models/book.rb'

describe Book do
  before { @book = FactoryGirl.build(:book) }

  subject { @book }

  it { should respond_to(:title) }
  it { should respond_to(:author) }
  it { should respond_to(:subtitle) }
  it { should respond_to(:year) }

  it { should be_valid }
end
