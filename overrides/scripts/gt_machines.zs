import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDictEntry as IOreDictEntry;
import mods.jei.JEI as JEI;

val hammer = RecipeMap.getByName("forge_hammer");
val compressor = RecipeMap.getByName("compressor");
val macerator = RecipeMap.getByName("macerator");
val assembler = RecipeMap.getByName("assembler");
val alloy = RecipeMap.getByName("alloy_smelter");
val extractor = RecipeMap.getByName("extractor");
val lathe = RecipeMap.getByName("lathe");
val canner = RecipeMap.getByName("canner");
val fluid_canner = RecipeMap.getByName("fluid_canner");
val fluid_extractor = RecipeMap.getByName("fluid_extractor");
val freezer = RecipeMap.getByName("vacuum_freezer");
val mixer = RecipeMap.getByName("mixer");
val thermal_sep = RecipeMap.getByName("thermal_centrifuge");
val sifter = RecipeMap.getByName("sifter");
val autoclave = RecipeMap.getByName("autoclave");
val reactor = RecipeMap.getByName("chemical_reactor");
val solidifier = RecipeMap.getByName("fluid_solidifier");
val saw = RecipeMap.getByName("cutting_saw");
val forming = RecipeMap.getByName("forming_press");
val electrolyzer = RecipeMap.getByName("electrolyzer");
val circuit_assembler = RecipeMap.getByName("circuit_assembler");
val implosion = RecipeMap.getByName("implosion_compressor");
val engraver = RecipeMap.getByName("laser_engraver");
val packer = RecipeMap.getByName("packer");
val unpacker = RecipeMap.getByName("unpacker");
val arc = RecipeMap.getByName("arc_furnace");
val plasma_arc = RecipeMap.getByName("plasma_arc_furnace");
val bath = RecipeMap.getByName("chemical_bath");
val mill = RecipeMap.getByName("wiremill");
val centrifuge = RecipeMap.getByName("centrifuge");
val extruder = RecipeMap.getByName("extruder");
val bender = RecipeMap.getByName("metal_bender");
val assline = RecipeMap.getByName("assembly_line");
val blast_furnace = RecipeMap.getByName("blast_furnace");

//Hammer recipes
hammer.findRecipe(8,[<minecraft:cobblestone>],[null]).remove();

hammer.recipeBuilder().inputs([<ore:cobblestone>]).outputs([<minecraft:gravel>]).duration(16).EUt(10).buildAndRegister();
hammer.recipeBuilder().inputs([<ore:gravel>]).outputs([<minecraft:sand>]).duration(16).EUt(10).buildAndRegister();
hammer.recipeBuilder().inputs([<ore:sand>]).outputs([<exnihilocreatio:block_dust>]).duration(16).EUt(10).buildAndRegister();
hammer.recipeBuilder().inputs([<ore:netherrack>]).outputs([<exnihilocreatio:block_netherrack_crushed>]).duration(16).EUt(10).buildAndRegister();
hammer.recipeBuilder().inputs([<ore:endstone>]).outputs([<exnihilocreatio:block_endstone_crushed>]).duration(16).EUt(10).buildAndRegister();
hammer.recipeBuilder().inputs([<appliedenergistics2:sky_stone_block>]).outputs([<exnihilocreatio:block_skystone_crushed>]).duration(16).EUt(10).buildAndRegister();
hammer.recipeBuilder().inputs([<ore:stoneDiorite>]).outputs([<exnihilocreatio:block_diorite_crushed>]).duration(16).EUt(10).buildAndRegister();
hammer.recipeBuilder().inputs([<ore:stoneAndesite>]).outputs([<exnihilocreatio:block_andesite_crushed>]).duration(16).EUt(10).buildAndRegister();
hammer.recipeBuilder().inputs([<ore:stoneGranite>]).outputs([<exnihilocreatio:block_granite_crushed>]).duration(16).EUt(10).buildAndRegister();
hammer.recipeBuilder().inputs([<exnihilocreatio:block_granite_crushed>]).outputs([<minecraft:sand:1>]).duration(16).EUt(10).buildAndRegister();

lathe.recipeBuilder().inputs([<ore:stoneSmooth>]).outputs([<exnihilocreatio:item_material:6>,<gregtech:meta_item_1:1328>*2]).duration(500).EUt(16).buildAndRegister();

//Glass
fluid_extractor.recipeBuilder().inputs([<tconstruct:clear_glass>]).fluidOutputs(<liquid:glass>*1000).EUt(32).duration(80).buildAndRegister();
arc.recipeBuilder().inputs([<tconstruct:clear_glass>]).fluidInputs([<liquid:oxygen>*480]).outputs([<minecraft:glass>]).EUt(30).duration(480).buildAndRegister();
plasma_arc.recipeBuilder().inputs([<tconstruct:clear_glass>]).fluidInputs([<liquid:plasma.argon>]).outputs([<minecraft:glass>]).fluidOutputs([<liquid:argon>]).EUt(10).duration(30).buildAndRegister();
plasma_arc.recipeBuilder().inputs([<tconstruct:clear_glass>]).fluidInputs([<liquid:plasma.nitrogen>*2]).outputs([<minecraft:glass>]).fluidOutputs([<liquid:nitrogen>*2]).EUt(10).duration(30).buildAndRegister();

