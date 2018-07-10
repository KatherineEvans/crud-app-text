json.ID @comic_book.id
json.title @comic_book.title
json.price @comic_book.price
json.author @comic_book.author

# json.partial! "comics.json.builder", comic_book: @comic_book