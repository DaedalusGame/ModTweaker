
//Anvil
mods.betterwithmods.Anvil.addShaped(<minecraft:dirt>, [
   [<minecraft:stone>,<minecraft:stone:2>,<minecraft:stone:2>,<minecraft:stone>],
   [<minecraft:stone:1>,<minecraft:stone>,<minecraft:stone>,<minecraft:stone:1>],
   [<minecraft:stone:1>,<minecraft:stone>,<minecraft:stone>,<minecraft:stone:1>],
   [<minecraft:stone>,<minecraft:stone>,<minecraft:stone>,<minecraft:stone>]
]);

mods.betterwithmods.Anvil.addShaped(<minecraft:dirt>, [
   [<minecraft:stone>,<minecraft:stone:2>,<minecraft:stone:2>,<minecraft:stone>],
   [<minecraft:stone:1>,null,null,<minecraft:stone:1>],
   [<minecraft:stone:1>,null,null,<minecraft:stone:1>],
   [<minecraft:stone>,<minecraft:stone>,<minecraft:stone>,<minecraft:stone>]
]);


mods.betterwithmods.Anvil.addShaped(<minecraft:dirt>, [
   [<minecraft:stone>,<minecraft:stone:2>,<minecraft:stone>],
   [<minecraft:stone:1>,null,<minecraft:stone:1>],
   [<minecraft:stone:1>,null,<minecraft:stone:1>],
   [<minecraft:stone>,<minecraft:stone>,<minecraft:stone>]
]);

//Cauldron

mods.betterwithmods.Cauldron.removeAll();

mods.betterwithmods.Cauldron.builder()
.buildRecipe([<ore:stone>], [<minecraft:dirt>])
.setHeat(2)
.setPriority(-1)
.build();

mods.betterwithmods.Cauldron.builder()
.buildRecipe([<minecraft:grass>*2], [<minecraft:dirt>])
.setHeat(2)
.setPriority(-1)
.build();


//Crucible

mods.betterwithmods.Crucible.builder()
.buildRecipe([<ore:stone>], [<minecraft:dirt>])
.setHeat(2)
.setPriority(-1)
.build();

//Mill

mods.betterwithmods.Mill.builder()
.buildRecipe([<minecraft:dirt>], [<minecraft:stone>])
.setGrindType("minecraft:entity.ghast.scream")
.build();

mods.betterwithmods.Mill.builder()
.buildRecipe([<ore:stone>*64], [<minecraft:bedrock>])
.setGrindType("entity.wither.break_block")
.build();


//Saw

mods.betterwithmods.Saw.builder()
.buildRecipe(<minecraft:fence>, [<minecraft:stick>*6])
.build();

//Turntable
mods.betterwithmods.Turntable.removeAll();
mods.betterwithmods.Turntable.add(<minecraft:grass>, <minecraft:dirt>, [<minecraft:wheat_seeds>]);
mods.betterwithmods.Turntable.add(<minecraft:gravel>, [<minecraft:flint>]);


//Kiln

mods.betterwithmods.Kiln.builder()
.buildRecipe(<minecraft:iron_block>, [<minecraft:iron_ingot>*9])
.setHeat(2)
.build();

//Mini Block
recipes.addShaped("siding_test", <minecraft:planks>,[[mods.betterwithmods.MiniBlocks.getMiniBlock("siding", <minecraft:bookshelf>, 1)]]);