//Anvil
recipes.remove(<minecraft:anvil>);
alloy.findRecipe(64,[<minecraft:iron_ingot>*31,<gregtech:meta_item_1:32314>],[null]).remove();
alloy.findRecipe(64,[<gregtech:meta_item_1:10197>*31,<gregtech:meta_item_1:32314>],[null]).remove();
alloy.recipeBuilder().inputs(<minecraft:iron_ingot>*31,<gregtech:meta_item_1:32314>).outputs([<minecraft:anvil>]).EUt(32).duration(18000).buildAndRegister();
alloy.recipeBuilder().inputs(<gregtech:meta_item_1:10197>*31,<gregtech:meta_item_1:32314>).outputs([<minecraft:anvil>]).EUt(32).duration(9000).buildAndRegister();
alloy.recipeBuilder().inputs(<minecraft:iron_ingot>*31,<ore:blockIron>).outputs([<minecraft:anvil>]).EUt(32).duration(30000).buildAndRegister();
alloy.recipeBuilder().inputs(<gregtech:meta_item_1:10197>*31,<ore:blockIron>).outputs([<minecraft:anvil>]).EUt(32).duration(15000).buildAndRegister();

//Prismarine Crystals
hammer.recipeBuilder().inputs([<minecraft:prismarine_shard>]).outputs([<minecraft:prismarine_crystals>*2]).EUt(16).duration(20).buildAndRegister();

//Hopper Replacement
assembler.findRecipe(2,[<gregtech:meta_item_1:12033>*5,<minecraft:chest>],[null]).remove();
assembler.findRecipe(2,[<gregtech:meta_item_1:12197>*5,<minecraft:chest>],[null]).remove();
assembler.findRecipe(2,[<gregtech:meta_item_1:12033>*5,<minecraft:trapped_chest>],[null]).remove();
assembler.findRecipe(2,[<gregtech:meta_item_1:12197>*5,<minecraft:trapped_chest>],[null]).remove();
assembler.recipeBuilder().inputs([<ore:plateIron>*5,<ore:chestWood>]).outputs([<pneumaticcraft:omnidirectional_hopper>]).EUt(2).duration(800).buildAndRegister();
assembler.recipeBuilder().inputs([<ore:platePigIron>*5,<ore:chestWood>]).outputs([<pneumaticcraft:omnidirectional_hopper>]).EUt(2).duration(800).buildAndRegister();
macerator.findRecipe(8,[<minecraft:hopper>],[null]).remove();
macerator.recipeBuilder().inputs([<pneumaticcraft:omnidirectional_hopper>]).outputs([<gregtech:meta_item_1:2033>*5,<gregtech:meta_item_1:2196>*8]).EUt(8).duration(150).buildAndRegister();
fluid_extractor.findRecipe(32,[<minecraft:hopper>],[null]).remove();
fluid_extractor.recipeBuilder().inputs([<pneumaticcraft:omnidirectional_hopper>]).fluidOutputs([<liquid:iron>*720]).EUt(32).duration(400).buildAndRegister();
plasma_arc.findRecipe(32,[<minecraft:hopper>],[<liquid:plasma.argon>]).remove();
plasma_arc.findRecipe(32,[<minecraft:hopper>],[<liquid:plasma.nitrogen>]).remove();
plasma_arc.recipeBuilder().inputs([<pneumaticcraft:omnidirectional_hopper>]).fluidInputs([<liquid:plasma.argon>]).outputs([<gregtech:meta_item_1:10197>*5, <gregtech:meta_item_1:2089>*8]).fluidOutputs([<liquid:argon>]).EUt(10).duration(18).buildAndRegister();
plasma_arc.recipeBuilder().inputs([<pneumaticcraft:omnidirectional_hopper>]).fluidInputs([<liquid:plasma.nitrogen>]).outputs([<gregtech:meta_item_1:10197>*5, <gregtech:meta_item_1:2089>*8]).fluidOutputs([<liquid:nitrogen>]).EUt(10).duration(18).buildAndRegister();
arc.findRecipe(30, [<minecraft:hopper>], [<liquid:oxygen>*300]).remove();
arc.recipeBuilder().inputs([<pneumaticcraft:omnidirectional_hopper>]).fluidInputs(<liquid:oxygen>*300).outputs([<gregtech:meta_item_1:10197>*5, <gregtech:meta_item_1:2089>*8]).EUt(30).duration(300).buildAndRegister();

//AE2 Compatability
recipes.remove(<appliedenergistics2:material>);
furnace.remove(<gregtech:meta_item_1:8202>);
furnace.addRecipe(<appliedenergistics2:material>,<ore:oreCertusQuartz>);
furnace.addRecipe(<appliedenergistics2:material>,<gregblockutils:gb_meta_item:202>);
furnace.addRecipe(<appliedenergistics2:material>,<gregblockutils:gb_meta_item:1202>);
furnace.addRecipe(<appliedenergistics2:material>,<gregblockutils:gb_meta_item:2202>);
furnace.addRecipe(<appliedenergistics2:material>,<gregblockutils:gb_meta_item:3202>);
sifter.findRecipe(12800,[<gregtech:meta_item_1:6202>],[null]).remove();
sifter.recipeBuilder().inputs([<ore:crushedPurifiedCertusQuartz>]).chancedOutput(<gregtech:meta_item_2:23202>,2000,0).chancedOutput(<gregtech:meta_item_2:25202>,100,0).chancedOutput(<gregtech:meta_item_1:4202>,5000,0).chancedOutput(<appliedenergistics2:material>,1500,0).chancedOutput(<gregtech:meta_item_2:22202>,4000,0).chancedOutput(<gregtech:meta_item_2:24202>,400,0).EUt(16).duration(800).buildAndRegister();
autoclave.recipeBuilder().inputs([<ore:dustCertusQuartz>]).fluidInputs([<liquid:water>*200]).outputs([<appliedenergistics2:material>]).EUt(24).duration(1500).buildAndRegister();
autoclave.recipeBuilder().inputs([<ore:dustCertusQuartz>]).fluidInputs([<liquid:distilled_water>*200]).outputs([<appliedenergistics2:material>]).EUt(24).duration(1500).buildAndRegister();
hammer.recipeBuilder().inputs([<gregtech:meta_block_compressed_9:3>]).outputs(<appliedenergistics2:material>*9).EUt(24).duration(100).buildAndRegister();
compressor.recipeBuilder().inputs([<appliedenergistics2:material>*9]).outputs([<gregtech:meta_block_compressed_9:3>]).EUt(2).duration(400).buildAndRegister();
recipes.remove(<appliedenergistics2:fluix_block>);
recipes.remove(<minecraft:quartz_block>);
compressor.recipeBuilder().inputs([<appliedenergistics2:material:7>*4]).outputs([<appliedenergistics2:fluix_block>]).EUt(2).duration(400).buildAndRegister();
hammer.recipeBuilder().inputs([<appliedenergistics2:fluix_block>]).outputs([<appliedenergistics2:material:7>*4]).EUt(24).duration(100).buildAndRegister();
macerator.recipeBuilder().inputs([<appliedenergistics2:material:7>]).outputs([<appliedenergistics2:material:8>]).duration(30).EUt(8).buildAndRegister();
mixer.recipeBuilder().inputs([<ore:dustSteel>,<appliedenergistics2:material:45>,<ore:dustCertusQuartz>*2]).outputs([<gregtech:meta_item_1:2702>*4]).EUt(8).duration(400).buildAndRegister();

