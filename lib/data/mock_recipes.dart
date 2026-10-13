import '../models/recipe_model.dart';

class MockData {
  static final List<Recipe> recipes = [
    Recipe(
      id: '1',
      title: 'Tacos al Pastor',
      category: 'Tacos',
      description: 'Deliciosos tacos de cerdo marinado con achiote y piña fresca.',
      imageUrl: 'https://images.unsplash.com/photo-1551504734-5ee1c4a1479b?w=600',
      prepTime: '45 mins',
      calories: '450 kcal',
      difficulty: 'Media',
      ingredients: [
        '1 kg de carne de cerdo en bistec',
        '1 barra de achiote',
        '1/2 taza de jugo de naranja',
        'Piña en rebanadas',
        'Cebolla y cilantro picados',
        'Tortillas de maíz',
      ],
      steps: [
        'Licuar el achiote con el jugo de naranja, vinagre y especias.',
        'Marinar la carne durante al menos 2 horas en refrigeración.',
        'Asar la carne en un sartén o parrilla hasta que esté dorada.',
        'Cortar la carne en trozos pequeños y servir en tortillas con piña, cilantro y cebolla.',
      ],
    ),
    Recipe(
      id: '2',
      title: 'Pozole Rojo',
      category: 'Sopas',
      description: 'Tradicional caldo mexicano de maíz pozolero con carne de cerdo.',
      imageUrl: 'https://media.cocinavital.mx/2024/05/pozole-rojo-1-634x420.jpg',
      prepTime: '2 horas',
      calories: '600 kcal',
      difficulty: 'Alta',
      ingredients: [
        '1 kg de maíz pozolero (cacahuazintle)',
        '1 kg de espinazo o cabeza de cerdo',
        'Chiles guajillo y ancho',
        'Ajos y cebolla',
        'Lechuga, rábanos y limón para acompañar',
      ],
      steps: [
        'Cocer el maíz con ajo y cebolla hasta que reviente.',
        'Cocer la carne de cerdo por separado con hierbas de olor.',
        'Hervir los chiles, licuarlos y colarlos para agregarlos al caldo.',
        'Juntar el maíz, la carne y el caldo rojo, dejando hervir 30 minutos más.',
      ],
    ),
    Recipe(
      id: '3',
      title: 'Guacamole Tradicional',
      category: 'Antojitos',
      description: 'Crema fresca de aguacate con tomate, cebolla, chile y cilantro.',
      imageUrl: 'https://californiaavocado.com/wp-content/uploads/2020/07/Guacamole-Autentico-1.jpeg',
      prepTime: '15 mins',
      calories: '200 kcal',
      difficulty: 'Baja',
      ingredients: [
        '3 aguacates maduros',
        '1 jitomate picado en cuadros pequeños',
        '1/4 de cebolla finamente picada',
        'Chile serrano al gusto',
        'Cebolla, cilantro y jugo de limón',
      ],
      steps: [
        'Cortar los aguacates por la mitad y retirar el hueso.',
        'Macerar la pulpa en un bol con un tenedor sin que quede puré.',
        'Agregar el jitomate, la cebolla, el chile y el cilantro.',
        'Añadir jugo de limón y sal al gusto, mezclar suavemente.',
      ],
    ),
  ];
}