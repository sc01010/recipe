----- < Sessions Table > -----
CREATE TABLE sessions (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
  user_id INTEGER NOT NULL,
  session TEXT NOT NULL UNIQUE,
  last_login TEXT NOT NULL,

  FOREIGN KEY(user_id) REFERENCES user(id)
);

----- < Users Table > -----
CREATE TABLE users (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
  username TEXT NOT NULL UNIQUE,
  password TEXT NOT NULL
);

INSERT INTO users (username, password) VALUES ('steve', '$2y$10$QtCybkpkzh7x5VN11APHned4J8fu78.eFXlyAMmahuAaNcbwZ7FH.'); -- password is: monkey
INSERT INTO users (username, password) VALUES ('emily', '$2y$10$QtCybkpkzh7x5VN11APHned4J8fu78.eFXlyAMmahuAaNcbwZ7FH.'); -- password is: monkey
INSERT INTO users (username, password) VALUES ('andrew', '$2y$10$QtCybkpkzh7x5VN11APHned4J8fu78.eFXlyAMmahuAaNcbwZ7FH.'); -- password is: monkey
INSERT INTO users (username, password) VALUES ('bob', '$2y$10$QtCybkpkzh7x5VN11APHned4J8fu78.eFXlyAMmahuAaNcbwZ7FH.'); -- password is: monkey
INSERT INTO users (username, password) VALUES ('john', '$2y$10$QtCybkpkzh7x5VN11APHned4J8fu78.eFXlyAMmahuAaNcbwZ7FH.'); -- password is: monkey
INSERT INTO users (username, password) VALUES ('celine', '$2y$10$QtCybkpkzh7x5VN11APHned4J8fu78.eFXlyAMmahuAaNcbwZ7FH.'); -- password is: monkey
INSERT INTO users (username, password) VALUES ('katherine', '$2y$10$QtCybkpkzh7x5VN11APHned4J8fu78.eFXlyAMmahuAaNcbwZ7FH.'); -- password is: monkey
INSERT INTO users (username, password) VALUES ('karen', '$2y$10$QtCybkpkzh7x5VN11APHned4J8fu78.eFXlyAMmahuAaNcbwZ7FH.'); -- password is: monkey
INSERT INTO users (username, password) VALUES ('matt', '$2y$10$QtCybkpkzh7x5VN11APHned4J8fu78.eFXlyAMmahuAaNcbwZ7FH.'); -- password is: monkey


-- Recipes table that stores ingregidents and instructions as paragraphs
CREATE TABLE recipes (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
  user_id INTEGER NOT NULL,
  dish TEXT NOT NULL UNIQUE,
  ingredient TEXT NOT NULL,
  instruction TEXT NOT NULL,
  filename TEXT NOT NULL,
  file_ext TEXT NOT NULL,
  source TEXT,

  FOREIGN KEY(user_id) REFERENCES users(id)
);