//AE2 - Glasses
recipes.remove(<appliedenergistics2:quartz_glass>);
alloy.recipeBuilder().inputs([<ore:dustNetherQuartz>*4,<minecraft:glass>*5]).outputs([<appliedenergistics2:quartz_glass>*5]).duration(250).EUt(16).buildAndRegister();
recipes.remove(<appliedenergistics2:quartz_vibrant_glass>);
alloy.recipeBuilder().inputs([<ore:dustGlowstone>*2,<appliedenergistics2:quartz_glass>]).outputs([<appliedenergistics2:quartz_vibrant_glass>]).duration(50).EUt(16).buildAndRegister();


//AE2 - Recipes
assembler.recipeBuilder().inputs([<appliedenergistics2:part:140>*2,<ore:dustFluix>]).outputs(<appliedenergistics2:part:16>).EUt(8).duration(30).buildAndRegister();
recipes.remove(<appliedenergistics2:part:140>);
autoclave.recipeBuilder().inputs([<ore:boltNetherQuartz>*4]).fluidInputs([<liquid:glass>*72]).outputs(<appliedenergistics2:part:140>).EUt(8).duration(30).buildAndRegister();

forming.recipeBuilder().inputs([<ore:plateCertusQuartz>]).notConsumable(<appliedenergistics2:material:13>).outputs([<appliedenergistics2:material:16>]).EUt(32).duration(100).buildAndRegister();
forming.recipeBuilder().inputs([<ore:plateDiamond>]).notConsumable(<appliedenergistics2:material:14>).outputs([<appliedenergistics2:material:17>]).EUt(32).duration(100).buildAndRegister();
forming.recipeBuilder().inputs([<ore:plateGold>]).notConsumable(<appliedenergistics2:material:15>).outputs([<appliedenergistics2:material:18>]).EUt(32).duration(100).buildAndRegister();
forming.recipeBuilder().inputs([<ore:plateSilicon>]).notConsumable(<appliedenergistics2:material:19>).outputs([<appliedenergistics2:material:20>]).EUt(32).duration(100).buildAndRegister();

circuit_assembler.recipeBuilder().inputs([<appliedenergistics2:material:16>,<appliedenergistics2:material:20>]).fluidInputs([<liquid:redstone>*144]).outputs([<appliedenergistics2:material:23>]).EUt(96).duration(300).buildAndRegister();
circuit_assembler.recipeBuilder().inputs([<appliedenergistics2:material:17>,<appliedenergistics2:material:20>]).fluidInputs([<liquid:redstone>*144]).outputs([<appliedenergistics2:material:24>]).EUt(96).duration(300).buildAndRegister();
circuit_assembler.recipeBuilder().inputs([<appliedenergistics2:material:18>,<appliedenergistics2:material:20>]).fluidInputs([<liquid:redstone>*144]).outputs([<appliedenergistics2:material:22>]).EUt(96).duration(300).buildAndRegister();

mixer.recipeBuilder().inputs([<appliedenergistics2:material:1>,<ore:dustRedstone>,<ore:gemNetherQuartz>]).fluidInputs([<liquid:water>*0]).outputs([<appliedenergistics2:material:7>*2]).EUt(8).duration(200).buildAndRegister();

electrolyzer.recipeBuilder().inputs([<appliedenergistics2:material>]).outputs([<appliedenergistics2:material:1>]).EUt(116).duration(60).buildAndRegister();

forming.findRecipe(16,[<gregtech:meta_item_1:12094>,<gregtech:meta_item_1:32304>],[null]).remove();
forming.findRecipe(16,[<gregtech:meta_item_1:12109>,<gregtech:meta_item_1:32304>],[null]).remove();

recipes.remove(<forestry:can>);
<forestry:can>.addTooltip("One-time use only cells. Good for automation.");
bender.recipeBuilder().inputs([<ore:plateTin>*2]).property("circuit",12).outputs([<forestry:can>]).EUt(30).duration(200).buildAndRegister();
extruder.recipeBuilder().inputs([<ore:plateTin>*2,<gregtech:meta_item_1:32354>]).outputs([<forestry:can>]).EUt(30).duration(200).buildAndRegister();
recipes.remove(<forestry:capsule>);
recipes.remove(<forestry:refractory>);
compressor.recipeBuilder().inputs([<ore:itemBeeswax>*3]).outputs(<forestry:capsule>).EUt(16).duration(280).buildAndRegister();
compressor.recipeBuilder().inputs([<forestry:refractory_wax>*3]).outputs(<forestry:refractory>).EUt(16).duration(280).buildAndRegister();

