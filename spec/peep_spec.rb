require 'peep'

describe Peep do
  describe '.all' do
    it 'returns all peeps' do
      connection = PG.connect(dbname: 'chitter_test')

      connection.exec("INSERT INTO peeps (message) VALUES ('This is a peep!');")
      connection.exec("INSERT INTO peeps (message) VALUES ('Wow, its a hot one today');")
      connection.exec("INSERT INTO peeps (message) VALUES ('Liverpool are the best premiership team...FACT!');")
      
      peeps = Peep.all
      
      expect(peeps).to include("This is a peep!")
      expect(peeps).to include("Wow, its a hot one today")
      expect(peeps).to include("Liverpool are the best premiership team...FACT!")
    end
  end
end
