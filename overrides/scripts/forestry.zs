//Carpenter Recipes
mods.forestry.Carpenter.removeRecipe(<forestry:hardened_machine>);
mods.forestry.Carpenter.addRecipe(<forestry:hardened_machine>, [
[<ore:plateDiamond>,<ore:plateDiamond>,<ore:plateDiamond>],
[<ore:plateDiamond>,<genetics:misc>,<ore:plateDiamond>],
[<ore:plateDiamond>,<ore:plateDiamond>,<ore:plateDiamond>]],
 25, <liquid:water>*5000);

mods.forestry.Carpenter.removeRecipe(<forestry:portable_alyzer>);
mods.forestry.Carpenter.addRecipe(<forestry:portable_alyzer>, [
[<ore:plateTin>,<ore:plateDiamond>,<ore:plateTin>],
[<ore:plateTin>,<ore:plateGlass>,<ore:plateTin>],
[<ore:dustRedstone>,<ore:circuitGood>,<ore:dustRedstone>]],
 25, <liquid:water>*2000);

mods.forestry.Carpenter.removeRecipe(<botany:database>);
mods.forestry.Carpenter.addRecipe(<botany:database>, [
[<ore:screwGold>,<ore:plateDiamond>,<ore:screwGold>],
[<ore:plateGold>,<ore:circuitAdvanced>,<ore:plateGold>],
[<ore:screwGold>,<ore:plateEmerald>,<ore:screwGold>]],
 25, <liquid:water>*2000,< forestry:portable_alyzer>);

mods.forestry.Carpenter.removeRecipe(<extrabees:dictionary>);
mods.forestry.Carpenter.addRecipe(<extrabees:dictionary>, [
[<ore:screwGold>,<ore:plateDiamond>,<ore:screwGold>],
[<ore:plateTin>,<ore:circuitAdvanced>,<ore:plateTin>],
[<ore:screwGold>,<ore:plateEmerald>,<ore:screwGold>]],
 25, <liquid:water>*2000,< forestry:portable_alyzer>);

mods.forestry.Carpenter.removeRecipe(<extratrees:databasetree>);
mods.forestry.Carpenter.addRecipe(<extratrees:databasetree>, [
[<ore:screwGold>,<ore:plateDiamond>,<ore:screwGold>],
[<ore:plateCopper>,<ore:circuitAdvanced>,<ore:plateCopper>],
[<ore:screwGold>,<ore:plateEmerald>,<ore:screwGold>]],
 25, <liquid:water>*2000,< forestry:portable_alyzer>);

mods.forestry.Carpenter.removeRecipe(<genetics:geneticdatabase>);
mods.forestry.Carpenter.addRecipe(<genetics:geneticdatabase>, [
[<ore:screwDiamond>,<ore:plateObsidian>,<ore:screwDiamond>],
[<ore:plateDiamond>,<ore:circuitAdvanced>,<ore:plateDiamond>],
[<ore:screwDiamond>,<ore:plateEnderEye>,<ore:screwDiamond>]],
 25, <liquid:water>*2000,< forestry:portable_alyzer>);

mods.forestry.Carpenter.removeRecipe(<forestry:chipsets>);
mods.forestry.Carpenter.addRecipe(<forestry:chipsets>, [
[<ore:screwTin>,<ore:plateTin>,<ore:screwTin>],
[<ore:circuitBasic>,<ore:plateTin>,<ore:circuitBasic>],
[<ore:screwTin>,<ore:plateTin>,<ore:screwTin>]],
 25, <liquid:water>*1000);
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:1>);
mods.forestry.Carpenter.addRecipe(<forestry:chipsets:1>, [
[<ore:screwCupronickel>,<ore:plateCupronickel>,<ore:screwCupronickel>],
[<ore:circuitGood>,<ore:plateCupronickel>,<ore:circuitGood>],
[<ore:screwCupronickel>,<ore:plateCupronickel>,<ore:screwCupronickel>]],
 25, <liquid:water>*1000);
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:2>);
mods.forestry.Carpenter.addRecipe(<forestry:chipsets:2>, [
[<ore:screwVanadiumSteel>,<ore:plateVanadiumSteel>,<ore:screwVanadiumSteel>],
[<ore:circuitAdvanced>,<ore:plateVanadiumSteel>,<ore:circuitAdvanced>],
[<ore:screwVanadiumSteel>,<ore:plateVanadiumSteel>,<ore:screwVanadiumSteel>]],
 25, <liquid:water>*1000);
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets:3>);
mods.forestry.Carpenter.addRecipe(<forestry:chipsets:3>, [
[<ore:screwRoseGold>,<ore:plateRoseGold>,<ore:screwRoseGold>],
[<ore:circuitExtreme>,<ore:plateRoseGold>,<ore:circuitExtreme>],
[<ore:screwRoseGold>,<ore:plateRoseGold>,<ore:screwRoseGold>]],
 25, <liquid:water>*1000);