//AE2 - Skyblockification
mods.appliedenergistics2.Inscriber.removeRecipe(<appliedenergistics2:material:13>);
mods.appliedenergistics2.Inscriber.removeRecipe(<appliedenergistics2:material:14>);
mods.appliedenergistics2.Inscriber.removeRecipe(<appliedenergistics2:material:15>);
mods.appliedenergistics2.Inscriber.removeRecipe(<appliedenergistics2:material:19>);

engraver.recipeBuilder().inputs([<ore:plateDenseTantalum>]).notConsumable(<ore:craftingLensRed>).outputs([<appliedenergistics2:material:14>]).EUt(120).duration(3600).buildAndRegister();
engraver.recipeBuilder().inputs([<ore:plateDenseTantalum>]).notConsumable(<ore:craftingLensBlue>).outputs([<appliedenergistics2:material:13>]).EUt(120).duration(3600).buildAndRegister();
engraver.recipeBuilder().inputs([<ore:plateDenseTantalum>]).notConsumable(<ore:craftingLensWhite>).outputs([<appliedenergistics2:material:19>]).EUt(120).duration(3600).buildAndRegister();
engraver.recipeBuilder().inputs([<ore:plateDenseTantalum>]).notConsumable(<ore:craftingLensLime>).outputs([<appliedenergistics2:material:15>]).EUt(120).duration(3600).buildAndRegister();

//Storage Drawers
saw.recipeBuilder().inputs([<ore:drawerTrim>]).outputs([<storagedrawers:upgrade_template>*2]).EUt(4).duration(50).buildAndRegister();
alloy.recipeBuilder().inputs([<ore:ingotGold>*2, <storagedrawers:upgrade_template>]).outputs([<storagedrawers:drawer_key>]).EUt(8).duration(400).buildAndRegister();
assembler.recipeBuilder().inputs([<storagedrawers:drawer_key>, <ore:gemEnderEye>]).outputs([<storagedrawers:shroud_key>]).EUt(4).duration(200).buildAndRegister();
assembler.recipeBuilder().inputs([<storagedrawers:drawer_key>, <minecraft:name_tag>]).outputs([<storagedrawers:personal_key>]).EUt(4).duration(200).buildAndRegister();
assembler.recipeBuilder().inputs([<storagedrawers:drawer_key>, <ore:bookWritable>]).outputs([<storagedrawers:quantify_key>]).EUt(4).duration(200).buildAndRegister();
assembler.recipeBuilder().inputs([<ore:paper>*3, <ore:slimeball>]).outputs([<storagedrawers:tape>]).EUt(4).duration(400).buildAndRegister();

//Storage Drawers - Upgrades
assembler.recipeBuilder().inputs([<ore:plateBronze>*8, <storagedrawers:upgrade_template>]).outputs([<storagedrawers:upgrade_storage>]).EUt(8).duration(200).buildAndRegister();
assembler.recipeBuilder().inputs([<ore:plateSteel>*8, <storagedrawers:upgrade_template>]).outputs([<storagedrawers:upgrade_storage:1>]).EUt(8).duration(200).buildAndRegister();
assembler.recipeBuilder().inputs([<ore:plateStainlessSteel>*8, <storagedrawers:upgrade_template>]).outputs([<storagedrawers:upgrade_storage:2>]).EUt(8).duration(200).buildAndRegister();
assembler.recipeBuilder().inputs([<ore:plateTitanium>*8, <storagedrawers:upgrade_template>]).outputs([<storagedrawers:upgrade_storage:3>]).EUt(8).duration(200).buildAndRegister();
assembler.recipeBuilder().inputs([<ore:plateTungstenSteel>*8, <storagedrawers:upgrade_template>]).outputs([<storagedrawers:upgrade_storage:4>]).EUt(8).duration(200).buildAndRegister();
assembler.recipeBuilder().inputs([<ore:gemFlint>*8, <storagedrawers:upgrade_template>]).outputs([<storagedrawers:upgrade_one_stack>]).EUt(8).duration(200).buildAndRegister();
assembler.recipeBuilder().inputs([<ore:obsidian>*8, <storagedrawers:upgrade_template>]).outputs([<storagedrawers:upgrade_void>]).EUt(8).duration(400).buildAndRegister();

assembler.recipeBuilder().inputs([<ore:stickWood>*4, <ore:craftingRedstoneTorch>*2, <ore:dustRedstone>*2, <storagedrawers:upgrade_template>]).outputs([<storagedrawers:upgrade_status>]).EUt(16).duration(325).buildAndRegister();
assembler.recipeBuilder().inputs([<ore:stickWood>*4, <projectred-integration:gate:26>*2, <ore:dustRedstone>*2, <storagedrawers:upgrade_template>]).outputs([<storagedrawers:upgrade_status:1>]).EUt(16).duration(325).buildAndRegister();

assembler.recipeBuilder().inputs([<ore:stickWood>*4, <ore:dustRedstone>*4, <storagedrawers:upgrade_template>]).outputs([<storagedrawers:upgrade_redstone>]).EUt(16).duration(250).buildAndRegister();
assembler.recipeBuilder().inputs([<ore:stickWood>*5, <ore:dustRedstone>*3, <storagedrawers:upgrade_template>]).outputs([<storagedrawers:upgrade_redstone:1>]).property("circuit",6).EUt(16).duration(250).buildAndRegister();
assembler.recipeBuilder().inputs([<ore:stickWood>*5, <ore:dustRedstone>*3, <storagedrawers:upgrade_template>]).outputs([<storagedrawers:upgrade_redstone:2>]).property("circuit",7).EUt(16).duration(250).buildAndRegister();

