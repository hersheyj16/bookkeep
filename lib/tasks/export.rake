namespace :export do
  desc "Prints Books.all in a seeds.rb way."
  task :seeds_format => :environment do
    Book.order(:id).all.each do |book|
      book_hash = book.serializable_hash
      book_hash["created_at"]= "DateTime.parse(\"#{book_hash["created_at"]}\")"
      book_hash["updated_at"]= "DateTime.parse(\"#{book_hash["updated_at"]}\")"

      puts "Book.create(#{book_hash})"

    end
    Bookmark.order(:id).all.each do |book_mark|
      book_mark_hash = book_mark.serializable_hash
      book_mark_hash["entry_date"]= "DateTime.parse(\"#{book_mark_hash["entry_date"]}\")"
      book_mark_hash["created_at"]= "DateTime.parse(\"#{book_mark_hash["created_at"]}\")"
      book_mark_hash["updated_at"]= "DateTime.parse(\"#{book_mark_hash["updated_at"]}\")"
      puts "Bookmark.create(#{book_mark_hash})"
    end
  end

  desc "Say hi"
  task :say_hi => :environment do
    puts "hi world"
  end
end