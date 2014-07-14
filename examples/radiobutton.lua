local example = {}
example.title = "Radiobutton"
example.category = "Object Demonstrations"

function example.func()
	
	local frame = loveframes.Create("frame")
	frame:SetName("Radiobutton")
	frame:SetHeight(150)
	frame:CenterWithinArea(unpack(demo.centerarea))
		
	local group1 = {}
	
	local radiobutton1 = loveframes.Create("radiobutton", frame)
	radiobutton1:SetText("Radiobutton 1 in Group 1")
	radiobutton1:SetPos(5, 30)
	radiobutton1:SetGroup(group1)
		
	local radiobutton2 = loveframes.Create("radiobutton", frame)
	radiobutton2:SetText("Radiobutton 2 in Group 1")
	radiobutton2:SetPos(5, 60)
	radiobutton2:SetGroup(group1)
	
	local group2 = {}
	
	local radiobutton3 = loveframes.Create("radiobutton", frame)
	radiobutton3:SetText("Radiobutton 3 in Group 2")
	radiobutton3:SetPos(5, 90)
	radiobutton3:SetGroup(group2)
		
	local radiobutton4 = loveframes.Create("radiobutton", frame)
	radiobutton4:SetText("Radiobutton 4 in Group 2")
	radiobutton4:SetPos(5, 120)
	radiobutton4:SetGroup(group2)
	
end

demo.RegisterExample(example)
