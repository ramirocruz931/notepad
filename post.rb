class Post

  def self.post_types
    [Memo, Link, Task]
  end

  def self.create(type_index)
    return post_types[type_index].new
  end

  def initialize
    @created_at = Time.now
    @text = nil
  end

  def read_from_console
    #sdf
  end

  def to_strings
    #sdfdsf
  end

  def save
    file = File.new(file_path, 'w:UTF-8') # открываем файл на запись

    to_strings.each { |string| file.puts(string) }

    file.close
  end

  def file_path
    current_path = File.dirname(__FILE__ )

    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")

    return current_path + "/" + file_name
  end
end