INSERT INTO recipes (id, user_id, dish, ingredient, instruction, filename, file_ext, source) VALUES (1, 1, 'Bacon n Eggs', 'sliced bacon, large eggs, milk, cream of tartar, Salt, ground black pepper, butter', '1. In large bowl, whisk the eggs with the milk, cream of tartar and salt; beat vigorously for 2 minutes or until eggs are evenly colored and slightly froth. Do not overbeat eggs. 2. Melt butter in skillet over medium heat. 3. When butter is melted, pour in egg mixture. Allow to cook for 1 minute or until the bottom of the egg mixture is just starting to set. Place the edge of a spatula at the edge of the egg mixture and push spatula through to the opposite edge, allowing uncooked egg to redistribute. 4. Continue this until egg mixture is no longer runny. Season with salt and pepper to taste and transfer to a serving plate. 5. Place a large nonstick skillet over medium heat. No need to spray with cooking spray because of the high fat content of the bacon. 6. Lay strips of bacon in the skillet next to each other without overlapping. The bacon will start sizzling and popping as the skillet heats up. 7. Allow bacon to cook until it starts to wrinkle and releases from the bottom of the skillet. Use tongs to turn bacon over and cook for 2 to 3 minutes. Keep turning bacon until it is crisp, red-brown in color, and no longer shows any white or pink areas. 8. Transfer to a stack of paper towels to drain and serve warm.','baconANDeggs.jpg', 'jpg', 'https://www.sheknows.com/food-and-recipes/articles/802645/the-best-scrambled-eggs-and-bacon-breakfast/');
INSERT INTO recipes (id, user_id, dish, ingredient, instruction, filename, file_ext, source) VALUES (2, 2, 'Lemon Chicken', 'Chicken thighs and legs, lemon zest, lemon juice, cloves garlic, thyme, rosemary, Kosher salt, black pepper, butter, Lemon', '1. Place lemon juice, lemon zest, garlic, thyme, rosemary, salt, and pepper in a large, non-reactive bowl, whisk to combine. With the tip of a sharp knife, cut into the underside (skinless) of each chicken piece one or two times by about 1/2 an inch. (This will help the marinade penetrate.) Place the chicken pieces in the bowl and turn to coat with the marinade. Place in the refrigerator and marinate for 1 to 2 hours. 2. Preheat oven to 425°F. Remove chicken from marinade and place in a single layer in a large baking dish, skin side up. Reserve the marinade. Use a pastry brush to brush melted butter on each piece of chicken. 3. Bake for 20 minutes and baste the chicken pieces generously with the reserved marinade. Continue baking for another 15 to 25 minutes (a total of 35 to 45 minutes), until the skins are crispy brown, and the chicken is cooked through, juices running clear (internal temperature of 165°F). Depending on the size of the breasts, they may be ready before the thighs, so if you are cooking a mix of chicken parts, keep that in mind, you may have to take them out of the oven before the thighs. 4. Remove from the oven and let the chicken rest, covered in foil, for 10 minutes before serving. 5. Pour the juices from the pan into a serving bowl. Use a tablespoon to skim the fat off the top (save the fat for cooking with later, or discard, but do not discard down the drain or it will solidify and clog your drain). Serve the chicken with the juices on the side or a little poured over the top of the chicken.', 'lemonChicken.jpg', 'jpg', 'https://www.simplyrecipes.com/recipes/lemon_chicken/');
INSERT INTO recipes (id, user_id, dish, ingredient, instruction, filename, file_ext, source) VALUES (3, 3, 'Mac n Cheese', 'macaroni pasta, water, butter, kosher salt, mustard, garlic salt, evaporated milk, cheddar cheese, gouda Swiss, fontina, rovolone', '1. In the insert of an Instant Pot or pressure cooker, add the macaroni, water, butter, kosher salt, ground mustard and garlic salt. 2. Cook in the pressure cooker for 5 minutes on high, then quick release. 3. Add the evaporated milk and half of the cheeses and use a wooden spoon to vigorously stir until the cheeses have melted then repeat with the rest of the cheese, stirring until the sauce is creamy. 4. Add any additional toppings or mix-ins below at this time. Serve warm.', 'macANDcheese.jpg', 'jpg', 'https://www.foodiecrush.com/instant-pot-macaroni-and-cheese-five-ways/');
INSERT INTO recipes (id, user_id, dish, ingredient, instruction, filename, file_ext, source) VALUES (4, 1, 'broccoli pesto salad', 'broccoli, spinach, basil, salt, pepper, garlic, walnuts, veggie broth', '1. Blend everything. 2. Enjoy.', 'broccolipestosalad.jpg', 'jpg', 'https://www.veggiesdontbite.com/messy-noodles-with-broccoli-spinach-pesto/');
INSERT INTO recipes (id, user_id, dish, ingredient, instruction, filename, file_ext, source) VALUES (5, 2, 'stir fry chicken', 'Low-sodium chicken broth, Soy sauce, Oyster sauce, Toasted sesame oil, Cornstarch, Honey or brown sugar, Chicken breasts, Vegetable oil or light olive oil, carrots, yellow onion, bell pepper, sugar snap peas, broccoli florets, garlic, ginger', '1. In a small mixing bowl whisk together soy sauce with cornstarch, then whisk in chicken broth, oyster sauce, sesame oil and honey. Set aside. 2. Heat 1 Tbsp oil in a non-stick 12-inch skillet (that’s deep, or use a saute pan or wok) over medium-high heat. Dab chicken dry with paper towels, season with a pinch of salt. Add chicken to skillet spacing pieces apart in an even layer. 3. Cook chicken through, turning halfway through cooking, about 6 minutes total (center should be 165 degrees and should no longer be pink). Transfer to a plate or sheet of foil, leaving oil in skillet. 4. Add another 1 Tbsp oil to skillet. Add in carrots and onions and saute 4 minutes. 5. Add in broccoli, bell pepper, peas, ginger and garlic and saute until nearly tender about 4 minutes. 6. Whisk soy sauce mixture once more, then pour into pan and cook, tossing frequently, until sauce has thickened and veggies are tender, about 1 – 2 minutes. 7. Toss in cooked chicken. Season with more soy sauce to taste if desired. 8. Serve immediately over white or brown rice. If desired sprinkle with red pepper flakes or sesame seeds or drizzle with sriracha.', 'stirFryChicken.jpg', 'jpg', 'https://www.cookingclassy.com/chicken-and-vegetable-stir-fry/');
INSERT INTO recipes (id, user_id, dish, ingredient, instruction, filename, file_ext, source) VALUES (6, 2, 'Pan Seared Salmon', '1 ½ pound whole salmon fillet, kosher salt, black pepper, olive oil, minced garlic, lemon zest, lemon juice, unsalted butter, dill leaves, minced parsley, lemon wedges', '1. Use a boning knife to carefully remove the skin from the salmon if still intact. Cut the salmon into 4 even-sized fillets, about 2-inch wide, and 6 ounces in weight, if not already portioned. 2. Thoroughly dry the surface of the salmon and skin with paper towels. 3. Right before cooking, season both sides of the salmon with salt and pepper. 4. Heat a 12-inch stainless steel, cast iron, or nonstick pan over medium heat until hot, about 2 minutes. Add the olive oil, then turn the heat to medium-high. Once the oil begins to shimmer, about 1 to 2 minutes, carefully add the salmon one at a time, flesh side down. Using the back of a spatula, immediately press the fish down into the pan for about 10 seconds. Add the remaining fillets to the pan, pressing each one down before adding the next piece. Reduce the heat to medium. Cook the salmon, occasionally pressing down on the flesh, until the surface is golden brown, crispy, and easily releases from the pan, about 4 to 5 minutes. The salmon will be about 75 to 80% cooked through. 5. Using tongs, carefully flip the salmon over. Gently press the surface to make direct contact with the pan, do not move the fillets. Cook until the edges are opaque, and the center is slightly translucent, about 1 to 2 minutes. The internal temperature should read 120°F (49°C) for medium-rare, or 130°F (54°C) for medium. 6. Transfer the salmon to a paper towel-lined plate to drain the excess grease. Do not discard the pan. 7. Heat the same pan used to cook the salmon over medium heat. Add the garlic and lemon zest, saute for 30 seconds, until fragrant. Add the lemon juice, ½ teaspoon salt, and ¼ teaspoon black pepper. Stir and cook for 1 minute. Turn off the heat. Whisk in the butter until a lightly thickened emulsion is formed. 8. Add the salmon back to the pan, garnish with dill leaves, parsley, and then drizzle with the lemon garlic sauce. Serve salmon with lemon wedges.', 'panSearedSalmon.jpg', 'jpg', 'https://www.cookingclassy.com/chicken-and-vegetable-stir-fry/');
INSERT INTO recipes (id, user_id, dish, ingredient, instruction, filename, file_ext, source) VALUES (7, 3, 'Chicken Parmesan Kale Salad', 'rotisserie chicken breasts, red onion, parmesan cheese, kale, olive oil, white wine vinegar, lemon, italian seasoning, salt, pepper', '1. To make the Roasted Chicken Parmesan Kale Salad: Place all the dressing ingredients in a jar and shake to mix. Taste and adjust seasoning as desired. 2. Toss the kale and red onion together and drizzle with half the dressing.  Add chicken and parmesan and toss to combine. Adjust seasoning with more dressing, to your liking. Serve the roasted chicken parmesan kale salad immediately. Enjoy!', 'chickenParmSalad.jpg', 'jpg', 'https://www.eatwell101.com/healthy-chicken-parmesan-kale-salad-recipe');
INSERT INTO recipes (id, user_id, dish, ingredient, instruction, filename, file_ext, source) VALUES (8, 1, 'Curry Chicken Noodles', 'cooking oil, shallots, instant curry sauce, curry leaves, water, chicken thighs, chicken breast, russet potatoes, tau pok, cooked fish cake, coconut milk, yellow noodles, chilli powder, fish sauce', '1. In a wok, heat oil and fry the shallots until lightly browned. Add curry sauce and curry leaves, stir fry for a few minutes until fragrant. 2. Add water and chicken. Simmer for 10 minutes. 3. Add potatoes and simmer for another 10 minutes, or until the chicken is cooked and potatoes are tender. 4. Add tau pok and fish cake slices, simmer for 2 minutes. 5. Reduce heat, stir in the coconut milk and warm the curry. Add chilli powder to taste for extra heat and season to taste with salt and/or fish sauce. If the curry is too thick, add some hot water. It should be slightly soupy. 6. Take out the cooked chicken and shred to smaller chunks. 7. Blanch noodles in boiling water and a bit of oil. Drain and portion noodles in serving bowls. Top each bowl with potato, fish cake, tau pok and chicken. Ladle curry gravy over.', 'curryChickenNoodle.jpg', 'jpg', 'https://noobcook.com/curry-chicken-noodles/2/');
INSERT INTO recipes (id, user_id, dish, ingredient, instruction, filename, file_ext, source) VALUES (9, 4, 'BreakFast Burrito', 'vegetable oil, frozen shredded hash brown potatoes, eggs, green chiles, salt, pepper, breakfast sausage links, flour tortillas, shredded Mexican cheese blend', '1. In 12-inch nonstick skillet, heat 2 tablespoons of the oil over medium-high heat. Add frozen hash brown potatoes in even layer; press down lightly. Cook potatoes 7 minutes without moving. Drizzle with remaining 1 tablespoon oil; turn. Cook 6 to 8 minutes longer or until browned on both sides and hot throughout. Transfer to medium bowl; cover with foil to keep warm. Wipe out skillet. 2. In large bowl, beat eggs, green chiles, salt and pepper until well blended. In same skillet over medium-high heat, cook sausage 2 to 3 minutes, stirring frequently, until browned. Stir in egg mixture; cook 2 to 3 minutes, stirring occasionally, until scrambled. 3. To assemble burritos, spoon line of hash browns down center of each tortilla. Top with cheese and egg mixture. 4. Roll up each tortilla tightly to secure filling. Serve immediately, or freeze as directed below. 5. To freeze, wrap each burrito in foil. Label 1-gallon resealable freezer plastic bag. Transfer burritos in single layer to bag; remove as much air as possible, and freeze up to 1 month. To heat: Remove 1 burrito from foil, and wrap in lightly dampened paper towel. Place on microwavable plate; microwave uncovered on High 2 minutes 30 seconds to 4 minutes 30 seconds, turning once, until heated through (at least 165°F).', 'breakfastBurrito.jpg', 'jpg', 'https://www.pillsbury.com/recipes/easy-breakfast-burritos/2fd0666e-79c3-40e8-a375-7be8e6db7360');
INSERT INTO recipes (id, user_id, dish, ingredient, instruction, filename, file_ext, source) VALUES (10, 5, 'Egg Salad Sandwich', 'hard boiled eggs, green onions, mayonnaise, Dijon mustard, salt, pepper, Garlic powder, whole wheat bread, lettuce leaves', '1. Combine eggs, onions (if desired), mayonnaise, mustard, salt, pepper, and garlic powder (if desired), in small bowl; stir well to combine. 2. Lay bread in pairs on work surface. Spread about 1/2 cup (125 mL) egg salad filling over one slice of bread in each pair. Top with lettuce leaf and second slice of bread. 3. Cut each sandwich in half or quarters.', 'eggSaladSandwich.jpg', 'jpg', 'https://www.eggs.ca/recipes/egg-salad-sandwich');
INSERT INTO recipes (id, user_id, dish, ingredient, instruction, filename, file_ext, source) VALUES (11, 6, 'Heavenly Oreo Dessert', 'Double-Stuffed Oreo cookies, butter, Chocolate pudding mix, cold milk, Cool Whip, Cream cheese, powdered sugar', '1. Take a large zip-lock bag and place all the Oreo cookies inside. Seal bag shut and place on counter. Using a rolling pin, crush the cookies until they are small chunks/crumbs. You want them to still be chunky and small, but not fine crumbs. 2. Set aside 1/3 of the cookie crumbs for the topping. Pour remaining cookie crumbs into a 9×13 baking pan. Pour the melted butter over the crumbs and mix well to combine. Once combined, press into the pan to form a crust. 3. In a bowl, whisk together the 2 pudding mixes and milk. Cover and place in fridge to set. 4. In a medium bowl, blend cream cheese until smooth. Slowly add in the powdered sugar. Fold in one container of Cool Whip. Spread mixture over the cookie crust. Next, take chocolate pudding and spread over the cream cheese mixture. Spread the other container of Cool Whip over the chocolate pudding layer. Sprinkle the top with the remaining cookie crumbs. Cover and chill in fridge at least 2 hours before serving. 5. Enjoy.', 'heavenlyOreoDessert.jpg', 'jpg', 'https://life-in-the-lofthouse.com/heavenly-oreo-dessert/');
INSERT INTO recipes (id, user_id, dish, ingredient, instruction, filename, file_ext, source) VALUES (12, 7, 'Lauren’s Cheesecake', 'Graham Cracker Crumbs, Granulated Sugar, Melted Butter, Cream Cheese, Sour Cream, Vanilla Extract, Eggs', '1. Stir graham cracker crumbs, sugar and melted butter together and press into a 9-inch springform pan. Bake for 7 minutes in a 350-degree oven. Set aside to cool. 2. Stir very soft cream cheese together with the granulated sugar. Stir in the vanilla and sour cream. Scrape the sides really really well and stir again to ensure there are no lumps. Whisk eggs together in a separate bowl and slowly add to the cheesecake filling with the mixer on. Once eggs are incorporated turn mixer off. Scrape the sides really well to ensure a very smooth batter. If there are lumps, stir them in by hand. 3. Tap bowl on the counter for 30-45 seconds to remove air bubbles. Air bubbles can contribute to why cheesecakes crack and we definitely want to prevent that. This is a small step, but makes a big difference. 4. Pour batter into graham cracker crust, smooth the top and bake. Bake at 325 degrees, reduce heat to 250 to finish cooking. Keep the oven door closed this entire time! Let cheesecake sit in the hot oven with the oven closed for 30 minutes before cracking the door and letting it continue cooling for another hour. Remove from oven and bring cheesecake to room temperature. 5. Once the cheesecake is at room temperature, you can cover and refrigerate until completely chilled. The beautiful thing about cheesecake is it’s a great dessert to make in advance because it stores so well in the fridge. When you’re ready to serve, cut into slices, top with any desired toppings (see notes below) and enjoy! ', 'laurensCheeseCake.jpg', 'jpg', 'https://laurenslatest.com/cheesecake-recipe/');
INSERT INTO recipes (id, user_id, dish, ingredient, instruction, filename, file_ext, source) VALUES (13, 8, 'Green Enchiladas Chicken Soup', 'Chicken breasts or thighs, Green enchilada sauce, Chicken broth, heavy cream, Monterey jack cheese, Cream cheese, Green salsa, Salt, pepper, avocado, green onion, sour cream, cilantro', '1. In a 6-quart slow cooker, add chicken breast or thighs, green enchilada sauce, and chicken broth. Cook on Low 6 to 8 hours. 2. Remove chicken and shred. 3. Add half and half, jack cheese, cream cheese, and green salsa. Turn the crockpot to warm and stir until the cheeses are melted. 4. Add chicken back to the pot. 5. Use hot sauce or additional salsa to taste. Delicious topped with avocado, cilantro, green onion, and sour cream. Serve and enjoy!', 'greenEnchiladasChickenSoup.jpg', 'jpg', 'https://seekinggoodeats.com/green-enchiladas-chicken-soup-keto-slow-cooker-mexican-soup/');
INSERT INTO recipes (id, user_id, dish, ingredient, instruction, filename, file_ext, source) VALUES (14, 9, 'Spicy Black Bean Soup', 'extra-virgin olive oil, yellow onions, celery ribs, large carrot, garlic cloves, ground cumin, red pepper flakes, black beans, vegetable broth, chopped fresh cilantro, sherry vinegar, black pepper, diced avocado, cilantro, lime juice, thinly sliced radishes, tortilla chips', '1. Heat the olive oil in a large Dutch oven or soup pot over medium heat until shimmering. Add the onions, celery and carrot and a light sprinkle of salt. Cook, stirring occasionally, until the vegetable are soft, about 10 to 15 minutes. 2. Stir in the garlic, cumin and red pepper flakes and cook until fragrant, about 30 seconds. Pour in the beans and broth and bring to a simmer over medium-high heat. Cook, reducing heat as necessary to maintain a gentle simmer, until the broth is flavorful and the beans are very tender, about 30 minutes. 3. Transfer about 4 cups of the soup to a stand blender, securely fasten the lid, and blend until smooth (never fill your blender past the maximum fill line, and beware the steam that escapes from the top of the blender, it’s very hot). Or, use an immersion blender to blend a portion of the soup. 4. Return the pureed soup to the pot, stir in the cilantro, vinegar/lime juice and salt and pepper, to taste. Serve.', 'spicyBlackBeanSoup.jpg', 'jpg', 'https://cookieandkate.com/spicy-vegan-black-bean-soup/');
INSERT INTO recipes (id, user_id, dish, ingredient, instruction, filename, file_ext, source) VALUES (15, 9, 'Salmon Chowder', 'Unsalted butter, Bacon, Stalks celery, Small onion, Jalapeno, Bunch scallions, Garlic cloves, seafood stock, Large russet potatoes, Salt, Black pepper, Cornstarch, Frozen corn, Heavy cream, 1.5 lb piece salmon, Chives', '1. In a large, heavy stock pot, melt butter over medium heat. Add the bacon and cook, stirring often, until bacon begins to crisp, about 8 minutes. Using a slotted spoon, remove bacon from the pan and set aside. 2. Add celery, onions, jalapeños, scallions and garlic and cook, stirring often, until softened, about 8 minutes. Add the broth, potatoes, 1 teaspoon salt, pepper and cooked bacon. Bring to a simmer and cook until the potatoes are tender, about 15 minutes. 3. In a small bowl, whisk cornstarch and two tablespoons of water to form a slurry. Stir the cornstarch slurry into the broth and bring to a boil. Let the soup boil for about 2 minutes to thicken slightly. 4. Turn the heat down to a gentle simmer, and stir in the corn and heavy cream. Place the salmon pieces on top of the simmering soup, season it with ½ teaspoon of salt, and cover the pot with a lid. Simmer for ten minutes, or until the salmon is cooked through. 5. Top with fresh chives or extra scallions and freshly ground black pepper. Enjoy!', 'salmonChowder.jpg', 'jpg', 'https://themodernproper.com/salmon-chowder');
INSERT INTO recipes (id, user_id, dish, ingredient, instruction, filename, file_ext, source) VALUES (16, 2, 'Best Black Bean Burgers', 'black beans, extra virgin olive oil, bell pepper, yellow onion, garlic cloves, ground cumin, chili powder, garlic powder, smoked paprika, bread crumbs, feta cheese, eggs, Worcestershire sauce, ketchup, BBQ sauce, salt, pepper', '1. Preheat oven to 325°F (163°C). Spread beans evenly onto a lined baking sheet and bake for 15 minutes until slightly dried out. 2. Meanwhile, sauté olive oil, chopped pepper, onion, and garlic over medium heat until peppers and onions are soft, about 5-6 minutes. Gently blot some of the moisture out. Place in a large bowl or in a food processor with the remaining ingredients (cumin, chili powder, garlic powder, smoked paprika, bread crumbs, cheese, eggs, worcestershire, ketchup, salt, and pepper). Stir or pulse everything together, then add the black beans. Mash with a fork or pulse the mixture, leaving some larger chunks of beans. 3. 	Form into patties– about 1/3 cup of mixture in each. 4. To bake: Place patties on a parchment paper lined baking sheet and bake at 375°F (191°C) for 10 minutes on each side, 20 minutes total. To grill: Place patties on greased aluminum foil and grill 8 minutes on each side. Heat temperature is personal preference as all grills differ. Generally, black bean burgers should grill on medium-high heat about 350°F (177°C) – 400°F (204°C). 5. Serve with your favorite toppings. Store leftovers in the refrigerator for up to 5 days.', 'blackBeanBurger.jpg', 'jpg', 'https://sallysbakingaddiction.com/best-black-bean-burgers/');
INSERT INTO recipes (id, user_id, dish, ingredient, instruction, filename, file_ext, source) VALUES (17, 2, 'Unbeatable Hamburger', 'ground beef or ground chuck, Worcestershire sauce, seasoning salt, garlic powder, black pepper, slices of cheese, hamburger buns, lettuce, tomato, onion, pickles, ketchup, mustard, mayo', '1. Preheat the grill to 375 degrees F (medium-high). 2. In a large bowl, add the beef. Sprinkle evenly with the Worcestershire sauce, seasoning salt, garlic powder, and pepper. Use your hands to mix the ingredients until they are just combined. 3. Divide the meat mixture into fourths. Take 1/4 of the meat mixture and use your hands to press it into the shape of a hamburger patty that is about 3/4 inch thick. Make an indention in the middle of the patty to prevent bulging in the center of the hamburger as it cooks. Repeat with the remaining meat mixture, making 4 hamburgers. 4. Place the burgers on the grill. Cook 4-5 minutes on the first side. Flip the burgers over and cook an additional 4-5 minutes, until the burgers have reached the desired doneness. 5. If adding cheese, lay a slice of cheese on each burger patty about 1 minute before taking the burgers off the grill, so the cheese has a chance to melt. 6. Serve the burgers on hamburger buns with optional hamburger toppings.', 'unbeatableHamberger.jpg', 'jpg', 'https://www.thewholesomedish.com/the-best-classic-burger/');


