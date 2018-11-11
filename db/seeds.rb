Book.create(
    {"id" => 1,
     "title" => "Try the Book",
     "author" => "Hartl",
     "desc" => "https://www.railstutorial.org/book/toy_app",
     "created_at" => DateTime.parse("Sat, 10 Nov 2018 22:57:42 UTC +00:00)"),
     "updated_at" => DateTime.parse("Sat, 10 Nov 2018 22:57:42 UTC +00:00}")})

Book.create(
    {"id" => 2,
     "title" => "Girly Girl books",
     "author" => "Hanton",
     "desc" => "https://www.amazon.com/Princess-123s-Girly-Girl-Books/dp/1581179286",
     "created_at" => DateTime.parse("Sat, 10 Nov 2018 22:57:42 UTC +00:00)"),
     "updated_at" => DateTime.parse("Sat, 10 Nov 2018 22:57:42 UTC +00:00}")})

#For the bookmarks
bookmarks =
    [{"id" => 1, "note" => "Just a test book mark", "book_id" => 1, "entry_date" => DateTime.parse("Sat, 10 Nov 2018"), "page" => 1, "progess" => 2, "created_at" => DateTime.parse("Sat, 10 Nov 2018 22:53:17 UTC +00:00"), "updated_at" => DateTime.parse("Sat, 10 Nov 2018 22:53:17 UTC +00:00")},

     {"id" => 2, "note" => "Another book mark", "book_id" => 2, "entry_date" => DateTime.parse("Sat, 10 Nov 2018"), "page" => 1, "progess" => 2, "created_at" => DateTime.parse("Sat, 10 Nov 2018 22:53:17 UTC +00:00"), "updated_at" => DateTime.parse("Sat, 10 Nov 2018 22:53:17 UTC +00:00")}]

bookmarks.each do |bookmark|
  Bookmark.create(bookmark)
end