require 'rails_helper'

RSpec.describe User, type: :model do

    

      it { should validate_presence_of(:username) }
      it { should validate_presence_of(:password_digest) }
      it { should validate_presence_of(:session_token) }
      it { should validate_length_of(:password).is_at_least(6) }
      it { should have_many(:goals) }

      describe "uniqueness" do 
        before(:each) do 
            create(:user  ) 
        end
        context "validate that :username is case-sensitively unique" do
        it { should validate_uniqueness_of(:username) }
        end
        context "validate that :username is case-sensitively unique" do
        it { should validate_uniqueness_of(:session_token) }
        end
      end
  
  

    

    

end