//Forestry
fluid_extractor.recipeBuilder().inputs([<forestry:crafting_material:5>]).fluidOutputs([<liquid:ice>]).EUt(128).duration(128).buildAndRegister();
assembler.recipeBuilder().inputs([<ore:plateBrass>*8]).outputs([<forestry:sturdy_machine>]).property("circuit",8).duration(50).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs([<forestry:sturdy_machine>,<ore:plateTin>*4,<ore:plateWroughtIron>*4]).outputs([<genetics:misc>]).duration(50).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs([<genetics:misc>,<ore:plateDiamond>*8]).fluidInputs([<liquid:water>*5000]).outputs([<forestry:hardened_machine>]).duration(50).EUt(64).buildAndRegister();

//Forestry - Automated Casing Recipes
assembler.recipeBuilder().inputs([<ore:plateBasic>*4,<ore:plateTough>*4]).outputs([<nuclearcraft:fission_block>*4]).property("circuit",8).duration(50).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs([<ore:plateGlass>*4,<ore:plateTough>*4]).outputs([<nuclearcraft:cell_block>]).property("circuit",8).duration(50).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs([<ore:plateIronCompressed>*8]).outputs([<pneumaticcraft:pressure_chamber_wall>*4]).property("circuit",8).duration(50).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs(<ore:plateBronze>*4,<ore:plateEmerald>*2,<forestry:impregnated_casing>).fluidInputs(<liquid:glass>*200).outputs(<forestry:flexible_casing>).EUt(30).duration(20).buildAndRegister();


//NuclearCraft Stuff
recipes.remove(<nuclearcraft:reactor_casing_transparent>);
alloy.recipeBuilder().inputs([<nuclearcraft:fission_block>,<minecraft:glass>]).outputs([<nuclearcraft:reactor_casing_transparent>]).duration(50).EUt(16).buildAndRegister();
recipes.remove(<nuclearcraft:part>);
alloy.recipeBuilder().inputs([<ore:plateLead>,<ore:dustGraphite>]).outputs([<nuclearcraft:part>]).duration(300).EUt(16).buildAndRegister();

canner.recipeBuilder().inputs([<nuclearcraft:cooler>,<ore:dustRedstone>*16]).outputs([<nuclearcraft:cooler:2>]).duration(400).EUt(2).buildAndRegister();
canner.recipeBuilder().inputs([<nuclearcraft:cooler>,<ore:dustNetherQuartz>*16]).outputs([<nuclearcraft:cooler:3>]).duration(400).EUt(2).buildAndRegister();
canner.recipeBuilder().inputs([<nuclearcraft:cooler>,<ore:dustGold>*16]).outputs([<nuclearcraft:cooler:4>]).duration(400).EUt(2).buildAndRegister();
canner.recipeBuilder().inputs([<nuclearcraft:cooler>,<ore:dustGlowstone>*16]).outputs([<nuclearcraft:cooler:5>]).duration(400).EUt(2).buildAndRegister();
canner.recipeBuilder().inputs([<nuclearcraft:cooler>,<ore:dustLapis>*16]).outputs([<nuclearcraft:cooler:6>]).duration(400).EUt(2).buildAndRegister();
canner.recipeBuilder().inputs([<nuclearcraft:cooler>,<ore:dustDiamond>*16]).outputs([<nuclearcraft:cooler:7>]).duration(400).EUt(2).buildAndRegister();
canner.recipeBuilder().inputs([<nuclearcraft:cooler>,<ore:dustEnderium>*16]).outputs([<nuclearcraft:cooler:9>]).duration(400).EUt(9).buildAndRegister();
canner.recipeBuilder().inputs([<nuclearcraft:cooler>,<ore:dustIron>*16]).outputs([<nuclearcraft:cooler:11>]).duration(400).EUt(2).buildAndRegister();
canner.recipeBuilder().inputs([<nuclearcraft:cooler>,<ore:dustEmerald>*16]).outputs([<nuclearcraft:cooler:12>]).duration(400).EUt(2).buildAndRegister();
canner.recipeBuilder().inputs([<nuclearcraft:cooler>,<ore:dustCopper>*16]).outputs([<nuclearcraft:cooler:13>]).duration(400).EUt(2).buildAndRegister();
canner.recipeBuilder().inputs([<nuclearcraft:cooler>,<ore:dustTin>*16]).outputs([<nuclearcraft:cooler:14>]).duration(400).EUt(2).buildAndRegister();
canner.recipeBuilder().inputs([<nuclearcraft:cooler>,<ore:dustMagnesium>*16]).outputs([<nuclearcraft:cooler:15>]).duration(400).EUt(2).buildAndRegister();
fluid_canner.recipeBuilder().inputs([<nuclearcraft:cooler>]).fluidInputs([<liquid:water>*1000]).outputs([<nuclearcraft:cooler:1>]).duration(400).EUt(2).buildAndRegister();
fluid_canner.recipeBuilder().inputs([<nuclearcraft:cooler>]).fluidInputs([<liquid:liquidhelium>*1000]).outputs([<nuclearcraft:cooler:8>]).duration(400).EUt(2).buildAndRegister();

