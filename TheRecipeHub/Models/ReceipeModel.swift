//
//  RecipeModel.swift
//  TheRecipeHub
//
//  Created by Alan Haro on 9/4/24.
//

import Foundation

// Category Enum
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

// Recipe Model
struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category
    let datePublished: String
    let url: String
}

// Recipe Extension with Sample Data
extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            name: "Taquito Casserole",
            image: "https://www.allrecipes.com/thmb/pBu6CqfgafCvBrnm7Y-WeTJ3d3c=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/8673259-taquito-casserole-ddmfs-4x3-2-c50d82d59206482f9d9b8f1222b0cc6d.jpg",
            description: "This taquito casserole, with a creamy base of beans, corn, and cheese, baked crispy taquitos on top, and a drizzle of jalapeno crema, is like an enchilada casserole but with tiny enchiladas.",
            ingredients: """
            - cooking spray
            - 1 (19 ounce) can mild red enchilada sauce
            - 1 (15 ounce) can black beans drained and rinsed
            - 2 1/2 cups frozen corn
            - 1 (8.8 ounce) package pre-cooked microwaveable white rice
            - 1 cup finely chopped red bell pepper
            - 1/2 cup finely chopped red onion
            - 1/2 cup heavy whipping cream
            - 1 (1 ounce) package mild taco seasoning
            - 1 1/2 teaspoons kosher salt
            - 1 teaspoon smoked paprika
            - 1 teaspoon ground cumin
            - 16 ounces shredded Mexican cheese blend, divided
            - 20 frozen beef and cheese flour tortilla taquitos
            - 1/2 cup sour cream
            - 2 tablespoons freshly-squeezed lime juice
            - 2 tablespoons pickling liquid from jarred pickled jalapenos
            - 2 tablespoons drained pickled jalapenos
            - 1/4 cup loosely packed fresh cilantro leaves
            """,
            directions: """
            Gather all ingredients. Preheat the oven to 375 degrees F (190 degrees C). Lightly coat a 9x13-inch baking dish with cooking spray; set aside. Stir together enchilada sauce, beans, corn, rice, bell pepper, red onion, cream, taco seasoning, salt, paprika, cumin, and 3 cups shredded cheese in a large bowl until well combined. Spread into the prepared baking dish in an even layer. Arrange taquitos evenly over rice mixture. Bake in the preheated oven until taquitos are crispy and rice mixture is bubbling, about 40 minutes.

            Meanwhile, whisk together sour cream, lime juice, and pickling liquid in a small bowl until smooth. Set aside, uncovered, at room temperature until ready to serve. Remove baking dish from oven, and sprinkle evenly with remaining cheese. Top evenly with jalapeño slices. Bake at 375 degrees F (190 degrees C) until cheese is melted, about 8 minutes more. Let stand for 10 minutes. Top evenly with cilantro leaves. Drizzle each serving with jalapeño crema.
            """,
            category: .main,
            datePublished: "September 3, 2024",
            url: "https://www.allrecipes.com/taquito-casserole-recipe-8673259"
        ),
        Recipe(
            name: "Honey Chicken Kabobs",
            image: "https://www.allrecipes.com/thmb/aWCVwgA99C7LxW39C4LbJa9PG1A=/0x512/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/8626-yummy-honey-chicken-kabobs-DDMFS-4x3-f859cd49cf184e6c945c9c630b745871.jpg",
            description: "These chicken kabobs are marinated in a sweet and savory soy sauce and honey mixture that doubles as a basting sauce as the kabobs cook on the grill, adding delicious flavor to every bite of juicy chicken.",
            ingredients: """
            - Chicken: Cut boneless, skinless chicken breast halves into 1-inch cubes.
            - Onion: You can use any onion variety you want — red, white, or sweet — depending on your flavor preferences. Cut the onion into 2-inch pieces.
            - Bell peppers: This recipe calls for two red bell peppers cut into 2-inch pieces. You can also use yellow or green peppers.
            - Garlic: You'll add two cloves of fresh garlic to the marinade with the other ingredients.
            - Skewers: You can usually find bamboo skewers in the grilling aisle at your grocery store.
            """,
            directions: """
            Make the marinade: Whisk together the honey, soy sauce, oil, and black pepper in a large bowl. Transfer ¼-cup of the marinade to a small jar and seal. Marinate the ingredients: Add the chicken, onions, peppers, and garlic to the marinade in the bowl. Cover and refrigerate for at least two hours, but preferably overnight. Assemble the kabobs: Drain the chicken and vegetables, then discard the marinade. Thread the ingredients onto the skewers. Grill the kabobs: Grill the skewers on a lightly oiled, preheated grate. Cook, turning frequently and brushing with reserved marinade, until the chicken is fully cooked and no longer pink in the center.
            """,
            category: .snack,
            datePublished: "June 26, 2024",
            url: "https://www.allrecipes.com/recipe/8626/yummy-honey-chicken-kabobs/"
        ),
        Recipe(
            name: "Honey Chicken Kabobs",
            image: "https://www.allrecipes.com/thmb/aWCVwgA99C7LxW39C4LbJa9PG1A=/0x512/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/8626-yummy-honey-chicken-kabobs-DDMFS-4x3-f859cd49cf184e6c945c9c630b745871.jpg",
            description: "These chicken kabobs are marinated in a sweet and savory soy sauce and honey mixture that doubles as a basting sauce as the kabobs cook on the grill, adding delicious flavor to every bite of juicy chicken.",
            ingredients: """
            - Chicken: Cut boneless, skinless chicken breast halves into 1-inch cubes.
            - Onion: You can use any onion variety you want — red, white, or sweet — depending on your flavor preferences. Cut the onion into 2-inch pieces.
            - Bell peppers: This recipe calls for two red bell peppers cut into 2-inch pieces. You can also use yellow or green peppers.
            - Garlic: You'll add two cloves of fresh garlic to the marinade with the other ingredients.
            - Skewers: You can usually find bamboo skewers in the grilling aisle at your grocery store.
            """,
            directions: """
            Make the marinade: Whisk together the honey, soy sauce, oil, and black pepper in a large bowl. Transfer ¼-cup of the marinade to a small jar and seal. Marinate the ingredients: Add the chicken, onions, peppers, and garlic to the marinade in the bowl. Cover and refrigerate for at least two hours, but preferably overnight. Assemble the kabobs: Drain the chicken and vegetables, then discard the marinade. Thread the ingredients onto the skewers. Grill the kabobs: Grill the skewers on a lightly oiled, preheated grate. Cook, turning frequently and brushing with reserved marinade, until the chicken is fully cooked and no longer pink in the center.
            """,
            category: .snack,
            datePublished: "June 26, 2024",
            url: "https://www.allrecipes.com/recipe/8626/yummy-honey-chicken-kabobs/"
        ),
        Recipe(
            name: "Honey Chicken Kabobs",
            image: "https://www.allrecipes.com/thmb/aWCVwgA99C7LxW39C4LbJa9PG1A=/0x512/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/8626-yummy-honey-chicken-kabobs-DDMFS-4x3-f859cd49cf184e6c945c9c630b745871.jpg",
            description: "These chicken kabobs are marinated in a sweet and savory soy sauce and honey mixture that doubles as a basting sauce as the kabobs cook on the grill, adding delicious flavor to every bite of juicy chicken.",
            ingredients: """
            - Chicken: Cut boneless, skinless chicken breast halves into 1-inch cubes.
            - Onion: You can use any onion variety you want — red, white, or sweet — depending on your flavor preferences. Cut the onion into 2-inch pieces.
            - Bell peppers: This recipe calls for two red bell peppers cut into 2-inch pieces. You can also use yellow or green peppers.
            - Garlic: You'll add two cloves of fresh garlic to the marinade with the other ingredients.
            - Skewers: You can usually find bamboo skewers in the grilling aisle at your grocery store.
            """,
            directions: """
            Make the marinade: Whisk together the honey, soy sauce, oil, and black pepper in a large bowl. Transfer ¼-cup of the marinade to a small jar and seal. Marinate the ingredients: Add the chicken, onions, peppers, and garlic to the marinade in the bowl. Cover and refrigerate for at least two hours, but preferably overnight. Assemble the kabobs: Drain the chicken and vegetables, then discard the marinade. Thread the ingredients onto the skewers. Grill the kabobs: Grill the skewers on a lightly oiled, preheated grate. Cook, turning frequently and brushing with reserved marinade, until the chicken is fully cooked and no longer pink in the center.
            """,
            category: .snack,
            datePublished: "June 26, 2024",
            url: "https://www.allrecipes.com/recipe/8626/yummy-honey-chicken-kabobs/"
        ),
        Recipe(
            name: "Honey Chicken Kabobs",
            image: "https://www.allrecipes.com/thmb/aWCVwgA99C7LxW39C4LbJa9PG1A=/0x512/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/8626-yummy-honey-chicken-kabobs-DDMFS-4x3-f859cd49cf184e6c945c9c630b745871.jpg",
            description: "These chicken kabobs are marinated in a sweet and savory soy sauce and honey mixture that doubles as a basting sauce as the kabobs cook on the grill, adding delicious flavor to every bite of juicy chicken.",
            ingredients: """
            - Chicken: Cut boneless, skinless chicken breast halves into 1-inch cubes.
            - Onion: You can use any onion variety you want — red, white, or sweet — depending on your flavor preferences. Cut the onion into 2-inch pieces.
            - Bell peppers: This recipe calls for two red bell peppers cut into 2-inch pieces. You can also use yellow or green peppers.
            - Garlic: You'll add two cloves of fresh garlic to the marinade with the other ingredients.
            - Skewers: You can usually find bamboo skewers in the grilling aisle at your grocery store.
            """,
            directions: """
            Make the marinade: Whisk together the honey, soy sauce, oil, and black pepper in a large bowl. Transfer ¼-cup of the marinade to a small jar and seal. Marinate the ingredients: Add the chicken, onions, peppers, and garlic to the marinade in the bowl. Cover and refrigerate for at least two hours, but preferably overnight. Assemble the kabobs: Drain the chicken and vegetables, then discard the marinade. Thread the ingredients onto the skewers. Grill the kabobs: Grill the skewers on a lightly oiled, preheated grate. Cook, turning frequently and brushing with reserved marinade, until the chicken is fully cooked and no longer pink in the center.
            """,
            category: .snack,
            datePublished: "June 26, 2024",
            url: "https://www.allrecipes.com/recipe/8626/yummy-honey-chicken-kabobs/"
        ),
        Recipe(
            name: "Honey Chicken Kabobs",
            image: "https://www.allrecipes.com/thmb/aWCVwgA99C7LxW39C4LbJa9PG1A=/0x512/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/8626-yummy-honey-chicken-kabobs-DDMFS-4x3-f859cd49cf184e6c945c9c630b745871.jpg",
            description: "These chicken kabobs are marinated in a sweet and savory soy sauce and honey mixture that doubles as a basting sauce as the kabobs cook on the grill, adding delicious flavor to every bite of juicy chicken.",
            ingredients: """
            - Chicken: Cut boneless, skinless chicken breast halves into 1-inch cubes.
            - Onion: You can use any onion variety you want — red, white, or sweet — depending on your flavor preferences. Cut the onion into 2-inch pieces.
            - Bell peppers: This recipe calls for two red bell peppers cut into 2-inch pieces. You can also use yellow or green peppers.
            - Garlic: You'll add two cloves of fresh garlic to the marinade with the other ingredients.
            - Skewers: You can usually find bamboo skewers in the grilling aisle at your grocery store.
            """,
            directions: """
            Make the marinade: Whisk together the honey, soy sauce, oil, and black pepper in a large bowl. Transfer ¼-cup of the marinade to a small jar and seal. Marinate the ingredients: Add the chicken, onions, peppers, and garlic to the marinade in the bowl. Cover and refrigerate for at least two hours, but preferably overnight. Assemble the kabobs: Drain the chicken and vegetables, then discard the marinade. Thread the ingredients onto the skewers. Grill the kabobs: Grill the skewers on a lightly oiled, preheated grate. Cook, turning frequently and brushing with reserved marinade, until the chicken is fully cooked and no longer pink in the center.
            """,
            category: .snack,
            datePublished: "June 26, 2024",
            url: "https://www.allrecipes.com/recipe/8626/yummy-honey-chicken-kabobs/"
        )
    ]
}
