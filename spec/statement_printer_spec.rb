require 'statement_printer'

RSpec.describe StatementPrinter do
  describe 'statement printer' do
    subject { described_class.new }

    it 'creates a new statement printer' do
      expect(subject).to be_instance_of(described_class)
    end

    it 'prints a statement' do
      expect(subject.print).to eq('hello world')
    end
  end
end
