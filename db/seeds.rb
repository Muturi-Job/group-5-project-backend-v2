# Destroy all existing records
RecipeTag.destroy_all
Review.destroy_all
Tag.destroy_all
User.destroy_all
Recipe.destroy_all

# Seed new data
RecipeTag.create(recipe_id: 1, tag_id: 1)
RecipeTag.create(recipe_id: 1, tag_id: 2)
RecipeTag.create(recipe_id: 2, tag_id: 1)
RecipeTag.create(recipe_id: 3, tag_id: 3)
RecipeTag.create(recipe_id: 4, tag_id: 2)
RecipeTag.create(recipe_id: 4, tag_id: 3)
RecipeTag.create(recipe_id: 5, tag_id: 1)
RecipeTag.create(recipe_id: 5, tag_id: 2)
RecipeTag.create(recipe_id: 6, tag_id: 3)
RecipeTag.create(recipe_id: 7, tag_id: 1)

Recipe.create(title: "Chocolate Cake", description: "A delicious chocolate cake", procedure: "1. Mix ingredients, 2. Bake in oven", user_id: 1, image_url: "https://example.com/chocolate-cake.jpg")
Recipe.create(title: "Chicken Curry", description: "Spicy chicken curry recipe", procedure: "1. Marinate chicken, 2. Cook with spices", user_id: 2, image_url: "https://example.com/chicken-curry.jpg")
Recipe.create(title: "Pasta Carbonara", description: "Classic Italian pasta dish", procedure: "1. Boil pasta, 2. Mix with eggs and bacon", user_id: 1, image_url: "https://example.com/pasta-carbonara.jpg")
Recipe.create(title: "Vegetable Stir-Fry", description: "Healthy vegetable stir-fry recipe", procedure: "1. Chop vegetables, 2. Stir-fry in a pan", user_id: 3, image_url: "https://example.com/vegetable-stir-fry.jpg")
Recipe.create(title: "Baked Salmon", description: "Oven-baked salmon recipe", procedure: "1. Season salmon, 2. Bake in the oven", user_id: 2, image_url: "https://example.com/baked-salmon.jpg")
Recipe.create(title: "Cheeseburger", description: "Classic cheeseburger recipe", procedure: "1. Grill burger patty, 2. Assemble with cheese and toppings", user_id: 1, image_url: "https://example.com/cheeseburger.jpg")
Recipe.create(title: "Caesar Salad", description: "Refreshing Caesar salad recipe", procedure: "1. Toss lettuce with dressing, 2. Add croutons and Parmesan cheese", user_id: 3, image_url: "https://example.com/caesar-salad.jpg")
Recipe.create(title: "Mushroom Risotto", description: "Creamy mushroom risotto recipe", procedure: "1. Sauté mushrooms, 2. Cook rice with broth", user_id: 2, image_url: "https://example.com/mushroom-risotto.jpg")
Recipe.create(title: "Sushi Rolls", description: "Homemade sushi rolls recipe", procedure: "1. Prepare sushi rice, 2. Roll with desired fillings", user_id: 1, image_url: "https://example.com/sushi-rolls.jpg")
Recipe.create(title: "Banana Bread", description: "Easy banana bread recipe", procedure: "1. Mash bananas, 2. Mix with flour and bake", user_id: 3, image_url: "https://example.com/banana-bread.jpg")

Review.create(user_id: 1, rating: 4.5, description: "Great recipe!", recipe_id: 1)
Review.create(user_id: 2, rating: 3.8, description: "Tasty but could use more seasoning.", recipe_id: 2)
Review.create(user_id: 3, rating: 5.0, description: "Amazing dish! Will make it again.", recipe_id: 3)
Review.create(user_id: 1, rating: 4.0, description: "Good, but a bit too spicy for my liking.", recipe_id: 2)
Review.create(user_id: 2, rating: 4.2, description: "Delicious! Added some extra veggies.", recipe_id: 4)
Review.create(user_id: 3, rating: 3.5, description: "Decent recipe, but could use more flavor.", recipe_id: 5)
Review.create(user_id: 1, rating: 5.0, description: "Perfection! Loved every bite.", recipe_id: 3)
Review.create(user_id: 2, rating: 4.7, description: "Great combination of flavors.", recipe_id: 6)
Review.create(user_id: 3, rating: 3.0, description: "Not my favorite, but still enjoyable.", recipe_id: 7)
Review.create(user_id: 1, rating: 4.5, description: "Impressive dish!", recipe_id: 4)

Tag.create(name: "Dessert", description: "Sweet treats")
Tag.create(name: "Spicy", description: "Hot and flavorful")
Tag.create(name: "Healthy", description: "Nutritious and wholesome")
Tag.create(name: "Italian", description: "Italian cuisine")
Tag.create(name: "Comfort Food", description: "Satisfying and cozy")
Tag.create(name: "Seafood", description: "Delicious seafood dishes")
Tag.create(name: "Vegetarian", description: "Vegetarian-friendly recipes")
Tag.create(name: "Quick & Easy", description: "Fast and simple to make")
Tag.create(name: "Breakfast", description: "Morning meal ideas")
Tag.create(name: "Asian", description: "Asian-inspired dishes")

User.create(username: "john123", password_digest: "password1", contact: 12345, image: "https://example.com/john.jpg", bio: "Food enthusiast", location: "New York")
User.create(username: "emily22", password_digest: "password2", contact: 98765, image: "https://example.com/emily.jpg", bio: "Passionate cook", location: "Los Angeles")
User.create(username: "alex90", password_digest: "password3", contact: 555555, image: "https://example.com/alex.jpg", bio: "Adventurous eater", location: "Chicago")
User.create(username: "sarah15", password_digest: "password4", contact: 999999, image: "https://example.com/sarah.jpg", bio: "Baking enthusiast", location: "San Francisco")
User.create(username: "michael88", password_digest: "password5", contact: 11111, image: "https://example.com/michael.jpg", bio: "Food blogger", location: "Miami")