extractor.recipeBuilder().outputs([<nuclearcraft:cooler>]).inputs([<nuclearcraft:cooler:2>]).duration(400).EUt(2).buildAndRegister();
extractor.recipeBuilder().outputs([<nuclearcraft:cooler>]).inputs([<nuclearcraft:cooler:3>]).duration(400).EUt(2).buildAndRegister();
extractor.recipeBuilder().outputs([<nuclearcraft:cooler>]).inputs([<nuclearcraft:cooler:4>]).duration(400).EUt(2).buildAndRegister();
extractor.recipeBuilder().outputs([<nuclearcraft:cooler>]).inputs([<nuclearcraft:cooler:5>]).duration(400).EUt(2).buildAndRegister();
extractor.recipeBuilder().outputs([<nuclearcraft:cooler>]).inputs([<nuclearcraft:cooler:6>]).duration(400).EUt(2).buildAndRegister();
extractor.recipeBuilder().outputs([<nuclearcraft:cooler>]).inputs([<nuclearcraft:cooler:7>]).duration(400).EUt(2).buildAndRegister();
extractor.recipeBuilder().outputs([<nuclearcraft:cooler>]).inputs([<nuclearcraft:cooler:9>]).duration(400).EUt(2).buildAndRegister();
extractor.recipeBuilder().outputs([<nuclearcraft:cooler>]).inputs([<nuclearcraft:cooler:11>]).duration(400).EUt(2).buildAndRegister();
extractor.recipeBuilder().outputs([<nuclearcraft:cooler>]).inputs([<nuclearcraft:cooler:12>]).duration(400).EUt(2).buildAndRegister();
extractor.recipeBuilder().outputs([<nuclearcraft:cooler>]).inputs([<nuclearcraft:cooler:13>]).duration(400).EUt(2).buildAndRegister();
extractor.recipeBuilder().outputs([<nuclearcraft:cooler>]).inputs([<nuclearcraft:cooler:14>]).duration(400).EUt(2).buildAndRegister();
extractor.recipeBuilder().outputs([<nuclearcraft:cooler>]).inputs([<nuclearcraft:cooler:15>]).duration(400).EUt(2).buildAndRegister();
extractor.recipeBuilder().outputs([<nuclearcraft:cooler>]).inputs([<nuclearcraft:cooler:8>]).duration(400).EUt(2).buildAndRegister();
extractor.recipeBuilder().outputs([<nuclearcraft:cooler>]).inputs([<nuclearcraft:cooler:10>]).duration(400).EUt(2).buildAndRegister();

freezer.recipeBuilder().fluidInputs([<liquid:helium>*4000]).fluidOutputs([<liquid:liquidhelium>*4000]).duration(400).EUt(120).buildAndRegister();

//NuclearCraft - Fuels
compressor.recipeBuilder().inputs(<ore:dustUranium>).outputs(<nuclearcraft:uranium:8>).duration(300).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:dustPlutonium>).outputs(<nuclearcraft:plutonium>).duration(300).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:dustThorium>*6).outputs(<nuclearcraft:fuel_thorium>).duration(1800).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:dustNaquadahEnriched>*6).outputs(<nuclearcraft:fuel_uranium:4>).duration(1800).EUt(2).buildAndRegister();

thermal_sep.recipeBuilder().inputs(<nuclearcraft:depleted_fuel_thorium>).outputs(<gregtech:meta_item_1:2037>,<nuclearcraft:thorium>*2).duration(500).EUt(48).buildAndRegister();
thermal_sep.recipeBuilder().inputs(<nuclearcraft:depleted_fuel_uranium:2>).outputs(<nuclearcraft:plutonium:2>,<nuclearcraft:uranium:8>*4).duration(500).EUt(48).buildAndRegister();
thermal_sep.recipeBuilder().inputs(<nuclearcraft:depleted_fuel_mixed_oxide>).outputs(<nuclearcraft:plutonium:10>,<nuclearcraft:plutonium>*3).duration(500).EUt(48).buildAndRegister();
thermal_sep.recipeBuilder().inputs(<nuclearcraft:depleted_fuel_uranium:4>).outputs(<gregtech:meta_item_1:2307>*2,<gregtech:meta_item_1:2310>).duration(500).EUt(48).buildAndRegister();


//Ex Nihilo - Barrel Recipes
bath.recipeBuilder().inputs([<ore:dust>]).fluidInputs([<liquid:water>*1000]).outputs([<minecraft:clay>]).EUt(1).duration(16).buildAndRegister();
bath.recipeBuilder().inputs([<ore:dustRedstone>]).fluidInputs([<liquid:lava>*1000]).outputs([<minecraft:netherrack>]).EUt(1).duration(16).buildAndRegister();
bath.recipeBuilder().inputs([<ore:dustGlowstone>]).fluidInputs([<liquid:deuterium>*1000]).outputs([<minecraft:end_stone>]).EUt(1).duration(16).buildAndRegister();
bath.recipeBuilder().inputs([<ore:sand>]).fluidInputs([<liquid:witchwater>*1000]).outputs([<minecraft:soul_sand>]).EUt(1).duration(16).buildAndRegister();
bath.recipeBuilder().inputs([<appliedenergistics2:material:45>]).fluidInputs([<liquid:lava>*1000]).outputs([<appliedenergistics2:sky_stone_block>]).EUt(1).duration(16).buildAndRegister();
bath.recipeBuilder().inputs([<minecraft:brown_mushroom>]).fluidInputs([<liquid:milk>*1000]).outputs([<minecraft:slime>,<minecraft:slime_ball>]).EUt(2).duration(20).buildAndRegister();
bath.recipeBuilder().inputs([<minecraft:red_mushroom>]).fluidInputs([<liquid:milk>*1000]).outputs([<minecraft:slime>,<minecraft:slime_ball>]).EUt(2).duration(20).buildAndRegister();
reactor.recipeBuilder().notConsumable(<minecraft:mycelium>).fluidInputs([<liquid:water>*1000]).fluidOutputs([<liquid:witchwater>*1000]).EUt(4).duration(80).buildAndRegister();