mods.forestry.Carpenter.removeRecipe(<forestry:kit_shovel>);
mods.forestry.Carpenter.removeRecipe(<forestry:kit_pickaxe>);

// Fix crated items
mods.forestry.Carpenter.removeRecipe(<forestry:crated.forestry.apatite.0>);
mods.forestry.Carpenter.addRecipe(<forestry:crated.forestry.apatite.0>,[
[<ore:gemApatite>, <ore:gemApatite>, <ore:gemApatite>],
[<ore:gemApatite>, <ore:gemApatite>, <ore:gemApatite>],
[<ore:gemApatite>, <ore:gemApatite>, <ore:gemApatite>]],
25, <liquid:water>*100, <forestry:crate>);
mods.forestry.Carpenter.removeRecipe(<forestry:apatite>);
mods.forestry.Carpenter.addRecipe(<gregtech:meta_item_1:8226>*9,[
[null, null, null],
[null, <forestry:crated.forestry.apatite.0>, null],
[null, null, null]],
25);

mods.forestry.Carpenter.removeRecipe(<forestry:crated.forestry.ash.0>);
mods.forestry.Carpenter.addRecipe(<forestry:crated.forestry.ash.0>,[
[<ore:dustAsh>, <ore:dustAsh>, <ore:dustAsh>],
[<ore:dustAsh>, <ore:dustAsh>, <ore:dustAsh>],
[<ore:dustAsh>, <ore:dustAsh>, <ore:dustAsh>]],
25, <liquid:water>*100, <forestry:crate>);
mods.forestry.Carpenter.removeRecipe(<forestry:ash>);
mods.forestry.Carpenter.addRecipe(<gregtech:meta_item_1:2089>*9,[
[null, null, null],
[null, <forestry:crated.forestry.ash.0>, null],
[null, null, null]],
25);

mods.forestry.Carpenter.removeRecipe(<forestry:crated.ingottin>);
mods.forestry.Carpenter.addRecipe(<forestry:crated.ingottin>,[
[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>],
[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>],
[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>]],
25, <liquid:water>*100, <forestry:crate>);
mods.forestry.Carpenter.removeRecipe(<forestry:ingot_tin>);
mods.forestry.Carpenter.addRecipe(<gregtech:meta_item_1:10071>*9,[
[null, null, null],
[null, <forestry:crated.ingottin>, null],
[null, null, null]],
25);

mods.forestry.Carpenter.removeRecipe(<forestry:crated.ingotcopper>);
mods.forestry.Carpenter.addRecipe(<forestry:crated.ingotcopper>,[
[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>]],
25, <liquid:water>*100, <forestry:crate>);
mods.forestry.Carpenter.removeRecipe(<forestry:ingot_copper>);
mods.forestry.Carpenter.addRecipe(<gregtech:meta_item_1:10018>*9,[
[null, null, null],
[null, <forestry:crated.ingotcopper>, null],
[null, null, null]],
25);

mods.forestry.Carpenter.removeRecipe(<forestry:crated.ingotbronze>);
mods.forestry.Carpenter.addRecipe(<forestry:crated.ingotbronze>,[
[<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>],
[<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>],
[<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>]],
25, <liquid:water>*100, <forestry:crate>);
mods.forestry.Carpenter.removeRecipe(<forestry:ingot_bronze>);
mods.forestry.Carpenter.addRecipe(<gregtech:meta_item_1:10095>*9,[
[null, null, null],
[null, <forestry:crated.ingotbronze>, null],
[null, null, null]],
25);

