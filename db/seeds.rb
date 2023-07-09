RecipeTag.destroy_all
Review.destroy_all
Tag.destroy_all
User.destroy_all
Recipe.destroy_all

# Create tags
tags = Tag.create([
  { name: "Vegetarian", description: "Excludes meat or animal products." },
  { name: "Dessert", description: "Sweet dishes typically served at the end of a meal." },
  { name: "Vegan", description: "Recipes that exclude all animal products, including meat, dairy, and eggs." },
  { name: "Breakfast", description: "Recipes suitable for the first meal of the day." },
  { name: "Quick and Easy", description: "Recipes that can be prepared in a short amount of time" },
  { name: "Asian", description: "Recipes inspired by various Asian cuisines, such as Chinese, Japanese, Thai, or Indian" },
  { name: "Spicy", description: "Recipes that incorporate hot or pungent spices for a fiery flavor." }
])

# Create users
users = User.create([
  {
    contact: "john@example.com",
    location: "New York",
    bio: "Experienced chef with a passion for cooking.",
    username: "johndoe",
    password_digest: "password",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaEdNNSvf5Trfnucfdsfw1laaKmt3_lH6v0g&usqp=CAU"
  },
  {
    contact: "jane@example.com",
    location: "Los Angeles",
    bio: "Creative chef specializing in fusion cuisine.",
    username: "janesmith",
    password_digest: "password",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaEdNNSvf5Trfnucfdsfw1laaKmt3_lH6v0g&usqp=CAU"
  },
  {
    contact: "michael@example.com",
    location: "Chicago",
    bio: "Gourmet chef with a focus on French cuisine.",
    username: "michaeljohnson",
    password_digest: "password",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTewu0DWuJHsd7YgCMfacBtpwwHanaN5Rz7Ug&usqp=CAU"
  },
  {
    contact: "emily@example.com",
    location: "San Francisco",
    bio: "Plant-based chef passionate about healthy cooking.",
    username: "emilywilson",
    password_digest: "password",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_pjMsX-nsV2BovsstTtWM0cBmqW4eDY_Odg&usqp=CAU"
  },
  {
    contact: "david@example.com",
    location: "London",
    bio: "Master sushi chef with years of experience.",
    username: "davidlee",
    password_digest: "password",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZtAz5l45T_VWC04mUqsxKgCfuc-01yeC5xQ&usqp=CAU"
  }
])