//Project Red
assembler.recipeBuilder().inputs([<projectred-core:resource_item>]).fluidInputs([<liquid:redstone>*144]).outputs([<projectred-core:resource_item:1>]).EUt(16).duration(200).buildAndRegister();
recipes.remove(<projectred-core:resource_item:2>);
recipes.addShaped(<projectred-core:resource_item:2>,[
[<projectred-transmission:wire>],
[<projectred-core:resource_item:1>]
]);
assembler.recipeBuilder().inputs([<projectred-core:resource_item:1>,<projectred-transmission:wire>]).outputs([<projectred-core:resource_item:2>]).EUt(30).duration(300).buildAndRegister();
recipes.remove(<projectred-core:resource_item:3>);
recipes.addShaped(<projectred-core:resource_item:3>,[
[<projectred-transmission:wire:17>],
[<projectred-core:resource_item:1>]
]);
assembler.recipeBuilder().inputs([<projectred-core:resource_item:1>,<projectred-transmission:wire:17>]).outputs([<projectred-core:resource_item:3>]).EUt(30).duration(400).buildAndRegister();
recipes.remove(<projectred-core:resource_item:10>);
recipes.addShaped(<projectred-core:resource_item:10>,[
[<ore:dustRedstone>,<projectred-core:resource_item:1>,<ore:dustRedstone>],
[null,<ore:dustRedstone>,null]
]);

assembler.recipeBuilder().inputs([<projectred-core:resource_item:1>,<ore:dustRedstone>*3]).outputs([<projectred-core:resource_item:10>]).EUt(30).duration(400).buildAndRegister();
recipes.remove(<projectred-core:resource_item:11>);
recipes.addShaped(<projectred-core:resource_item:11>,[
[<minecraft:redstone_torch>],
[<projectred-core:resource_item:1>]
]);

assembler.recipeBuilder().inputs([<projectred-core:resource_item:1>,<minecraft:redstone_torch>]).outputs([<projectred-core:resource_item:11>]).EUt(30).duration(400).buildAndRegister();
recipes.remove(<projectred-core:resource_item:12>);
recipes.addShaped(<projectred-core:resource_item:12>,[
[<ore:craftingLensRed>],
[<projectred-core:resource_item:11>]
]);
assembler.recipeBuilder().inputs([<projectred-core:resource_item:11>,<ore:craftingLensRed>]).outputs([<projectred-core:resource_item:12>]).EUt(30).duration(600).buildAndRegister();
recipes.remove(<projectred-core:resource_item:20>);
forming.recipeBuilder().inputs([<projectred-core:resource_item>,<projectred-core:resource_item:320>]).outputs([<projectred-core:resource_item:20>]).EUt(30).duration(600).buildAndRegister();
recipes.remove(<projectred-core:resource_item:21>);
forming.recipeBuilder().inputs([<projectred-core:resource_item>,<projectred-core:resource_item:341>]).outputs([<projectred-core:resource_item:21>]).EUt(30).duration(600).buildAndRegister();
recipes.remove(<projectred-core:resource_item:4>);
recipes.addShaped(<projectred-core:resource_item:4>,[
[<ore:stickPlastic>,<projectred-core:resource_item:2>,<ore:stickPlastic>],
[<ore:stickPlastic>,null,<ore:stickPlastic>],
[<projectred-core:resource_item:2>,<projectred-core:resource_item:2>,<projectred-core:resource_item:2>]
]);
assembler.recipeBuilder().inputs([<projectred-core:resource_item:2>*4,<ore:stickPlastic>*4]).outputs([<projectred-core:resource_item:4>]).EUt(64).duration(300).buildAndRegister();

JEI.removeAndHide(<projectred-core:resource_item:250>);
JEI.removeAndHide(<projectred-core:resource_item:300>);
recipes.remove(<projectred-core:resource_item:301>);
forming.recipeBuilder().inputs([<ore:dustSilicon>]).notConsumable(<gregtech:meta_item_1:32307>).outputs([<projectred-core:resource_item:301>]).EUt(30).duration(200).buildAndRegister();
recipes.remove(<projectred-core:resource_item:310>);
mixer.recipeBuilder().inputs([<projectred-core:resource_item:301>,<ore:dustRedstone>*8]).outputs(<projectred-core:resource_item:310>).EUt(30).duration(400).buildAndRegister();
recipes.remove(<projectred-core:resource_item:311>);
mixer.recipeBuilder().inputs([<projectred-core:resource_item:301>,<ore:dustGlowstone>*8]).outputs(<projectred-core:resource_item:311>).EUt(30).duration(400).buildAndRegister();
recipes.remove(<projectred-core:resource_item:312>);
mixer.recipeBuilder().inputs([<projectred-core:resource_item:301>,<projectred-core:resource_item:105>*8]).outputs(<projectred-core:resource_item:312>).EUt(30).duration(400).buildAndRegister();

furnace.remove(<projectred-core:resource_item:320>);
forming.recipeBuilder().inputs([<projectred-core:resource_item:310>]).notConsumable(<gregtech:meta_item_1:32307>).outputs([<projectred-core:resource_item:320>]).EUt(30).duration(600).buildAndRegister();
furnace.remove(<projectred-core:resource_item:341>);
forming.recipeBuilder().inputs([<projectred-core:resource_item:311>]).notConsumable(<gregtech:meta_item_1:32307>).outputs([<projectred-core:resource_item:341>]).EUt(30).duration(600).buildAndRegister();
furnace.remove(<projectred-core:resource_item:342>);
forming.recipeBuilder().inputs([<projectred-core:resource_item:312>]).notConsumable(<gregtech:meta_item_1:32307>).outputs([<projectred-core:resource_item:342>]).EUt(30).duration(600).buildAndRegister();

recipes.remove(<projectred-expansion:charged_battery>);
canner.recipeBuilder().inputs([<projectred-core:resource_item:105>*6,<gregtech:meta_item_1:32500>]).outputs([<projectred-expansion:charged_battery>]).EUt(2).duration(100).buildAndRegister();

