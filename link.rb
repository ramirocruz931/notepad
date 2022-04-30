class Link < Post

  def initialize
    super

    @url = ""
  end

  def read_from_console
    puts "adres ssilki"
    @url = STDIN.gets.chomp

    puts "chto za ssilka"
    @text = STDIN.gets.chomp
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime('%Y.%m.%d, %H:%M:%S')}\n\r"

    return [@url, @text, time_string]
  end
end