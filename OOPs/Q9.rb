class DownloadError < StandardError
  def initialize(msg)
    super(msg)
  end
end

class Book
  def initialize(title,author,genre)
    @title = title
    @author = author
    @genre = genre
  end

  def show_details
    puts "Book's Title: #{@title}"
    puts "Book's Author: #{@author}"
    puts "Book's Genre: #{@genre}"
  end
end

class EBook < Book
  def initialize(title,author,genre)
    super(title,author,genre)
  end

  def download
    puts "Downloading #{@title}"
    begin 
      rng = Random.new
      flag = rng.rand(0..1)
      if flag == 0
        raise DownloadError.new("Download Failed!!")
      else 
        puts "Download Complete!"
      end
    rescue DownloadError => e
      puts "Error: #{e.message}"
      puts "Retrying.."
      retry
    end
  end
end

class PhysicalBook < Book
  def initialize(title,author,genre)
    super(title,author,genre)
  end

  def checkout
    puts "Book Borrowed: #{@title}"
  end
end

books = [EBook.new("Ben 10","Aryan Negi","Action"), PhysicalBook.new("Hardships","Aalekh","Motivational")]
books.each do |book|
  book.show_details
end

ebook = EBook.new("Adventures of Dusty","Aryan","Adventure")
phy_book = PhysicalBook.new("Noddy","Trent","Fantasy")
ebook.download
phy_book.checkout