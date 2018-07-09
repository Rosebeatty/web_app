class Display
  def initialize(output = $stdout, input = $stdin)
    @output = output
    @input = input
  end
    
  def present(message)
    @output.puts message
  end
    
  def receive 
    @input.gets.chomp
  end
end

RSpec.describe do
 it "displays 'Hello there!'" do
        output = StringIO.new
        display = Display.new(output)
        display.present("Hello there!")
        expect(output.string).to eq("Hello there!\n")
  end 
end