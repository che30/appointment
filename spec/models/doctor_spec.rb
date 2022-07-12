require 'rails_helper'

# RSpec.describe Doctor, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

RSpec.describe Doctor, type: :model do
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:specialty) }
  it { should validate_presence_of(:email) }
end
