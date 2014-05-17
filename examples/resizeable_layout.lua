local example = {}
example.title = "Resizeable Layout"
example.category = "Example Implementations"

function example.func()
	
	local frame = loveframes.Create("frame")
	frame:SetName("Resizeable Layout")
	frame:SetSize(500, 300)
	frame:CenterWithinArea(unpack(demo.centerarea))
	frame:SetResizable(true)
	frame:SetMaxWidth(800)
	frame:SetMaxHeight(600)
	frame:SetMinWidth(200)
	frame:SetMinHeight(200)
	
	local panel1 = loveframes.Create("panel", frame)
	panel1:SetPos(5, 30)
	panel1:SetSize(frame:GetWidth()/2 - 2, frame:GetHeight() - 65)
	panel1.Update = function(object)
		object:SetSize(frame:GetWidth()/2 - 7, frame:GetHeight() - 65)
	end
	
	local panel2 = loveframes.Create("panel", frame)
	panel2:SetPos(frame:GetWidth()/2 + 2, 30)
	panel2:SetSize(frame:GetWidth()/2 - 7, frame:GetHeight()/2 - 35)
	panel2.Update = function(object)
		object:SetPos(frame:GetWidth()/2 + 2, 30)
		object:SetSize(frame:GetWidth()/2 - 7, frame:GetHeight()/2 - 35)
	end
	
	local panel3 = loveframes.Create("panel", frame)
	panel3:SetPos(frame:GetWidth()/2 + 2, (panel2.staticy + panel2:GetHeight()) + 5)
	panel3:SetSize(frame:GetWidth()/2 - 7, frame:GetHeight()/2 - 35)
	panel3.Update = function(object)
		object:SetPos(frame:GetWidth()/2 + 2, (panel2.staticy + panel2:GetHeight()) + 5)
		object:SetSize(frame:GetWidth()/2 - 7, frame:GetHeight()/2 - 35)
	end
	
	local panel4 = loveframes.Create("panel", frame)
	panel4:SetPos(5, frame:GetHeight() - 30)
	panel4:SetSize(frame:GetWidth(), 25)
	panel4.Update = function(object)
		object:SetY(frame:GetHeight() - 30)
		object:SetWidth(frame:GetWidth() - 10)
	end
	
end

demo.RegisterExample(example)