mixer.recipeBuilder().inputs([<ore:dustElectrum>,<ore:dustRedstone>]).outputs([<projectred-core:resource_item:105>*8]).EUt(8).duration(200).buildAndRegister();
recipes.remove(<projectred-core:resource_item:252>);
mixer.recipeBuilder().inputs([<ore:ingotIron>,<projectred-core:resource_item:105>*8]).outputs([<projectred-core:resource_item:252>]).EUt(30).duration(400).buildAndRegister();
mill.recipeBuilder().inputs([<projectred-core:resource_item:104>]).outputs([<contenttweaker:electrotine_wire>*2]).EUt(4).duration(100).buildAndRegister();
recipes.remove(<projectred-transmission:wire:34>);
packer.recipeBuilder().inputs([<contenttweaker:electrotine_wire>,<ore:plateRubber>]).outputs([<projectred-transmission:wire:34>]).EUt(8).duration(100).buildAndRegister();
unpacker.recipeBuilder().inputs([<projectred-transmission:wire:34>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})]).outputs([<contenttweaker:electrotine_wire>,<gregtech:meta_item_1:12152>]).EUt(8).duration(100).buildAndRegister();

recipes.removeByRecipeName("projectred-transmission:insulated/white_insulated_wire");
recipes.removeByRecipeName("projectred-transmission:insulated/orange_insulated_wire");
recipes.removeByRecipeName("projectred-transmission:insulated/magenta_insulated_wire");
recipes.removeByRecipeName("projectred-transmission:insulated/light_blue_insulated_wire");
recipes.removeByRecipeName("projectred-transmission:insulated/yellow_insulated_wire");
recipes.removeByRecipeName("projectred-transmission:insulated/lime_insulated_wire");
recipes.removeByRecipeName("projectred-transmission:insulated/pink_insulated_wire");
recipes.removeByRecipeName("projectred-transmission:insulated/gray_insulated_wire");
recipes.removeByRecipeName("projectred-transmission:insulated/light_gray_insulated_wire");
recipes.removeByRecipeName("projectred-transmission:insulated/cyan_insulated_wire");
recipes.removeByRecipeName("projectred-transmission:insulated/purple_insulated_wire");
recipes.removeByRecipeName("projectred-transmission:insulated/blue_insulated_wire");
recipes.removeByRecipeName("projectred-transmission:insulated/brown_insulated_wire");
recipes.removeByRecipeName("projectred-transmission:insulated/green_insulated_wire");
recipes.removeByRecipeName("projectred-transmission:insulated/red_insulated_wire");
recipes.removeByRecipeName("projectred-transmission:insulated/black_insulated_wire");
packer.recipeBuilder().inputs([<projectred-transmission:wire>,<ore:plateRubber>]).outputs([<projectred-transmission:wire:16>]).EUt(8).duration(100).buildAndRegister();
unpacker.recipeBuilder().inputs([<projectred-transmission:wire:16>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})]).outputs([<projectred-transmission:wire>,<gregtech:meta_item_1:12152>]).EUt(8).duration(100).buildAndRegister();

recipes.remove(<projectred-expansion:plan>);
assembler.recipeBuilder().inputs([<ore:paper>*2]).fluidInputs([<liquid:glue>*576]).outputs([<projectred-expansion:plan>]).EUt(8).duration(64).buildAndRegister();
recipes.remove(<projectred-fabrication:ic_blueprint>);
assembler.recipeBuilder().inputs([<gregtech:meta_item_2:32444>,<ore:plateLapis>*4]).fluidInputs([<liquid:redstone>*288]).outputs([<projectred-fabrication:ic_blueprint>]).EUt(30).duration(600).buildAndRegister();
recipes.remove(<projectred-fabrication:ic_chip>);
assembler.recipeBuilder().inputs([<ore:circuitBasic>,<ore:plateLapis>]).fluidInputs([<liquid:redstone>*288]).outputs([<projectred-fabrication:ic_chip>]).EUt(30).duration(300).buildAndRegister();

assembler.recipeBuilder().inputs([<ore:stickLongIron>*2,<minecraft:glass_pane>]).outputs([<projectred-transportation:pipe>*2]).EUt(30).duration(200).buildAndRegister();
assembler.recipeBuilder().inputs([<projectred-transportation:pipe:1>,<ore:plateGold>*4]).fluidInputs([<liquid:redstone>*576]).outputs([<projectred-transportation:pipe:2>]).EUt(30).duration(400).buildAndRegister();
assembler.recipeBuilder().inputs([<projectred-transportation:pipe:1>,<ore:plateDiamond>*2]).fluidInputs([<liquid:redstone>*864]).outputs([<projectred-transportation:pipe:3>]).EUt(30).duration(400).buildAndRegister();
assembler.recipeBuilder().inputs([<projectred-transportation:pipe:1>,<minecraft:magma_cream>*4]).fluidInputs([<liquid:lava>*4000]).outputs([<projectred-transportation:pipe:4>]).EUt(30).duration(400).buildAndRegister();
assembler.recipeBuilder().inputs([<projectred-transportation:pipe:1>,<minecraft:lever>]).outputs([<projectred-transportation:pipe:32>]).EUt(30).duration(200).buildAndRegister();
assembler.recipeBuilder().inputs([<projectred-transportation:pipe:1>,<ore:plateStone>*4]).outputs([<projectred-transportation:pipe:33>]).EUt(30).duration(200).buildAndRegister();
assembler.recipeBuilder().inputs([<projectred-transportation:pipe>,<ore:plateIron>]).outputs([<projectred-transportation:pipe:64>]).EUt(30).duration(200).buildAndRegister();
assembler.recipeBuilder().inputs([<projectred-transportation:pipe:64>,<ore:plateLead>]).outputs([<projectred-transportation:pipe:65>]).EUt(30).duration(300).buildAndRegister();

//Glowstone Boule
blast_furnace.recipeBuilder().inputs([<ore:dustSilicon>*64,<minecraft:glowstone>*2]).fluidInputs([<liquid:nitrogen>*8000]).outputs([<gregtech:meta_item_2:32437>]).property("temperature", 2484).duration(12000).EUt(480).buildAndRegister();