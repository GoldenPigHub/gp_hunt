# GP_HUNT
### Preview -->> https://youtu.be/q_aYxOrnUI8
#### QBR | Skin and Sell stuff gathered from animals (pelts, leather, meat...), prices and butcher location are configurable

#### Requirements
[qbr-core](https://github.com/qbcore-redm-framework/qbr-core)

[qbr-menu](https://github.com/qbcore-redm-framework/qbr-menu)

[qbr-input](https://github.com/qbcore-redm-framework/qbr-input)

#### Notes
   Don´t forget to remove lines **191-199** in **qbr-core/client/prompts**,  
   Add item images to your qbr-inventory/html/images,  
   Paste this to your qbr-core/shared/items.lua,  

	['small_leather'] 				= {['name'] = 'small_leather', 				['label'] = 'Small Leather',						['weight'] = 0,			['type'] = 'item', 				['image'] = 'small_leather.png',			['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	  ['combinable'] = false,	['level'] = 0,		['description'] = 'Small Leather gathered from small animal'},
	['big_leather'] 				= {['name'] = 'big_leather', 				['label'] = 'Big Leather',						    ['weight'] = 0,			['type'] = 'item', 				['image'] = 'big_leather.png',			    ['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	  ['combinable'] = false,	['level'] = 0,		['description'] = 'Small Leather gathered from big animal'},
	['meat'] 				        = {['name'] = 'meat', 				        ['label'] = 'Meat',						            ['weight'] = 0,			['type'] = 'item', 				['image'] = 'meat.png',			            ['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	  ['combinable'] = false,	['level'] = 0,		['description'] = 'Meat gathered from animal'},
	['gamey_meat'] 				    = {['name'] = 'gamey_meat', 				['label'] = 'Good Meat',						    ['weight'] = 0,			['type'] = 'item', 				['image'] = 'gamey_meat.png',			    ['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	  ['combinable'] = false,	['level'] = 0,		['description'] = 'Gamey meat gathered from animal'},
	['feather'] 				    = {['name'] = 'feather', 				    ['label'] = 'Feather',						        ['weight'] = 0,			['type'] = 'item', 				['image'] = 'feather.png',			        ['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	  ['combinable'] = false,	['level'] = 0,		['description'] = 'Feather gathered from bird'},
	['fish'] 				        = {['name'] = 'fish', 				        ['label'] = 'Fish',						            ['weight'] = 0,			['type'] = 'item', 				['image'] = 'fish.png',			            ['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	  ['combinable'] = false,	['level'] = 0,		['description'] = 'Fish gathered from water'}
