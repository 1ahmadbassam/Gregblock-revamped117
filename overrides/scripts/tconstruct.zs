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

//Casting
Casting.removeTableRecipe(<tconstruct:cast_custom:3>);
JEI.hide(<tconstruct:cast_custom:3>);
Casting.removeTableRecipe(<tconstruct:cast_custom:4>);
JEI.hide(<tconstruct:cast_custom:4>);