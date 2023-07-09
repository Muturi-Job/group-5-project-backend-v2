# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(
  contact: "john@example.com",
  location: "New York",
  bio: "Experienced chef with a passion for cooking.",
  username: "johndoe",
  password: "password",
  image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaEdNNSvf5Trfnucfdsfw1laaKmt3_lH6v0g&usqp=CAU"
)

User.create(
  contact: "jane@example.com",
  location: "Los Angeles",
  bio: "Creative chef specializing in fusion cuisine.",
  username: "janesmith",
  password: "password",
  image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaEdNNSvf5Trfnucfdsfw1laaKmt3_lH6v0g&usqp=CAU"
)

User.create(
  contact: "michael@example.com",
  location: "Chicago",
  bio: "Gourmet chef with a focus on French cuisine.",
  username: "michaeljohnson",
  password: "password",
  image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTewu0DWuJHsd7YgCMfacBtpwwHanaN5Rz7Ug&usqp=CAU"
)

User.create(
  contact: "emily@example.com",
  location: "San Francisco",
  bio: "Plant-based chef passionate about healthy cooking.",
  username: "emilywilson",
  password: "password",
  image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_pjMsX-nsV2BovsstTtWM0cBmqW4eDY_Odg&usqp=CAU"
)

User.create(
  contact: "david@example.com",
  location: "London",
  bio: "Master sushi chef with years of experience.",
  username: "davidlee",
  password: "password",
  image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZtAz5l45T_VWC04mUqsxKgCfuc-01yeC5xQ&usqp=CAU"
)


