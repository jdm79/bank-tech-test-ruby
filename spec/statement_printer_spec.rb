require 'statement_printer'

RSpec.describe StatementPrinter do
  describe 'statement printer' do
    st = StatementPrinter.new(50)
    it 'creates a new statement printer' do
      expect(st).to be_instance_of(described_class)
    end


    it 'prints a statement' do
      st = StatementPrinter.new(50)
      expect(st.print).to eq('Current balance: 50')
    end
  end
end
