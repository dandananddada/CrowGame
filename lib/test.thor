class Test < Thor
  desc "example FILE", "an example task that does something with a file"
  def example()
    puts "You supplied the file"
  end
end