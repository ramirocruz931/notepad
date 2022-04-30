class Memo < Post

  def read_from_console
    puts "New zametka (pishi do strochki end):"

    @text = []
    line = nil

    while line != "end" do
      line = STDIN.gets.chomp
      @text << line
    end

    @text.pop
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime('%Y.%m.%d, %H:%M:%S')}\n\r"

    return @text.unshift(time_string)
  end
end