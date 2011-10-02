class ChessOpener
  def initialize
    @data = {}
    load_data
  end
  
  def self.load(filename)
    dsl = new
    dsl.instance_eval(File.read(filename))
  end
  
  def h4
    puts "=========="
    puts @data.assoc("h4")
    puts "=========="    
  end

  def a3
    puts "=========="
    puts @data.assoc("a3")
    puts "=========="    
  end

  def method_missing(method_name, *args, &block)
    msg = "You tried to call the method #{method_name}. There is no such method."
    raise msg
  end

  private
  def load_data
    @data = {"a3" => ["Anderssen's Opening Polish Gambit: 1. a3 a5 2. b4",
                      "Anderssen's Opening Creepy Crawly Formation: 1. a3 e5 2. h3 d5",
                      "Anderssen's Opening Andersspike: 1. a3 g6 2. g4"],
             "h4" => ["Koola-Koola continues 1.h4 a5",
                      "Wulumulu continues 1.h4 e5 2. d4",
                      "Crab Variation continues 1.h4 any 2. a4",
                      "Borg Gambit continues 1.h4 g5.",
                      "Symmetric Variation continues 1.h4 h5"]}
  end
  
end