recipes = [
    {title:"Stuffed Mini Peppers", description: "1 pound mini sweet peppers", procedure:"Preheat the air fryer to 350 degrees F (175 degrees C).", user_id:2, image_url:"https://www.allrecipes.com/thmb/t8fjKs4xgewxuDS6BzDAcpF62QU=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/7507354_Air-Fryer-STuffed-Mini-Peppers_TheDailyGourmet_4x3-414abd37417648a6bc361affdf3e3623.jpg"},
    {title:"Gochujang Chicken", description: "1/3 cup gochujang,4 tablespoons sodium-reduced soy sauce,2 tablespoons sweet rice wine (mirin),2 tablespoons honey,3 cloves garlic, grated,1 teaspoon sesame oil, or more to taste,1 teaspoon freshly grated ginger,1 tablespoon canola oil.2 pounds skinless, boneless chicken thighs, cut into bite-size pieces,1 1/2 teaspoons toasted sesame seeds,3 tablespoons thinly bias-sliced green onions,6 cups cooked rice", procedure:"Stir together gochujang, soy sauce, sweet rice wine, honey, garlic, sesame oil, and ginger in a small bowl.Heat oil over medium-high in a wok or large skillet. Add half of the chicken to the wok; cook and stir over medium-high until chicken is no longer pink, about 5 minutes.Remove chicken from the wok. Repeat with remaining chicken. Return all cooked chicken pieces to the wok.Stir sauce well. Add to the wok; cook and stir until sauce has thickened and is bubbly, about 3 minutes.Top with sesame seeds and green onions. Serve immediately with rice.", user_id:1, image_url:"https://www.allrecipes.com/thmb/wI0cIwz4dUElSwyFTldXambXVls=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/7497391-sweet-and-spicy-gochujang-chicken-DDMFS-beauty-4x3-BG-4207-c88bc511fc8346768ee0716378f6089f.jpg"},
    {title:"Garlic Chili Oil Noodles", description: "1 package ramen noodles,2 teaspoons sesame oil,2 teaspoons soy sauce,1 tablespoon chiu chow style chili oil,4 cloves garlic, minced,1 pinch black sesame seeds,2 green onions, sliced diagonally, or to taste", procedure:"Bring a pot of water to a boil over high heat. Add ramen noodles, and cook until tender, 3 to 4 minutes.Meanwhile, heat sesame oil, soy sauce, and chili oil in a wok over medium-high heat.Add garlic and stir fry until fragrant, 30 to 45 seconds. Remove from heat. Drain ramen noodles, add to the wok, and toss to coat. Sprinkle with sesame seeds and scallions for garnish. Enjoy!", user_id:4, image_url:"https://www.allrecipes.com/thmb/b7Yx82xB4yNj-2rkcK2VvcIwaZ8=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/7496389_Garlic-Chili-Oil-Noodles_TheDailyGourmet_4x3-4f3f998ed52d44819901e524e0311722.jpg"},
    {title:"Macaroni and Cheese", description: "1 box elbow macaroni,¼ cup butter,¼ cup all-purpose flour,½ teaspoon salt,ground black pepper to taste,2 cups milk,2 cups shredded Cheddar cheese", procedure:"Bring a large pot of lightly salted water to a boil. Cook elbow macaroni in the boiling water, stirring occasionally until cooked through but firm to the bite, 8 minutes.At the same time, melt butter in a saucepan over medium heat.Add flour, salt, and pepper and stir until smooth, about 5 minutes.Pour in milk slowly, while stirring continuously. Continue to cook and stir until mixture is smooth and bubbling, about 5 minutes, making sure the milk doesn't burn.Add Cheddar cheese and stir until melted, 2 to 4 minutes.Drain macaroni and fold into cheese sauce until coated.Serve hot and enjoy!", user_id:5, image_url:"https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fpublic-assets.meredithcorp.io%2Fe53f5564a3e32f5012b8ad57e9439d9c%2F1679183752655image.jpg&q=60&c=sc&orient=true&poi=auto&h=512"},
    {title:"Beef Stir-Fry", description: "2 tablespoons vegetable oil,1 pound beef sirloin, cut into 2-inch strips,1 ½ cups fresh broccoli florets,1 red bell pepper, cut into matchsticks,2 carrots, thinly sliced,1 green onion, chopped,1 teaspoon minced garlic,2 tablespoons soy sauce,2 tablespoons sesame seeds, toasted", procedure:"Heat vegetable oil in a large wok or skillet over medium-high heat; cook and stir beef until browned, 3 to 4 minutes.Move beef to the side of the wok and add broccoli, bell pepper, carrots, green onion, and garlic to the center of the wok. Cook and stir vegetables for 2 minutes.Stir beef into vegetables and season with soy sauce and sesame seeds. Continue to cook and stir until vegetables are tender, about 2 more minutes.Serve hot and enjoy!", user_id:2, image_url:"https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fpublic-assets.meredithcorp.io%2F0e9914b18b6c5a76afa000eec8a180bb%2F166786596268520221107_173908.jpg&q=60&c=sc&orient=true&poi=auto&h=512"},
    {title:"Deep Fried Turkey", description: "3 ½ gallons peanut oil for frying,1 whole turkey, neck and giblets removed,1 tablespoon salt, or to taste,1 tablespoon ground black pepper, or to taste", procedure:"Heat oil in a large stockpot or turkey fryer to 350 degrees F (175 degrees C). Make sure the fryer is located outdoors in a safe area, preferably on dirt or pavement, and far away from buildings, wooden decks, or other objects. Keep a fire extinguisher handy, just in case.Ensure that the turkey is completely thawed. Cut any extra skin away from the neck area and make sure neck hole is at least 1 inch in diameter.Pat the bird completely dry with paper towels, then rub liberally with salt and pepper on both the outside and the inside.Place turkey into a drain basket, neck-side first. Working slowly and carefully, gently lower the basket into the hot oil to completely cover the turkey.Maintain the temperature of the oil at 350 degrees F (175 degrees C), and cook turkey for 3 1/2 minutes per pound, about 35 minutes.Carefully remove basket from oil, and drain turkey. Insert a meat thermometer into the thickest part of the thigh; the internal temperature must be 180 degrees F (80 degrees C). Allow to rest for 15 minutes before slicing.", user_id:3, image_url:"https://www.allrecipes.com/thmb/0uMysfKN0Meg-No275k7hgDXctc=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/215412-simple-deep-fried-turkey-vat-01-4x3-1-fc3078f38cd542a5a223d9c53ef25596.jpg"},
    {title:"Cinnamon Roll Monkey Bread", description: "½ cup white sugar,1 teaspoon ground cinnamon,1 (12.4 ounce) package refrigerated cinnamon roll dough with icing,¼ cup unsalted butter, melted", procedure:"Preheat the oven to 400 degrees F (200 degrees C). Grease a 9x5-inch loaf pan.Mix sugar and cinnamon together in a bowl.Set icing packet aside. Cut cinnamon rolls into quarters. Dip pieces in melted butter, coat in cinnamon-sugar, and place in the prepared pan.Bake in the preheated oven until dough has risen and top is golden brown, 20 to 25 minutes; drizzle icing over top and let cool in the pan for 5 minutes. Turn the monkey bread out onto a plate and serve warm.", user_id:2, image_url:"https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fpublic-assets.meredithcorp.io%2F5772c850efb8ffceda88096dab3f5eb4%2F164877540220220331_202132%7E2_resize_50.jpg&q=60&c=sc&orient=true&w=600&poi=auto&h=400"},
    {title:"Edible Cookie Dough", description: "1 cup all-purpose flour,¾ cup packed brown sugar,½ cup butter,1 teaspoon vanilla extract,½ teaspoon salt,2 tablespoons milk,½ cup milk chocolate chips,½ cup mini chocolate chips", procedure:"To heat-treat your flour so it is safe to use: Place flour in a microwave-safe dish and cook for 1 minute and 15 seconds, stirring it every 15 seconds and set aside.Beat sugar and butter with an electric mixer in a large bowl until creamy. Beat in vanilla extract and salt. Add heat-treated flour; mix until a crumbly dough forms. Stir in milk until dough is just combined; fold in milk chocolate chips and mini chocolate chips.", user_id:3, image_url:"https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fpublic-assets.meredithcorp.io%2F2fb7afbc12a6625980fd5bc47b1dbef0%2F1682875093999image.jpg&q=60&c=sc&orient=true&poi=auto&h=512"},
    {title:"Korean Ground Beef Bowl", description: "1 pound lean ground beef,5 cloves garlic, crushed,1 tablespoon freshly grated ginger,2 teaspoons toasted sesame oil,½ cup reduced-sodium soy sauce,⅓ cup light brown sugar,¼ teaspoon crushed red pepper,6 green onions, chopped, divided,4 cups hot cooked brown rice,1 tablespoon toasted sesame seeds", procedure:"Heat a large skillet over medium-high heat. Add beef and cook, stirring and crumbling into small pieces until browned, 5 to 7 minutes. Drain excess grease.Stir in garlic, ginger, and sesame oil and cook until fragrant, about 2 minutes. Stir in soy sauce, brown sugar, and red pepper. Cook until beef absorbs some sauce, about 7 minutes. Add 1/2 of chopped green onions.Serve over hot cooked rice; garnish with sesame seeds and remaining green onions.", user_id:1, image_url:"https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fpublic-assets.meredithcorp.io%2Fb0c39c1c312fffbe2e7920ba992f9ebb%2F1662648908C649142A-80C3-43C7-90EC-4C5C6657F648.jpeg&q=60&c=sc&orient=true&poi=auto&h=512"},
    {title:"Skillet Zucchini and Squash", description: "1 tablespoon unsalted butter,1 tablespoon olive oil,½ medium onion, chopped,½ medium red bell pepper, chopped,1 medium zucchini, cut into 1/4-inch slices,1 medium yellow squash, cut into 1/4-inch slices,salt and freshly ground black pepper to taste,1 clove garlic, minced, minced chives (optional)", procedure:"Heat butter and olive oil together in a large non-stick skillet over medium-high heat. Add onion once butter is bubbly; cook and stir for 2 minutes. Add bell pepper and cook for 1 minute. Stir in yellow squash and zucchini slices. Season with salt and pepper. Cook, stirring, for about 3 minutes.Stir in minced garlic and cook, stirring, about 1 minute. Keep cooking, stirring continuously, until squash has desired texture, 2 to 3 minutes.Sprinkle with minced chives before serving.", user_id:4, image_url:"https://www.allrecipes.com/thmb/JxMHRXod797Wtvy-vn2b2yel9I4=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/8441918skillet-zucchini-and-squashPaula4x3-12251f97263948698e19fc13c7d755b8.jpg"}
    
  ]
  
  puts " ⚡ creating recipes...."
  
  recipes.each { |recipe| Recipe.create(recipe) }

  tags = [
    {name:"Vegetarian", description:"Excludes meat or animal products."},
    {name:"Dessert", description:"Sweet dishes typically served at the end of a meal."},
    {name:"Vegan", description:"Recipes that exclude all animal products, including meat, dairy, and eggs."},
    {name:"Breakfast", description:"Recipes suitable for the first meal of the day."},
    {name:"Quick and Easy", description:"Recipes that can be prepared in a short amount of time"},
    {name:"Asian", description:"Recipes inspired by various Asian cuisines, such as Chinese, Japanese, Thai, or Indian"},
    {name:"Spicy", description:"Recipes that incorporate hot or pungent spices for a fiery flavor."}
    
  ]
  
  puts "🦸 creating tags...."
  
  tags.each { |tag| Tag.create(tag) }