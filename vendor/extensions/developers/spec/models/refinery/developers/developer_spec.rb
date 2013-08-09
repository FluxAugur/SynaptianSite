require 'spec_helper'

module Refinery
  module Developers
    describe Developer do
      describe "validations" do
        subject do
          FactoryGirl.create(:developer,
          :name => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:name) { should == "Refinery CMS" }
      end
    end
  end
end
