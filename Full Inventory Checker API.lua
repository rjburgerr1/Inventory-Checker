-- Full Inventory Checker API --------------------------------------------------------------------------------------------------------
-- API to check if a turtle a has full inventory or not
-- This API contains two methods for checking a turtles inventory
-- hasFullInventory returns true if all inventory slots have at least one item in them, false otherwise
-- hasMaxInventory returns true if all inventory slots have 64 items in them.
-- Unfortunately for now, there is no method I can find with CC tweaked that can check if an item stacks to 64 or not. 
-- If that method becomes a thing I will update this API to include checks for whether items have reached their max stack size

function hasFullInventory()
    for i = 1, 16 do
        if turtle.getItemDetail(i) == nil then
            return false
        end
    end
    return true
end
 
function hasMaxInventory()
    for i = 1, 16 do
        local item = turtle.getItemDetail(i)
        if (item.count ~= 64) then
    		return false
    	end
    end
	return true 
end