# Create recipes
recipes = Recipe.create([
  {
    title: "Stuffed Mini Peppers",
    description: "1 pound mini sweet peppers",
    procedure: "Preheat the air fryer to 350 degrees F (175 degrees C).",
    user: users.second,
    image_url: "https://valentinascorner.com/wp-content/uploads/2020/05/Stuffed-Mini-Peppers-1-760x1140.jpg"
  },
  {
    title: "Gochujang Chicken",
    description: "1/3 cup gochujang,4 tablespoons sodium-reduced soy sauce,2 tablespoons sweet rice wine (mirin),2 tablespoons honey,3 cloves garlic, grated,1 teaspoon sesame oil, or more to taste,1 teaspoon freshly grated ginger,1 tablespoon canola oil.2 pounds skinless, boneless chicken thighs, cut into bite-size pieces,1 1/2 teaspoons toasted sesame seeds,3 tablespoons thinly bias-sliced green onions,6 cups cooked rice",
    procedure: "Stir together gochujang, soy sauce, sweet rice wine, honey, garlic, sesame oil in a small bowl.Heat oil over medium-high in a wok or large skillet. Add half of the chicken to the wok; cook and stir over medium-high until chicken is no longer pink, about 5 minutes.Remove chicken from the wok. Repeat with remaining chicken. Return all cooked chicken pieces to the wok.Stir sauce well. Add to the wok; cook and stir until sauce has thickened and is bubbly, about 3 minutes.Top with sesame seeds and green onions. Serve immediately with rice.",
    user: users.first,
    image_url: "https://i.redd.it/xrlz0gxxheo01.jpg"
  },
  {
    title: "Garlic Chili Oil Noodles",
    description: "1 package ramen noodles,2 teaspoons sesame oil,2 teaspoons soy sauce,1 tablespoon chiu chow style chili oil,4 cloves garlic, minced,1 pinch black sesame seeds,2 green onions, sliced diagonally, or to taste",
    procedure: "Bring a pot of water to a boil over high heat. Add ramen noodles, and cook until tender, 3 to 4 minutes.Meanwhile, heat sesame oil, soy sauce, and chili oil in a wok over medium-high heat.Add garlic and stir fry until fragrant, 30 to 45 seconds. Remove from heat. Drain ramen noodles, add to the wok, and toss to coat. Sprinkle with sesame seeds and scallions for garnish. Enjoy!",
    user: users.fourth,
    image_url: "https://drivemehungry.com/wp-content/uploads/2021/02/szechuan-noodles-garlic-chili-oil-18-720x960.jpg"
  },
  {
    title: "Macaroni and Cheese",
    description: "1 box elbow macaroni,¼ cup butter,¼ cup all-purpose flour,½ teaspoon salt,ground black pepper to taste,2 cups milk,2 cups shredded Cheddar cheese",
    procedure: "Bring a large pot of lightly salted water to a boil. Cook elbow macaroni in the boiling water, stirring occasionally until cooked through but firm to the bite, 8 minutes.At the same time, melt butter in a saucepan over medium heat.Add flour, salt, and pepper and stir until smooth, about 5 minutes.Pour in milk slowly, while stirring continuously. Continue to cook and stir until mixture is smooth and bubbling, about 5 minutes, making sure the milk doesn't burn.Add Cheddar cheese and stir until melted, 2 to 4 minutes.Drain macaroni and fold into cheese sauce until coated.Serve hot and enjoy!",
    user: users.fifth,
    image_url: "https://th.bing.com/th/id/OIP.DtkAo3fg90yDJmW4a6gJfQHaHa?pid=ImgDet&rs=1"
  },
  {
    title: "Beef Stir-Fry",
    description: "2 tablespoons vegetable oil,1 pound beef sirloin, cut into 2-inch strips,1 ½ cups fresh broccoli florets,1 red bell pepper, cut into matchsticks,2 carrots, thinly sliced,1 green onion, chopped,1 teaspoon minced garlic,2 tablespoons soy sauce,2 tablespoons sesame seeds, toasted",
    procedure: "Heat vegetable oil in a large wok or skillet over medium-high heat; cook and stir beef until browned, 3 to 4 minutes.Move beef to the side of the wok and add broccoli, bell pepper, carrots, green onion, and garlic to the center of the wok. Cook and stir vegetables for 2 minutes.Stir beef into vegetables and season with soy sauce and sesame seeds. Continue to cook and stir until vegetables are tender, about 2 more minutes.Serve hot and enjoy!",
    user: users.second,
    image_url: "https://th.bing.com/th/id/R.657ff6bb9ee08f61b8cba6302ea80d8c?rik=xJZ0moB%2fnXfKsw&pid=ImgRaw&r=0"
  },
  {
    title: "Deep Fried Turkey",
    description: "3 ½ gallons peanut oil for frying,1 whole turkey, neck and giblets removed,1 tablespoon salt, or to taste,1 tablespoon ground black pepper, or to taste",
    procedure: "Heat oil in a large stockpot or turkey fryer to 350 degrees F (175 degrees C). Make sure the fryer is located outdoors in a safe area, preferably on dirt or pavement, and far away from buildings, wooden decks, or other objects. Keep a fire extinguisher handy, just in case.Ensure that the turkey is completely thawed. Cut any extra skin away from the neck area and make sure the neck hole is at least 1 inch in diameter.Pat the bird completely dry with paper towels, then rub liberally with salt and pepper on both the outside and the inside.Place the turkey into a drain basket, neck-side first. Working slowly and carefully, gently lower the basket into the hot oil to completely cover the turkey.Maintain the temperature of the oil at 350 degrees F (175 degrees C), and cook the turkey for 3 1/2 minutes per pound, about 35 minutes.Carefully remove the basket from the oil, and drain the turkey. Insert a meat thermometer into the thickest part of the thigh; the internal temperature must be 180 degrees F (80 degrees C). Allow it to rest for 15 minutes before slicing.",
    user: users.third,
    image_url: "https://altonbrown.com/wp-content/uploads/2020/08/Deep-Fried-Turkey_RecipeImage3.jpg"
  },
  {
    title: "Cinnamon Roll Monkey Bread",
    description: "½ cup white sugar,1 teaspoon ground cinnamon,1 (12.4 ounce) package refrigerated cinnamon roll dough with icing,¼ cup unsalted butter, melted",
    procedure: "Preheat the oven to 400 degrees F (200 degrees C). Grease a 9x5-inch loaf pan.Mix sugar and cinnamon together in a bowl.Set icing packet aside. Cut cinnamon rolls into quarters. Dip pieces in melted butter, coat in cinnamon-sugar, and place in the prepared pan.Bake in the preheated oven until the dough has risen and the top is golden brown, 20 to 25 minutes; drizzle icing over the top and let it cool in the pan for 5 minutes. Turn the monkey bread out onto a plate and serve warm.",
    user: users.second,
    image_url: "https://th.bing.com/th/id/OIP.GAFeXK7F4fQV7f7U0NJsSwAAAA?pid=ImgDet&rs=1"
  },
  {
    title: "Edible Cookie Dough",
    description: "1 cup all-purpose flour,¾ cup packed brown sugar,½ cup butter,1 teaspoon vanilla extract,½ teaspoon salt,2 tablespoons milk,½ cup milk chocolate chips,½ cup mini chocolate chips",
    procedure: "To heat-treat your flour so it is safe to use: Place the flour in a microwave-safe dish and cook for 1 minute and 15 seconds, stirring it every 15 seconds. Set it aside.Beat the sugar and butter with an electric mixer in a large bowl until creamy. Beat in the vanilla extract and salt. Add the heat-treated flour; mix until a crumbly dough forms. Stir in the milk until the dough is just combined; fold in the milk chocolate chips and mini chocolate chips.",
    user: users.third,
    image_url: "https://th.bing.com/th/id/OIP.nNE4TxyolwYIH51bXMKRlQHaKI?pid=ImgDet&rs=1"
  },
  {
    title: "Korean Ground Beef Bowl",
    description: "1 pound lean ground beef,5 cloves garlic, crushed,1 tablespoon freshly grated ginger,2 teaspoons toasted sesame oil,½ cup reduced-sodium soy sauce,⅓ cup light brown sugar,¼ teaspoon crushed red pepper,6 green onions, chopped, divided,4 cups hot cooked brown rice,1 tablespoon toasted sesame seeds",
    procedure: "Heat a large skillet over medium-high heat. Add the beef and cook, stirring and crumbling it into small pieces, until browned, 5 to 7 minutes. Drain excess grease.Stir in garlic, ginger, and sesame oil and cook until fragrant, about 2 minutes. Stir in soy sauce, brown sugar, and red pepper. Cook until the beef absorbs some sauce, about 7 minutes. Add 1/2 of the chopped green onions.Serve over hot cooked rice; garnish with sesame seeds and the remaining green onions.",
    user: users.first,
    image_url: "https://th.bing.com/th/id/OIP.sJ-vhZ4dtDt5RTWsHPmoJgHaLH?pid=ImgDet&rs=1"
  },
  {
    title: "Skillet Zucchini and Squash",
    description: "1 tablespoon unsalted butter,1 tablespoon olive oil,½ medium onion, chopped,½ medium red bell pepper, chopped,1 medium zucchini, cut into 1/4-inch slices,1 medium yellow squash, cut into 1/4-inch slices,salt and freshly ground black pepper to taste,1 clove garlic, minced,minced chives (optional)",
    procedure: "Heat the butter and olive oil together in a large non-stick skillet over medium-high heat. Add the onion once the butter is bubbly; cook and stir for 2 minutes. Add the bell pepper and cook for 1 minute. Stir in the yellow squash and zucchini slices. Season with salt and pepper. Cook, stirring, for about 3 minutes.Stir in the minced garlic and cook, stirring, for about 1 minute. Keep cooking, stirring continuously, until the squash has the desired texture, 2 to 3 minutes.Sprinkle with minced chives before serving."
}])

puts "⚡ Creating recipes...."


recipe_tags = RecipeTag.create([
  { recipe: recipes.first, tag: tags.first },
  { recipe: recipes.second, tag: tags.second },
  { recipe: recipes.third, tag: tags.third },
  { recipe: recipes.fourth, tag: tags.third },
  { recipe: recipes.third, tag: tags.third },
  { recipe: recipes.second, tag: tags.third },
  { recipe: recipes.first, tag: tags.fourth },
  { recipe: recipes.first, tag: tags.second },
  { recipe: recipes.first, tag: tags.third },
  { recipe: recipes.first, tag: tags.first }
])


# recipes.each { |recipe| Recipe.create(recipe) }

puts "🦸 Creating tags...."

# tags.each { |tag| Tag.create(tag) }

# recipe_tags.each { |recipe_tag| RecipeTag.create(recipe_tag) }

# Create reviews
reviews = Review.create([
  { user: users.first, rating: 4.5, description: "Delicious stir-fry!", recipe: recipes.first },
  { user: users.second, rating: 5.0, description: "The chocolate cake was amazing!", recipe: recipes.second }
])    
