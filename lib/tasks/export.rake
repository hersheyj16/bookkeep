namespace :export do
  desc "Prints Books.all in a seeds.rb way."
  task :seeds_format => :environment do
    Book.order(:id).all.each do |book|
      puts "Book.create(#{book.serializable_hash})"
    end
    Bookmark.order(:id).all.each do |book_mark|
      puts "Bookmark.create(#{book_mark.serializable_hash})"
    end
  end

  desc "Say hi"
  task :say_hi => :environment do
    puts "hi world"
  end
end