CREATE TABLE tags (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
  label TEXT NOT NULL UNIQUE
);

-- Seed Data for the tags table
INSERT INTO tags (id, label) VALUES (1, 'breakfast');
INSERT INTO tags (id, label) VALUES (2, 'lunch');
INSERT INTO tags (id, label) VALUES (3, 'dinner');
INSERT INTO tags (id, label) VALUES (4, 'dessert');
INSERT INTO tags (id, label) VALUES (5, 'oreos');
INSERT INTO tags (id, label) VALUES (6, 'soup');
INSERT INTO tags (id, label) VALUES (7, 'nice and warm');
INSERT INTO tags (id, label) VALUES (8, 'spicy');
INSERT INTO tags (id, label) VALUES (9, 'seafood');
INSERT INTO tags (id, label) VALUES (10, 'burger');


CREATE TABLE recipe_tags (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
  tag_id INTEGER NOT NULL,
  recipe_id INTEGER NOT NULL,

  FOREIGN KEY (recipe_id) REFERENCES recipes(id),
  FOREIGN KEY (tag_id) REFERENCES tags(id)
);

INSERT INTO recipe_tags (tag_id, recipe_id) VALUES (1, 1); -- Breakfast, bacon n egg
INSERT INTO recipe_tags (tag_id, recipe_id) VALUES (2, 2); -- Lunch, lemon chicken
INSERT INTO recipe_tags (tag_id, recipe_id) VALUES (3, 3); -- Dinner, mac n cheese
INSERT INTO recipe_tags (tag_id, recipe_id) VALUES (2, 4); -- Lunch, broccoli pesto
INSERT INTO recipe_tags (tag_id, recipe_id) VALUES (3, 5); -- Dinner, stir fry chicken
INSERT INTO recipe_tags (tag_id, recipe_id) VALUES (2, 6); -- Lunch, pan seared salmon
INSERT INTO recipe_tags (tag_id, recipe_id) VALUES (2, 7); -- Lunch, chicken parm salad
INSERT INTO recipe_tags (tag_id, recipe_id) VALUES (3, 8); -- Dinner, curry noodle soup
INSERT INTO recipe_tags (tag_id, recipe_id) VALUES (8, 8); -- spicy, curry noodle soup
INSERT INTO recipe_tags (tag_id, recipe_id) VALUES (6, 8); -- soup, curry noodle soup
INSERT INTO recipe_tags (tag_id, recipe_id) VALUES (1, 9); -- Breakfast, breakfast burrito
INSERT INTO recipe_tags (tag_id, recipe_id) VALUES (1, 10); -- Breakfast, egg sandwich
INSERT INTO recipe_tags (tag_id, recipe_id) VALUES (4, 11); -- dessert, heavenly oreo dessert
INSERT INTO recipe_tags (tag_id, recipe_id) VALUES (5, 11); -- oeros, heavenly oreo dessert
INSERT INTO recipe_tags (tag_id, recipe_id) VALUES (4, 12); -- dessert, cheesecake
INSERT INTO recipe_tags (tag_id, recipe_id) VALUES (6, 13); -- soup, Green Enchiladas Chicken Soup
INSERT INTO recipe_tags (tag_id, recipe_id) VALUES (7, 13); -- nice and warm, Green Enchiladas Chicken Soup
INSERT INTO recipe_tags (tag_id, recipe_id) VALUES (6, 14); -- soup, Spicy Black Bean Soup
INSERT INTO recipe_tags (tag_id, recipe_id) VALUES (8, 14); -- spicy, Spicy Black Bean Soup
INSERT INTO recipe_tags (tag_id, recipe_id) VALUES (6, 15); -- soup, Salmon Chowder
INSERT INTO recipe_tags (tag_id, recipe_id) VALUES (9, 15); -- seafood, Salmon Chowder
INSERT INTO recipe_tags (tag_id, recipe_id) VALUES (10, 16); -- burger, Best Black Bean Burgers
INSERT INTO recipe_tags (tag_id, recipe_id) VALUES (8, 16); -- spicy, Best Black Bean Burgers
INSERT INTO recipe_tags (tag_id, recipe_id) VALUES (10, 17); -- burger, Unbeatable Hamburger


CREATE TABLE memberships (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
  group_id INTEGER NOT NULL,
  user_id INTEGER NOT NULL,

  FOREIGN KEY (group_id) REFERENCES groups(id),
  FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO memberships (group_id, user_id) VALUES (1, 1); -- Steve
INSERT INTO memberships (group_id, user_id) VALUES (1, 2); -- Emily
INSERT INTO memberships (group_id, user_id) VALUES (1, 3); -- Andrew
INSERT INTO memberships (group_id, user_id) VALUES (1, 4); -- Bob
INSERT INTO memberships (group_id, user_id) VALUES (1, 5); -- John
INSERT INTO memberships (group_id, user_id) VALUES (1, 6); -- Celine
INSERT INTO memberships (group_id, user_id) VALUES (1, 7); -- Katherine
INSERT INTO memberships (group_id, user_id) VALUES (1, 8); -- Karen
INSERT INTO memberships (group_id, user_id) VALUES (1, 9); -- Matt



CREATE TABLE groups (
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
  name TEXT NOT NULL UNIQUE
);

INSERT INTO groups (id, name) VALUES (1, 'homecook')