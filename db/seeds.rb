# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Magazine.create!(title: 'AnOther Magazine', price: 10.50, category: 'fashion', description: 'encapsulates a divine sense of adventure with high impact fashion, photography, art, music and opinions. An unforgettable publication for intelligent, switched-on people.')
Magazine.create!(title: 'American Cinematographer', price: 14.90, category: 'art', description: 'A magazine published monthly by the American Society of Cinematographers. It focuses on the art and craft of cinematography, covering domestic and foreign feature productions, television productions, short films, music videos and commercials.')
Magazine.create!(title: 'Frankie', price: 6.95, category: 'art', description: 'Frankie magazine brings you the latest in Australian & International Art, Culture & everything creative!')
Magazine.create!(title: 'Gourmet Traveller', price: 16.50, category: 'food', description: 'Gourmet Traveller magazine is Australias premier food, wine, travel and lifestyle magazine.')
Magazine.create!(title: 'Bon Appetit', price: '11.30', category: 'food', description: 'Up your cooking skills with Bon Appetit. With new tips, techniques, recipes, and trends having to do with fine dining, wine, and cooking, this magazine is perfect for chefs, restaurateurs, and foodies alike.')
Magazine.create!(title: 'Southern Living', price: 12.90, category: 'food', description: 'The Southern United States has a unique culture, and Southern Living captures it in each issue. Southern Living contains recipes, travel ideas, and home d?cor tips, all inspired by the Southern style.')
Magazine.create!(title: 'Dazed', price: 19.90, category: 'fashion', description: 'Quite simply the most influential style publication for young people on the planet - Dazed is an international icon pushing the directions that other magazines follow.')
Magazine.create!(title: 'Art Review', price: 24.95, category: 'art', description: 'Art Review is a constant glance at what is leading the contemporary art world. It guides new and established movements, styles and personalities with an expert look at artists, collectors, galleries, auctioneers, curators and critics.')