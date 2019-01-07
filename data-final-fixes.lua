	require("functions/functions")

	require("updates.aai-updates")

	require("prototypes.overrides-Fusion")

	require("prototypes.Ores.Molybdenum")

	require("prototypes.overrides-Hightech")

	require("prototypes.Ores.Borax")

	require("prototypes.Ores.Niobium")
   
	require("prototypes.PyAngelStacking")
   
	require("prototypes.overrides-bioindustries")
	
	require("prototypes.overrides-pyscience")
	
	require("prototypes.overrides-Rawores")

   if mods["angelspetrochem"] then
	
	   angelsmods.functions.OV.execute()
   
   --log(serpent.block(data.raw.recipe))
   
	-- hide recipes with "angels-void" or "slag" as main product
	for name, recipe in pairs(data.raw.recipe) do
		if recipe.main_product == "angels-void" or recipe.main_product == "slag" then
			log("hide " .. name)
			data.raw.recipe[name].hidden = true
		end
		
		if recipe.results ~= nil then
			
			if recipe.results[1].name == "slag" and recipe.results[2] == nil then
			
			data.raw.recipe[name].hidden = true
			
			end
			
			if recipe.results[1].name == "angels-void" and recipe.results[2] == nil then
			
			data.raw.recipe[name].hidden = true
			
			end
			
		end
	end
	

end

if settings.startup["py-prod-adjust"].value == true then

recipe_output_mod()

end

--duplicatechecker()