require 'pg'

class Peep
  def self.all
    connection = PG.connect(dbname: 'chitter')
    result = connection.exec('SELECT * FROM peeps')
    result.map { |peeps| peeps['message'] }
    # [
    #   "This is a peep",
    #   "Wow, its a hot one today",
    #   "Liverpool are the best premiership team...FACT!"
    # ]
  end
end