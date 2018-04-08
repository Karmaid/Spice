Properties = setmetatable({
	getDefault = function(classname)
		local def = {}
		for i,v in next, getmetatable(Citrus.Properties).Default do
			if Citrus.Instance.isA(classname,i) or classname == i or i == 'GuiText' and classname:find'Text' then
				table.insert(def,v)
			end
		end
		for i = 2,#def do
			Citrus.Table.merge(def[i],def[1])
		end
		return def[1]
	end;
	setDefault = function(classname,properties)
		getmetatable(Citrus.Properties).Default[classname] = properties;
	end;
	setPropertiesToDefault = function(who)
		Citrus.Properties.setProperties(who,Citrus.Properties.getDefault(who.ClassName) or {})
	end;
	new = function(name,func,...)
		local storage = getmetatable(Citrus.Properties).Custom
		storage[name] = setmetatable({func,...},{
				__call = function(self,...)
					return self[1](...)
				end;
				__index = function(self,indexed)
					if #self == 1 then
						return true
					end
					for i = 2,#self do
						if self[i]:lower() == 'all' or indexed:IsA(self[i]) or self[i] == 'GuiText' and indexed.ClassName:find'Text' then
							return true
						end
					end
					return false
				end;
		})
	end;
	hasProperty = function(who,prop)
		who = Citrus.Instance.getInstanceOf(who)
		if pcall(function() return who[Citrus.Properties[prop]] end) then
			return true, who[Citrus.Properties[prop]]
		else
			return false
		end
	end;
	getProperties = function(who)
		who = Citrus.Instance.getInstanceOf(who)
		local p = getmetatable(Citrus.Properties).RobloxAPI
		local new = {}
		for i,v in next,p do
			if Citrus.Properties.hasProperty(who,v) then
				rawset(new,v,who[v])
			end
		end
		return new
	end;
	setProperties = function(who,props)
		who = Citrus.Instance.getInstanceOf(who)
		local c = getmetatable(Citrus.Properties).Custom
		for i,v in next,props do
			if c[i] and c[i][who] then
				if type(v) ~= 'table' then v = {v} end
				--custom object check
				c[i](who,unpack(v))
			elseif Citrus.Properties[i]:find'Color3' and type(v) == 'string' or type(v) == 'table' then
				v = type(v) == 'table' and v or {v}
				Citrus.Theming.insertObject(v[1],who,i,unpack(Citrus.Table.pack(v,2) or {}))
			elseif Citrus.Properties.hasProperty(who,i)  then
				pcall(function() who[Citrus.Properties[i]] = v end)
			end
		end
		return who
	end;
	getObjectOfProperty = function(property,directory)
		directory = Citrus.Instance.getInstanceOf(directory)
		local objects = {}
		for _,object in next,type(directory) == 'table' and directory or directory:GetDescendants() do
			if Citrus.Properties.hasProperty(object,property) then
				table.insert(objects,object)
			end
		end
		return objects
	end;
				
},{
	__index = function(self,ind)
		return Citrus.Table.search(getmetatable(self).RobloxAPI,ind) or ind
	end;
	Default = {};
	Custom = setmetatable({},{
			__index = function(self,ind)
				for i,v in next,self do
					if i:sub(1,#ind):lower() == ind then
						return v
					end
				end
			end});
	RobloxAPI = {
		'Shape','Anchored','BackSurfaceInput','BottomParamA','BottomParamB','BottomSurface','BottomSurfaceInput','BrickColor','CFrame','CanCollide','CenterOfMass','CollisionGroupId','Color','CustomPhysicalProperties','FrontParamA','FrontParamB','FrontSurface','FrontSurfaceInput';
		'LeftParamA','LeftParamB','LeftSurface','LeftSurfaceInput','Locked','Material','Orientation','Reflectance','ResizeIncrement','ResizeableFaces','RightParamA','RightParamB','RightSurface','RightSurfaceInput','RotVelocity','TopParamA','TopParamB','TopSurface','TopSurfaceInput','Velocity';
		'Archivable','ClassName','Name','Parent','AttachmentForward','AttachmentPoint','AttachmentPos','AttachmentRight','AttachmentUp';
		'Animation','AnimationId','IsPlaying','Length','Looped','Priority','Speed','TimePosition','WeightCurrent','WeightTarget','Axis','CFrame','Orientation';
		'Position','Rotation','SeconaryAxis','Visible','WorldAxis','WorldOrientation','WorldPosition','WorldSecondaryAxis','Version','DisplayOrder','ResetOnSpawn','Enabled';
		'AbsolutePosition','AbsoluteRotation','AbsoluteSize','ScreenOrientation','ShowDevelopmentGui','Attachment0','Attachment1','Color','CurveSize0','CurveSize1','FaceCamera';
		'LightEmission','Segments','Texture','TextureLength','TextureMode','TextureSpeed','Transparency','Width0','Width1','ZOffset','AngularVelocity','MaxTorque','P','Force','D';
		'MaxForce','Location','Velocity','CartoonFactor','MaxSpeed','MaxThrust','Target','TargetOffset','TargetRadius','ThrustD','ThrustP','TurnD','TurnP','Value','CameraSubject','CameraType';
		'FieldOfView','Focus','HeadLocked','HeadScale','ViewportSize','HeadColor','HeadColor3','LeftArmColor','LeftArmColor3','LeftLegColor','LeftLegColor3','RightArmColor','RightArmColor3','RightLegColor','RightLegColor3','TorsoColor','TorsoColor3';
		'BaseTextureId','BodyPart','MeshId','OverlayTextureId','PantsTemplate','ShirtTemplate','Graphic','SkinColor','LoadDefaultChat','CursorIcon','MaxActivationDistance','MaxAngularVelocity','PrimaryAxisOnly','ReactionTorqueEnabled','Responsiveness','RigidityEnabled';
		'ApplyAtCenterOfMass','MaxVelocity','ReactionForceEnabled','Radius','Restitution','TwistLimitsEnabled','TwistLowerAngle','TwistUpperAngle','UpperAngle','ActuatorType','AngularSpeed','CurrentAngle','LimitsEnabled','LowerAngle','MotorMaxAcceleration','MotorMaxTorque','ServoMaxTorque','TargetAngle';
		'InverseSquareLaw','Magnitude','Thickness','CurrentPosition','LowerLimit','Size','TargetPosition','UpperLimit','Heat','SecondaryColor';
		'BackgroundColor3','AnchorPoint','BackgroundTransparency','BorderColor3','BorderSizePixel','ClipsDescendants','Draggable','LayoutOrder','NextSelectionDown','NextSelectionLeft','NextSelectionRight','NextSelectionUp','Selectable','SelectionImageObject','SizeConstraint','SizeFromContents','ZIndex';
		'Style','AutoButtonColor','Modal','Selected','Image','ImageColor3','ImageRectOffset','ImageRectSize','ImageTransparency','IsLoaded','ScaleType','SliceCenter','TextSize','TileSize','Font','Text','TextBounds','TextColor3','TextFits';
		'TextScaled','TextStrokeColor3','TextStrokeTransparency','TextTransparency','TextWrapped','TextXAlignment','TextYAlignment','Active','AbsoluteWindowSize','BottomImage','CanvasPosition','CanvasSize','HorizontalScrollBarInset','MidImage','ScrollBarThickness','ScrollingEnabled','TopImage','VerticalScrollBarInset';
		'VerticalScrollBarPosition','ClearTextOnFocus','MultiLine','PlaceholderColor3','PlaceholderText','ShowNativeInput','Adornee','AlwaysOnTop','ExtentsOffset','ExtentsOffsetWorldSpace','LightInfluence','MaxDistance','PlayerToHideForm','SizeOffset','StudsOffset','StudsOffsetWorldSpace','ToolPunchThroughDistance','Face','DecayTime','Density','Diffusion','Duty','Frequency';
		'Depth','Mix','Rate','Attack','GainMakeup','Ratio','Release','SieChain','Threshold','Level','Delay','DryLevel','Feedback','WetLevel','HighGain','LowGain','MidGain','Octave','Volume','MaxSize','MinSize','AspectRatio','DominantAxis','AspectType','MaxTextSize','MinTextSize','CellPadding','CellSize','FillDirectionMaxCells','StartCorner';
		'AbsoluteContentSize','FillDirection','HorizontalAlignment','SortOrder','VerticalAlignment','Padding','Animated','Circular','CurrentPage','EasingDirection','EasingStyle','GamepadInputEnabled','ScrollWhellInputEnabled','TweenTime','TouchImputEnable','FillEmptySpaceColumns','FillEmptySpaceRows','MajorAxis','PaddingBottom','PaddingLeft','PaddingRight','PaddingTop','Scale'
	}
});
