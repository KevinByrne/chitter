require 'peep'

describe Peep do
  describe '.all' do
    it 'returns all peeps' do
      peeps = Peep.all

      expect(peeps).to include("This is a peep")
      expect(peeps).to include("Wow, it's a hot one today")
      expect(peeps).to include("Liverpool are the best premiership team...FACT!")
    end
  end
end
