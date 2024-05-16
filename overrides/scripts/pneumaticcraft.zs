import mods.pneumaticcraft.assembly as Assembly;
import mods.pneumaticcraft.pressurechamber as PressureChamber;


//Assembly
Assembly.removeLaserRecipe(<pneumaticcraft:unassembled_pcb>);

//Pressure Chamber
PressureChamber.removeRecipe([<pneumaticcraft:transistor>]);
PressureChamber.removeRecipe([<pneumaticcraft:capacitor>]);
PressureChamber.removeRecipe([<pneumaticcraft:empty_pcb:100>]);
PressureChamber.removeRecipe([<forge:bucketfilled>.withTag({FluidName: "etchacid", Amount: 1000})]);
//Pressure Chamber - Compressed Iron
PressureChamber.removeRecipe([<pneumaticcraft:ingot_iron_compressed>]);
PressureChamber.addRecipe([<minecraft:iron_ingot>], 2.0, [<gregtech:meta_item_1:10700>]);
//Pressure Chamber - Diamond
PressureChamber.removeRecipe([<minecraft:diamond>]);
PressureChamber.addRecipe([<minecraft:coal_block>*16], 4.0, [<minecraft:diamond>]);
