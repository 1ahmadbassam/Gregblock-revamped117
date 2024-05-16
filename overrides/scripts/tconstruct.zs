import mods.tconstruct.Alloy as Alloy;
import mods.tconstruct.Melting as Melting;
import mods.tconstruct.Casting as Casting;
import mods.jei.JEI as JEI;

//Aluminum Brass
Alloy.removeRecipe(<liquid:steel>*18);
Alloy.removeRecipe(<liquid:brass>*3);
Alloy.removeRecipe(<liquid:alubrass>*4);
Alloy.addRecipe(<liquid:alubrass> * 4, [<liquid:aluminium> * 3, <liquid:copper>]);

//Melting Fix - No easy seared stone
Melting.removeRecipe(<liquid:stone>*72, <minecraft:cobblestone>);
Melting.removeRecipe(<liquid:stone>*72, <minecraft:stone>);
//Melting Fix - No easy glass
Melting.removeRecipe(<liquid:glass>*1000, <minecraft:sand>);

//Melting Fix - add boron
Melting.addRecipe(<liquid:boron>*144, <gregtech:meta_item_1:2009>);

//Casting
Casting.removeTableRecipe(<tconstruct:cast_custom:3>);
JEI.hide(<tconstruct:cast_custom:3>);
Casting.removeTableRecipe(<tconstruct:cast_custom:4>);
JEI.hide(<tconstruct:cast_custom:4>);

//Ingot Fix
Casting.removeTableRecipe(<projectred-core:resource_item:103>);
Casting.addTableRecipe(<gregtech:meta_item_1:10237>, <tconstruct:cast_custom:0>, <liquid:red_alloy>, 144, false, 40);
Casting.removeTableRecipe(<forestry:ingot_bronze>);
Casting.addTableRecipe(<gregtech:meta_item_1:10095>, <tconstruct:cast_custom:0>, <liquid:bronze>, 144, false, 20);
Casting.removeTableRecipe(<forestry:ingot_tin>);
Casting.addTableRecipe(<gregtech:meta_item_1:10071>, <tconstruct:cast_custom:0>, <liquid:tin>, 144, false, 20);
Casting.removeTableRecipe(<forestry:ingot_copper>);
Casting.addTableRecipe(<gregtech:meta_item_1:10018>, <tconstruct:cast_custom:0>, <liquid:copper>, 144, false, 40);
Casting.removeTableRecipe(<nuclearcraft:alloy:5>);
Casting.addTableRecipe(<gregtech:meta_item_1:10184>, <tconstruct:cast_custom:0>, <liquid:steel>, 144, false, 40);
Casting.removeTableRecipe(<nuclearcraft:alloy:1>);
Casting.addTableRecipe(<gregtech:meta_item_1:10701>, <tconstruct:cast_custom:0>, <liquid:tough>, 144, false, 20);
Casting.removeTableRecipe(<nuclearcraft:ingot:8>);
Casting.addTableRecipe(<gregtech:meta_item_1:10204>, <tconstruct:cast_custom:0>, <liquid:graphite>, 144, false, 80);
Casting.removeTableRecipe(<tconstruct:ingots:0>);
Casting.addTableRecipe(<gregtech:meta_item_1:10017>, <tconstruct:cast_custom:0>, <liquid:cobalt>, 144, false, 80);
Casting.removeTableRecipe(<nuclearcraft:ingot:12>);
Casting.addTableRecipe(<gregtech:meta_item_1:10001>, <tconstruct:cast_custom:0>, <liquid:aluminum>, 144, false, 140);
Casting.removeTableRecipe(<nuclearcraft:ingot:9>);
Casting.addTableRecipe(<gregtech:meta_item_1:10007>, <tconstruct:cast_custom:0>, <liquid:beryllium>, 144, false, 40);
Casting.removeTableRecipe(<nuclearcraft:ingot:13>);
Casting.addTableRecipe(<gregtech:meta_item_1:10062>, <tconstruct:cast_custom:0>, <liquid:silver>, 144, false, 40);
Casting.removeTableRecipe(<nuclearcraft:plutonium:8>);
Casting.addTableRecipe(<gregtech:meta_item_1:10053>, <tconstruct:cast_custom:0>, <liquid:plutonium241>, 144, false, 40);
Casting.removeTableRecipe(<nuclearcraft:ingot:11>);
Casting.addTableRecipe(<gregtech:meta_item_1:10039>, <tconstruct:cast_custom:0>, <liquid:manganese>, 144, false, 40);
Casting.removeTableRecipe(<nuclearcraft:uranium:4>);
Casting.addTableRecipe(<gregtech:meta_item_1:10076>, <tconstruct:cast_custom:0>, <liquid:uranium235>, 144, false, 40);

//Block Fix
Casting.removeBasinRecipe(<tconstruct:metal:0>);
Casting.addBasinRecipe(<gregtech:meta_block_compressed_1:1>, null, <liquid:cobalt>, 1296, false, 540);