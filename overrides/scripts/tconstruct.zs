//Alloying
mods.tconstruct.Alloy.removeRecipe(<liquid:steel>*18);
mods.tconstruct.Alloy.removeRecipe(<liquid:brass>*3);
mods.tconstruct.Alloy.removeRecipe(<liquid:alubrass>*4);
mods.tconstruct.Alloy.addRecipe(<liquid:alubrass> * 4, [<liquid:aluminium> * 3, <liquid:copper>]);


//Melting
mods.tconstruct.Melting.removeRecipe(<liquid:stone>*72, <minecraft:cobblestone>);
mods.tconstruct.Melting.removeRecipe(<liquid:stone>*72, <minecraft:stone>);

mods.tconstruct.Melting.removeRecipe(<liquid:glass>*1000, <minecraft:sand>);

mods.tconstruct.Melting.addRecipe(<liquid:boron> * 144, <gregtech:meta_item_1:2009>);

//Casting
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:3>);
mods.jei.JEI.hide(<tconstruct:cast_custom:3>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:4>);
mods.jei.JEI.hide(<tconstruct:cast_custom:4>);

//Fix invalid ingots
mods.tconstruct.Casting.removeTableRecipe(<projectred-core:resource_item:103>);
mods.tconstruct.Casting.addTableRecipe(<gregtech:meta_item_1:10237>, <tconstruct:cast_custom:0>, <liquid:red_alloy>, 144, false, 40);
mods.tconstruct.Casting.removeTableRecipe(<forestry:ingot_bronze>);
mods.tconstruct.Casting.addTableRecipe(<gregtech:meta_item_1:10095>, <tconstruct:cast_custom:0>, <liquid:bronze>, 144, false, 20);
mods.tconstruct.Casting.removeTableRecipe(<forestry:ingot_tin>);
mods.tconstruct.Casting.addTableRecipe(<gregtech:meta_item_1:10071>, <tconstruct:cast_custom:0>, <liquid:tin>, 144, false, 20);
mods.tconstruct.Casting.removeTableRecipe(<forestry:ingot_copper>);
mods.tconstruct.Casting.addTableRecipe(<gregtech:meta_item_1:10018>, <tconstruct:cast_custom:0>, <liquid:copper>, 144, false, 40);
mods.tconstruct.Casting.removeTableRecipe(<nuclearcraft:alloy:5>);
mods.tconstruct.Casting.addTableRecipe(<gregtech:meta_item_1:10184>, <tconstruct:cast_custom:0>, <liquid:steel>, 144, false, 40);
mods.tconstruct.Casting.removeTableRecipe(<nuclearcraft:alloy:1>);
mods.tconstruct.Casting.addTableRecipe(<gregtech:meta_item_1:10701>, <tconstruct:cast_custom:0>, <liquid:tough>, 144, false, 20);
mods.tconstruct.Casting.removeTableRecipe(<nuclearcraft:ingot:8>);
mods.tconstruct.Casting.addTableRecipe(<gregtech:meta_item_1:10204>, <tconstruct:cast_custom:0>, <liquid:graphite>, 144, false, 80);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:ingots:0>);
mods.tconstruct.Casting.addTableRecipe(<gregtech:meta_item_1:10017>, <tconstruct:cast_custom:0>, <liquid:cobalt>, 144, false, 80);
mods.tconstruct.Casting.removeTableRecipe(<nuclearcraft:ingot:12>);
mods.tconstruct.Casting.addTableRecipe(<gregtech:meta_item_1:10001>, <tconstruct:cast_custom:0>, <liquid:aluminum>, 144, false, 140);
mods.tconstruct.Casting.removeTableRecipe(<nuclearcraft:ingot:9>);
mods.tconstruct.Casting.addTableRecipe(<gregtech:meta_item_1:10007>, <tconstruct:cast_custom:0>, <liquid:beryllium>, 144, false, 40);
mods.tconstruct.Casting.removeTableRecipe(<nuclearcraft:ingot:13>);
mods.tconstruct.Casting.addTableRecipe(<gregtech:meta_item_1:10062>, <tconstruct:cast_custom:0>, <liquid:silver>, 144, false, 40);
mods.tconstruct.Casting.removeTableRecipe(<nuclearcraft:plutonium:8>);
mods.tconstruct.Casting.addTableRecipe(<gregtech:meta_item_1:10053>, <tconstruct:cast_custom:0>, <liquid:plutonium241>, 144, false, 40);
mods.tconstruct.Casting.removeTableRecipe(<nuclearcraft:ingot:11>);
mods.tconstruct.Casting.addTableRecipe(<gregtech:meta_item_1:10039>, <tconstruct:cast_custom:0>, <liquid:manganese>, 144, false, 40);
mods.tconstruct.Casting.removeTableRecipe(<nuclearcraft:uranium:4>);
mods.tconstruct.Casting.addTableRecipe(<gregtech:meta_item_1:10076>, <tconstruct:cast_custom:0>, <liquid:uranium235>, 144, false, 40);

mods.tconstruct.Casting.removeBasinRecipe(<tconstruct:metal:0>);
mods.tconstruct.Casting.addBasinRecipe(<gregtech:meta_block_compressed_1:1>, null, <liquid:cobalt>, 1296, false, 540);
//mods.tconstruct.Casting.addBasinRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);