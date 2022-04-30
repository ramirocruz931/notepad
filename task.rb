require "date"
class Task < Post
  def initialize
    super

    @due_date = Time.now
  end

  def read_from_console
    puts "Chto nado sledat"
    @text = STDIN.gets.chomp

    puts "k kakoy date sdelat"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime('%Y.%m.%d, %H:%M:%S')}\n\r"

    deadline = "krayniy srok: #{@due_date}"

    return [deadline, @text, time_string]
  end
end