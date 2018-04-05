package com.blamejared.compat.betterwithmods.base.blockrecipes;

import betterwithmods.common.registry.block.managers.CraftingManagerBlock;
import betterwithmods.common.registry.block.recipe.BlockRecipe;
import com.blamejared.mtlib.helpers.InputHelper;
import com.blamejared.mtlib.helpers.LogHelper;
import com.blamejared.mtlib.utils.BaseAction;
import com.google.common.collect.Lists;
import crafttweaker.api.item.IItemStack;
import net.minecraft.item.ItemStack;

import java.util.List;
import java.util.stream.Collectors;

public class BlockRecipeRemove<T extends BlockRecipe> extends BaseAction {

    private final List<ItemStack> outputs;
    private CraftingManagerBlock<T> manager;

    public BlockRecipeRemove(String name, CraftingManagerBlock<T> manager, IItemStack[] outputs) {
        this(name, manager, Lists.newArrayList(InputHelper.toStacks(outputs)));
    }

    private BlockRecipeRemove(String name, CraftingManagerBlock<T> manager, List<ItemStack> outputs) {
        super(name);
        this.manager = manager;
        this.outputs = outputs;
    }

    @Override
    public void apply() {
        if (!manager.remove(outputs)) {
            LogHelper.logError(String.format("Error removing %s Recipe for %s", name, getRecipeInfo(outputs)));
        }
    }

    private String getRecipeInfo(List<ItemStack> outputs) {
        return outputs.stream().map(ItemStack::getDisplayName).collect(Collectors.joining(","));
    }
}