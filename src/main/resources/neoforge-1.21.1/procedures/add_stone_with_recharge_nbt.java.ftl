<#include "mcitems.ftl">
if (${input$entity} instanceof Player _player) {
	ItemStack _setstack = ${mappedMCItemToItemStackCode(input$item, 1)};
	_setstack.setCount(1);
    CustomData.update(DataComponents.CUSTOM_DATA, _setstack, tag -> tag.putDouble("rechargeStone", (!(entity instanceof Player _plr ? _plr.getAbilities().instabuild : false) ? ${input$entity}.getData(PowerModVariables.PLAYER_VARIABLES).recharge_timer * 20 : 0)));
	ItemHandlerHelper.giveItemToPlayer(_player, _setstack);
}