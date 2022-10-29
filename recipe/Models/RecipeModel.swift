//
//  RecipeModel.swift
//  recipe
//
//  Created by BekRoz on 29/10/22.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
    
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            name: "Cream Carrot Soup",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/98892/Creamy-Carrot-Soup-for-Wordpress-360x270-c.jpg",
            description: "This bold-hued soup is perfectly sweet and seriously comforting. Peeling the red bell pepper helps make this carrot soup extra silky. Dress it up with a drizzle of rich cashew cream, pomegranate seeds, and chopped fresh parsley for a festive fall presentation.",
            ingredients: "¼ cup cashews\n1 medium onion, cut into ½-inch dice (2 cups)\n1½ pounds carrots, cut into ½-inch dice (3½ cups)\n1 red bell pepper, peeled and cut into ½-inch dice (1 cup)\n1 sprig fresh rosemary\n1 sprig fresh thyme\n1 large fresh sage leaf\n4 cloves garlic, minced\n1 tablespoon lemon juice\nSea salt and freshly ground black pepper or cayenne pepper, to taste\n½ cup fresh pomegranate seeds\n2 tablespoons finely chopped fresh parsley",
            directions: "In a small bowl, cover the cashews with ½ cup hot water; let soak 20 minutes. Transfer cashews and remaining liquid to a blender; blend until smooth and creamy. Set aside.\nIn a saucepan, combine onion, carrots, bell pepper, rosemary, thyme, sage, and garlic. Add ½ cup water and sauté over medium heat for 15 to 20 minutes, or until carrots are tender.\nRemove pan from heat. Let vegetables cool for 10 minutes; then remove rosemary sprigs and thyme leaf.\nTransfer sauteed vegetables to a blender, and puree to a smooth paste. Return pureed vegetables to saucepan and add 3 cups water and 1 tablespoon lemon juice. Season with salt and pepper. Bring soup to boiling.\nTo serve, place soup in individual bowls, drizzle with cashew cream, and garnish with pomegranate seeds and parsley.",
            category: "Soup",
            datePublished: "2019-11-11",
            url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/creamy-carrot-soup/"
        ),
        Recipe(
            name: "Kale, Apple, and Quinoa Salad",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/98341/Kale-Apple-Quinoa-Salad-wordpress-360x270-c.jpg",
            description: "Each bite of this colorful salad is filled with the flavors of favorite fall ingredients such as apples, butternut squash, and pumpkin seeds. For optimum freshness and texture, wait to add the dressing until just before serving.\nNote that this recipe calls for cooked quinoa, so have that ready to go: For 1½ cups cooked quinoa, rinse and drain ½ cup quinoa; cook according to package directions; and drain if needed. Check out our Grains Cooking Guide for more tips on prepping grains like a pro.",
            ingredients: "2 cups ¾-inch pieces peeled butternut squash\n¼ cup pumpkin seeds\n¼ teaspoon ground cinnamon\n1 lemon\n2 tablespoons pure maple syrup\n1 tablespoon Dijon mustard\n3 cups stemmed and chopped kale\n1½ cups cooked quinoa\n1 cup chopped apple\n½ cup sliced green onions\nSea salt and freshly ground black pepper, to taste",
            directions: "Preheat oven to 400°F. Line a 15×10-inch baking pan with parchment paper or a silicone baking mat. Arrange squash in the prepared baking pan. Roast 20 to 25 minutes or until squash is tender, brushing lightly with water if squash starts to look dry. Cool slightly on a wire rack.\nMeanwhile, in a small bowl toss together pumpkin seeds and ½ teaspoon water; sprinkle with cinnamon. Place pumpkin seeds in a small, shallow baking pan. Roast 5 minutes or until lightly toasted; cool.\nFor dressing, remove 1 teaspoon zest and squeeze 2 tablespoons juice from lemon. In a small bowl whisk together lemon zest and juice, maple syrup, and mustard.\nIn a large bowl combine kale, quinoa, apple, green onions, and roasted squash. Add dressing; toss to coat. Season with salt and pepper. Top with pumpkin seeds.",
            category: "Salad",
            datePublished: "2019-10-22",
            url: "https://www.forksoverknives.com/recipes/vegan-salads-sides/kale-apple-and-quinoa-salad/"
        ),
        Recipe(
            name: "Delhi Chaat",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/159514/Delhi-Chaat-wordpress-360x270-c.jpg",
            description: "In this variation of aloo tikki, a beloved North Indian street food, spiced potato patties are smothered in a quick chickpea curry and then topped with Cilantro-Spinach Chutney, crushed rice crackers, and fresh onions and tomatoes. The contrasting textures of creamy curry and crunchy garnishes create a delicious mouthfeel that will have you reaching for a second or third helping.  This tasty snack is an ideal appetizer for parties—display it family-style on a big platter to showcase the colorful ingredients!",
            ingredients: "3 large russet potatoes, peeled and cut into 1½-inch pieces (2½ lb.)\n1 cup panko bread crumbs\n2 cups unsweetened, unflavored plant-based milk\n5 tablespoons lemon juice\n3 teaspoons grated fresh ginger\n1½ teaspoons ground cumin\n1½ teaspoons ground coriander\n1 teaspoon ground turmeric\nSea salt, to taste\nFreshly ground black pepper, to taste\n1½ cups finely chopped onions\n1 cup chopped tomatoes\n5 cloves garlic, minced\n1 teaspoon curry powder\n⅛ teaspoon cayenne pepper\n1 15-oz. can chickpeas, rinsed and drained\n2¼ cup chopped fresh cilantro\n1½ teaspoons date paste\n2 cups packed fresh spinach\n¼ of a small red onion, halved\n1 fresh serrano chile pepper, seeded\n1 pitted date\n½ teaspoon cumin seeds\n½ cup rice crackers (crushed)",
            directions: "Preheat oven to 450°F. Line a baking sheet with parchment paper.\nPlace potato pieces in a steamer insert in a large saucepan. Add water to saucepan to just below basket. Bring to boiling. Steam, covered, 15 minutes or until very tender. Transfer potatoes to a bowl. Let cool and coarsely mash.\nIn a small bowl stir together panko, 1 cup of the milk, 2 tablespoons of the lemon juice, 1 teaspoon of the ginger, the cumin, coriander, and ½ teaspoon of the turmeric; season with salt and black pepper. Add to mashed potatoes; mix well.\nRoll ½ cup of the mashed potatoes into a ball, then flatten into a 2½-inch patty that is 1-inch thick. Repeat to make eight patties.\nPlace patties 1 inch apart on the prepared baking sheet. Bake 40 minutes or until evenly browned, turning once halfway through baking.\nMeanwhile, in a large skillet combine ½ cup water, 1 cup of the onions, ½ cup of the tomatoes, four cloves garlic, the remaining 2 teaspoons ginger, the remaining ½ teaspoon turmeric, the curry powder, and cayenne pepper. Cook, covered, on medium-low 20 minutes, stirring occasionally.\nAdd chickpeas, the remaining 1 cup milk, 1 tablespoon lemon juice, the cilantro, and date paste to tomato mixture. Season with salt and pepper. Cook 5 to 7 minutes or until curry thickens.\nFor Cilantro-Spinach Chutney, combine 2 cups cilantro, spinach, red onion, remaining 2 tablespoons lemon juice, serrano pepper, date, 1 clove garlic, cumin seeds, and ¼ cup water in a blender and blend to a smooth paste. Season with salt and black pepper. Transfer to an airtight container. Chill up to 1 week.\nArrange patties on a large platter, top with the curry, drizzle with Cilantro-Spinach Chutney, and sprinkle with crushed rice crackers and the remaining ½ cup each onions and tomatoes. Serve warm.",
            category: "Appetizer",
            datePublished: "2022-01-06",
            url: "https://www.forksoverknives.com/recipes/vegan-snacks-appetizers/delhi-chaat/"
        ),
        Recipe(
            name: "Grilled Mushroom Burgers with Tarragon Crema",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/157599/Mushroom-Burger-with-Tarragon-Crema-wordpress-360x270-c.jpg",
            description: "Summer herbs are a treasure trove of flavor, and the bright floral notes of tarragon shine through in this crowd-pleasing burger recipe. Smoky grilled portobellos are layered with fresh spinach, tomato, and a creamy cashew-based tarragon sauce for a meal that will please kids and adults alike. Pair these savory burgers with a handful of Baked French Fries to satisfy all your fast food cravings without the unhealthy ingredients. To make this recipe gluten-free, serve them on certified gluten-free buns.\nTip: To give the mushroom patties a smoky tarragon flavor, dip sprigs of tarragon in water and toss them onto the coals while grilling.",
            ingredients: "⅓ cup raw cashews, soaked in very hot water for 15 minutes\n1 tablespoon tahini\n1 tablespoon Dijon mustard\n1 tablespoon lemon juice\n1 small clove garlic, minced\n¼ to ⅓ cup unsweetened, unflavored plant-based milk\n¼ cup fresh tarragon, chopped\nFreshly ground black pepper, to taste\n4 portobello mushrooms, stems removed\n1 tablespoon balsamic vinegar\n4 whole grain hamburger buns, split and toasted\n1 cup fresh spinach\n4 slices tomato",
            directions: "For sauce, in a blender or small food processor combine soaked, drained cashews with the next four ingredients (through garlic). Cover and blend until smooth, gradually adding plant-based milk until sauce is creamy and spreading consistency. Stir in tarragon. Season with pepper.\nBrush mushrooms with vinegar. Grill mushrooms over medium 15 to 20 minutes or until tender, turning once.\nFill buns with spinach, mushrooms, and tomato slices. Spoon sauce over top. Serve immediately.",
            category: "Main",
            datePublished: "2021-08-02",
            url: "https://www.forksoverknives.com/recipes/vegan-burgers-wraps/grilled-mushroom-burgers-with-tarragon-crema/"
        ),
        Recipe(
            name: "Sun-Dried Tomato and Chickpea Sliders",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/157340/sun-dried-chickpea-sliders-wordpress-360x270-c.jpg",
            description: "Put the veggie back in veggie burger with these produce-packed sliders. Mushrooms, chickpeas, zucchini, onion, garlic, and sun-dried tomatoes come together to form the succulent, savory patties, while balsamic-infused zucchini slices serve as buns. These sliders are on the smaller side; if you place them directly on the grill, you run the risk of losing them through the grates. We recommend using a grill pan when cooking them on the grill or on the stove.\nTip: Be sure to reserve the chickpea liquid (aquafaba) before rinsing and draining the chickpeas; you’ll use it to fine-tune the texture of the patty mixture.",
            ingredients: "½ cup chopped onion\n½ cup coarsely chopped fresh mushrooms\n½ cup coarsely chopped zucchini\n1 clove garlic, minced\n¾ cup no-salt-added chickpeas, rinsed and drained, and liquid (aquafaba) reserved\n¼ cup chopped sun-dried tomatoes (not oil packed)\n1 teaspoon Italian seasoning, crushed\n½ teaspoon lemon zest\nSea salt and freshly ground black pepper, to taste\n¼ cup cornmeal\n1 large zucchini, cut lengthwise into ½-inch-thick planks\n2 tablespoons balsamic vinegar\n8 slices roma tomato",
            directions: "In a large skillet cook the first four ingredients (through garlic) over medium 3 to 4 minutes, stirring occasionally and adding water, 1 to 2 Tbsp. at a time, as needed to prevent sticking. Place in a food processor with the chickpeas, sun-dried tomatoes, Italian seasoning, and lemon zest. Cover and pulse until chunky but not pureed. Add 1 to 2 Tbsp. of the aquafaba if the mixture seems dry or isn’t sticking together. Mixture should be moist but not wet. Season with salt and pepper.\nWith wet hands, shape bean mixture into eight patties. Chill at least 20 minutes. Lightly dredge patties in cornmeal to coat.\nHeat a grill pan over medium-high. Cook sliders 8 to 10 minutes or until browned and heated through, turning once. Brush zucchini planks with some of the balsamic vinegar. Cook in grill pan 4 to 6 minutes or until crisp-tender and grill marks appear, turning once. Cut planks into 16 pieces for “buns.” Place sliders and tomato slices between plank pieces. Drizzle with any remaining vinegar.",
            category: "Main",
            datePublished: "2021-07-19",
            url: "https://www.forksoverknives.com/recipes/vegan-burgers-wraps/sun-dried-tomato-and-chickpea-sliders/"
        ),
        Recipe(
            name: "Vegan Southern Green Beans",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/159467/Southern-Green-Beans-wordpress-360x270-c.jpg",
            description: "Smoked paprika and crushed red pepper give these saucy, tender Southern-style green beans a delicious kick of heat. Tangy red onion adds bright flavor, while a dusting of freshly ground black pepper right before serving amplifies all the savory ingredients. Make this quick and simple side dish for a vegan holiday feast or whenever you’re craving healthy comfort food.",
            ingredients: "1 cup chopped red onion\n6 cloves garlic, minced\n1 cup low-sodium vegetable broth\n1½ lb. fresh green beans, trimmed\n½ teaspoon smoked paprika\n¼ teaspoon crushed red pepper\nFreshly ground black pepper, to taste\n1 tablespoon apple cider vinegar (optional)",
            directions: "In a large pot or deep extra-large skillet cook onion and garlic over medium 3 to 4 minutes or until tender, stirring occasionally and adding vegetable broth, 1 to 2 tablespoons at a time, as needed to prevent sticking. Add remaining broth, the green beans, paprika, and crushed red pepper. Increase heat to high. Bring to boiling; reduce heat. Cover and simmer 20 minutes or until green beans are very tender, tossing occasionally.\nSeason with black pepper. If desired, sprinkle with vinegar.",
            category: "Side",
            datePublished: "2021-12-24",
            url: "https://www.forksoverknives.com/recipes/vegan-salads-sides/vegan-southern-green-beans/"
        ),
        Recipe(
            name: "Pumpkin Ice Cream",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/158609/Pumpkin-Ice-Cream-wordpress-360x270-c.jpg",
            description: "Enjoy your favorite fall flavors with this simple and refreshing pumpkin ice cream that’s totally vegan. Even though tofu might not be the first thing that comes to mind when you think of ice cream, it makes this recipe lusciously creamy and perfectly scoopable. Top a bowl of this frozen dessert with some Aquafaba Whipped Cream, crushed walnuts, and an extra drizzle of maple syrup.",
            ingredients: "¼ cup pure maple syrup\n2 tablespoons finely chopped pitted whole dates\n1 15-oz. can pumpkin\n1 14-oz. package firm, light silken-style tofu\n1 teaspoon pure vanilla extract\n½ teaspoon ground cinnamon",
            directions: "In a small saucepan bring maple syrup and dates just to boiling. Remove from heat. Cover and let stand for 20 minutes.\nIn a blender or food processor combine date mixture and the remaining ingredients. Cover and blend or process until smooth. Transfer to a bowl; cover and refrigerate 4 to 24 hours.\nFreeze chilled mixture in a 1½- or 2-quart ice cream maker according to the manufacturer’s directions. Serve immediately for a soft-serve ice cream or freeze at least 2 hours for a scoopable ice cream.",
            category: "Dessert",
            datePublished: "2021-10-06",
            url: "https://www.forksoverknives.com/recipes/vegan-desserts/pumpkin-ice-cream/"
        ),
        Recipe(
            name: "Herbed Breakfast Hash",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/158221/herbed-breakfast-hash-wordpress-360x270-c.jpg",
            description: "Hash is a great dish for using up leftover veggies in your fridge that you don’t know what to do with. Seasoned with fragrant garlic, smoky chili powder, and lots of fresh herbs, this recipe is a  hearty and healthy way to start your day. Serve it with a side of whole grain toast and a scoop of homemade vegan yogurt, and you’ve got a breakfast of champions!\nTip: To neatly slice corn from the cob, stand the stem end on the center hole of a tube pan. Slice downward so kernels fall into the pan.",
            ingredients: "½ cup chopped onion\n½ cup chopped red bell pepper\n3 cloves garlic, minced\n1 teaspoon chili powder\n1½ cups low-sodium vegetable broth\n2 lb. chopped red potatoes\n1½ cups fresh sweet corn kernels (cut from 3 ears)\n1 medium zucchini, halved lengthwise and sliced\n1 cup grape tomatoes, halved\n⅓ cup chopped fresh herbs, such as basil, dill, parsley, and/or thyme\nSea salt, to taste\nFreshly ground black pepper, to taste",
            directions: "In an extra-large skillet cook onion, bell pepper, garlic, and chili powder over medium 3 to 4 minutes, stirring occasionally. Add vegetable broth, 1 to 2 tablespoons at a time, as needed to prevent sticking. Add potatoes and 1 cup of the broth. Cover and cook 10 to 15 minutes or until potatoes are almost tender.\nAdd corn, zucchini, and the remaining broth; cook 5 to 7 minutes or until tender. Stir in tomatoes and herbs. Cook 1 to 2 minutes or until heated through. Season with salt and black pepper.",
            category: "Breakfast",
            datePublished: "2021-08-31",
            url: "https://www.forksoverknives.com/recipes/vegan-breakfast/herbed-breakfast-hash/"
        )
    ]
}
