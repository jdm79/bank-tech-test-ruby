require 'date'

RSpec.describe Date do
  subject { described_class.new }
  t = Time.new
  it 'returns the current date' do
    expect(subject.current_date).to eq(t.strftime("%d/%m/%Y"))
  end  
end
