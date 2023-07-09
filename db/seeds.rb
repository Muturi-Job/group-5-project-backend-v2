RecipeTag.destroy_all
Review.destroy_all
Tag.destroy_all
User.destroy_all
Recipe.destroy_all

# Create tags
tags = Tag.create([
  { name: "Vegetarian", description: "Recipes suitable for vegetarians" },
  { name: "Dessert", description: "Sweet treats and desserts" },
  { name: "Breakfast", description: "Recipes for breakfast dishes" }
])

# Create users
users = User.create([
  { username: "john_doe", password_digest: "password", contact: 12340, image: "user1.jpg", bio: "I love cooking!", location: "New York" },
  { username: "jane_smith", password_digest: "password", contact: 9870, image: "user2.jpg", bio: "Food enthusiast", location: "Los Angeles" }
])

# Create recipes
recipes = Recipe.create([
  {
    title: "Veggie Stir-Fry",
    description: "A quick and healthy vegetarian stir-fry recipe",
    procedure: "1. Heat oil in a pan. 2. Add vegetables and stir-fry for 5 minutes. 3. Add sauce and cook for another 2 minutes. 4. Serve hot.",
    user: users.first,
    image_url: "recipe1.jpg"
  },
  {
    title: "Chocolate Cake",
    description: "A classic chocolate cake recipe",
    procedure: "1. Preheat oven to 350°F. 2. Mix dry ingredients. 3. Add wet ingredients and mix well. 4. Pour batter into a greased cake pan. 5. Bake for 30-35 minutes. 6. Let it cool before frosting.",
    user: users.first,
    image_url: "recipe2.jpg"
  },
  {
    title: "Scrambled Eggs",
    description: "Simple scrambled eggs recipe",
    procedure: "1. Beat eggs in a bowl. 2. Heat butter in a pan. 3. Add eggs and cook on low heat, stirring continuously. 4. Season with salt and pepper. 5. Serve hot.",
    user: users.second,
    image_url: "recipe3.jpg"
  }
])


