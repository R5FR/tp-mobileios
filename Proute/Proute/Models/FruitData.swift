import SwiftUI

/// Données statiques de tous les fruits de l'application
enum FruitData {
    static let all: [Fruit] = [
        Fruit(
            title: "Blueberry",
            headline: "Blueberries are sweet, nutritious and wildly popular fruit all over the world.",
            image: "blueberry",
            gradientColors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")],
            description: """
              Blueberries are perennial flowering plants with blue or purple berries. They are classified in the section Cyanococcus within the genus Vaccinium. Vaccinium also includes cranberries, bilberries, huckleberries and Madeira blueberries.

              Commercial blueberries—both wild (lowbush) and cultivated (highbush)—are all native to North America. The highbush varieties were introduced into Europe during the 1930s.

              Blueberries are usually prostrate shrubs that can vary in size from 10 centimeters (3.9 in) to 4 meters (13 ft) in height. In commercial production of blueberries, the species with small, pea-size berries growing on low-level bushes are known as "lowbush blueberries" (synonymous with "wild"), while the species with larger berries growing on taller cultivated bushes are known as "highbush blueberries".

              Canada is the leading producer of lowbush blueberries, while the United States produces some 40% of the world supply of highbush blueberries.
              """,
            nutrition: ["240 kJ (57 kcal)", "9.96 g", "0.33 g", "0.74 g", "A, B1, B2, B3, B5, B6, B9, C, E, K", "Calcium, Iron, Magnasium, Manganese, Phosphorus, Sodium, Zinc"]
        ),
        Fruit(
            title: "Strawberry",
            headline: "Widely appreciated for its characteristic aroma, red color, juicy texture, and sweetness.",
            image: "strawberry",
            gradientColors: [Color("ColorStrawberryLight"), Color("ColorStrawberryDark")],
            description: """
              The garden strawberry (or simply strawberry; Fragaria × ananassa) is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries, which are cultivated worldwide for their fruit. The fruit is widely appreciated for its characteristic aroma, bright red color, juicy texture, and sweetness. It is consumed in large quantities, either fresh or in such prepared foods as jam, juice, pies, ice cream, milkshakes, and chocolates.

              The strawberry is not, from a botanical point of view, a berry. Technically, it is an aggregate accessory fruit, meaning that the fleshy part is derived not from the plant's ovaries but from the receptacle that holds the ovaries.

              One serving (100 g) of strawberries contains approximately 33 kilocalories, is an excellent source of vitamin C, a good source of manganese, and provides several other vitamins and dietary minerals in lesser amounts.
              """,
            nutrition: ["136 kJ (33 kcal)", "4.89 g", "0.3 g", "0.67 g", "B1, B2, B3, B5, B6, B9, Choline, C, E, K", "Calcium, Iron, Magnasium, Manganese, Phosphorus, Potassium, Sodium, Zinc"]
        ),
        Fruit(
            title: "Apple",
            headline: "Apples are one of the most popular, and exceptionally healthy fruit for good reason.",
            image: "apple",
            gradientColors: [Color("ColorAppleLight"), Color("ColorAppleDark")],
            description: "An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. There are more than 7,500 known cultivars of apples.",
            nutrition: ["218 kJ (52 kcal)", "10.39 g", "0.17 g", "0.26 g", "A, B1, B2, B3, B5, B6, B9, C, E, K", "Calcium, Iron, Magnasium, Manganese, Phosphorus, Potassium, Sodium, Zinc"]
        ),
        Fruit(
            title: "Pomegranate",
            headline: "Sweet, bell-shaped fruits that have been enjoyed since ancient times. They can be eaten crisp or soft.",
            image: "pomegranate",
            gradientColors: [Color("ColorPomegranateLight"), Color("ColorPomegranateDark")],
            description: "The pomegranate (Punica granatum) is a fruit-bearing deciduous shrub that grows between 5 and 10 m tall. The pomegranate originated in the region extending from Iran to northern India, and has been cultivated since ancient times throughout the Mediterranean region.",
            nutrition: ["346 kJ (83 kcal)", "13.67 g", "1.17 g", "1.67 g", "B1, B2, B3, B5, B6, B9, C, E, K", "Calcium, Iron, Magnasium, Manganese, Phosphorus, Potassium, Sodium, Zinc"]
        ),
        Fruit(
            title: "Mango",
            headline: "Sweet, bell-shaped fruits that have been enjoyed since ancient times. They can be eaten crisp or soft.",
            image: "mango",
            gradientColors: [Color("ColorMangoLight"), Color("ColorMangoDark")],
            description: "A mango is a juicy stone fruit produced from numerous species of tropical trees belonging to the flowering plant genus Mangifera, cultivated mostly for their edible fruit. Mangoes are native to South Asia.",
            nutrition: ["250 kJ (60 kcal)", "13.7 g", "0.38 g", "0.82 g", "A, B1, B2, B3, B5, B6, B9, C, E, K", "Calcium, Iron, Magnasium, Manganese, Phosphorus, Potassium, Sodium, Zinc"]
        ),
        Fruit(
            title: "Lime",
            headline: "Sour, round, and bright green citrus fruits. Limes are high in vitamin C, antioxidants, and other nutrients.",
            image: "lime",
            gradientColors: [Color("ColorLimeLight"), Color("ColorLimeDark")],
            description: "A lime is a citrus fruit, which is typically round, green in color, 3–6 centimetres in diameter, and contains acidic juice vesicles. Limes are a rich source of vitamin C, are sour, and are often used to accent the flavours of foods and beverages.",
            nutrition: ["126 kJ (30 kcal)", "1.7 g", "0.2 g", "0.7 g", "B1, B2, B3, B5, B6, B9, C", "Calcium, Iron, Magnasium, Phosphorus, Potassium, Sodium"]
        ),
        Fruit(
            title: "Pear",
            headline: "Sweet, bell-shaped fruits that have been enjoyed since ancient times. They can be eaten crisp or soft.",
            image: "pear",
            gradientColors: [Color("ColorPearLight"), Color("ColorPearDark")],
            description: "The pear tree and shrub are a species of genus Pyrus, in the family Rosaceae. Several species of pear are valued for their edible fruit and juices. About 3000 known varieties of pears are grown worldwide.",
            nutrition: ["239 kJ (57 kcal)", "9.75 g", "0.14 g", "0.36 g", "B1, B2, B3, B5, B6, B9, C, E, K", "Calcium, Iron, Magnasium, Manganese, Phosphorus, Potassium, Sodium, Zinc"]
        ),
        Fruit(
            title: "Cherry",
            headline: "Sweet, bell-shaped fruits that have been enjoyed since ancient times. They can be eaten crisp or soft.",
            image: "cherry",
            gradientColors: [Color("ColorCherryLight"), Color("ColorCherryDark")],
            description: "A cherry is the fruit of many plants of the genus Prunus, and is a fleshy drupe (stone fruit). Commercial cherries are obtained from cultivars of several species, such as the sweet Prunus avium and the sour Prunus cerasus.",
            nutrition: ["209 kJ (50 kcal)", "8.5 g", "0.3 g", "1 g", "A, B1, B2, B3, B5, B6, B9, C, K", "Calcium, Iron, Magnasium, Manganese, Phosphorus, Potassium, Sodium, Zinc"]
        ),
        Fruit(
            title: "Lemon",
            headline: "There's no doubt lemons are delicious, but does adding them to water make you healthier?",
            image: "lemon",
            gradientColors: [Color("ColorLemonLight"), Color("ColorLemonDark")],
            description: "The lemon, Citrus limon, is a species of small evergreen tree in the flowering plant family Rutaceae. Lemon is a rich source of vitamin C, providing 64% of the Daily Value in a 100 g reference amount.",
            nutrition: ["121 kJ (29 kcal)", "2.5 g", "0.3 g", "1.1 g", "B1, B2, B3, B5, B6, B9, C, Choline", "Calcium, Iron, Magnasium, Manganese, Phosphorus, Potassium, Zinc"]
        ),
        Fruit(
            title: "Plum",
            headline: "Plums are a very nutritious fruit. An excellent source of vitamins, minerals, fiber and antioxidants.",
            image: "plum",
            gradientColors: [Color("ColorPlumLight"), Color("ColorPlumDark")],
            description: "A plum is a fruit of the subgenus Prunus of the genus Prunus. Mature plum fruit may have a dusty-white waxy coating that gives them a glaucous appearance. The taste ranges from sweet to tart.",
            nutrition: ["192 kJ (46 kcal)", "9.92 g", "0.28 g", "0.7 g", "A, B1, B2, B3, B5, B6, B9, C, E, K", "Calcium, Iron, Magnasium, Manganese, Phosphorus, Potassium, Sodium, Zinc"]
        ),
        Fruit(
            title: "Gooseberry",
            headline: "Sweet, bell-shaped fruits that have been enjoyed since ancient times. They can be eaten crisp or soft.",
            image: "gooseberry",
            gradientColors: [Color("ColorGooseberryLight"), Color("ColorGooseberryDark")],
            description: "The gooseberry, with scientific names Ribes uva-crispa, is a species of Ribes (which also includes the currants). It is native to Europe, the Caucasus and northern Africa. Gooseberries are edible and can be eaten as-is, or used in desserts.",
            nutrition: ["184 kJ (44 kcal)", "6.15", "0.58 g", "0.88 g", "A, B1, B2, B3, B5, B6, B9, C, E", "Calcium, Iron, Magnasium, Manganese, Phosphorus, Potassium, Sodium, Zinc"]
        ),
        Fruit(
            title: "Watermelon",
            headline: "A hydrating summer fruit with crisp, sweet flesh.",
            image: "watermelon",
            gradientColors: [Color("ColorWatermelonLight"), Color("ColorWatermelonDark")],
            description: "Watermelon (Citrullus lanatus) is a plant species in the family Cucurbitaceae, a vine-like flowering plant originally domesticated in West Africa. It is a highly cultivated fruit worldwide, having more than 1000 varieties.",
            nutrition: ["127 kJ (30 kcal)", "6.2 g", "0.15 g", "0.61 g", "A, B1, B2, B3, B5, B6, C", "Calcium, Iron, Magnasium, Manganese, Phosphorus, Potassium, Sodium, Zinc"]
        )
    ]
}
