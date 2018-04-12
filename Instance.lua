Instance = setmetatable({
	newClass = function(name,funct)
		local self = Spice.Instance
		local pt = Spice.Table
		getmetatable(self).Classes[name] = setmetatable({funct,Objects = {}},{
				__call = function(self,...)
					return self[1](...)
				end;
				__index = function(self,ind)
					return pt.contains(self.Objects,ind)
				end;
			})
	end;
	isA = function(is,a)
		local self = Spice.Instance
		if self.isAClass(is) then
			is = Instance.new(is)
			return is:IsA(a)
		end
		return false
	end;
	isAClass = function(is,custom)
		if pcall(function() return Instance.new(is) end) or custom and getmetatable(Spice.Instance).Classes[is] then
			return true
		else
			return false
		end
	end;
	newPure = function(class,...)
		local args = {...}
		if type(args[#args]) ~= 'table' then
			table.insert(args,{})
		end
		table.insert(args[#args],true)
		return Spice.Instance.new(class,unpack(args))
	end;
	new = function(class,...)
		local self = Spice.Instance
		local pt = Spice.Table
		local args,storage,new,parent,properties = {...},getmetatable(self).Classes
		if typeof(args[1]) == 'Instance' or self.isAnObject(args[1]) then
			parent = self.getInstanceOf(args[1])
			table.remove(args,1)
		end
		if type(args[#args]) == 'table' then
			properties = args[#args]
			table.remove(args,#args)
		end
		new = pt.find(storage,class) and pt.find(storage,class)(unpack(args)) or Instance.new(class)
		new.Parent = parent
		local a = next(properties or {})
		if type(a) ~= 'number' then
			Spice.Properties.setPropertiesToDefault(new)
		else
			table.remove(properties,a)
		end		
		Spice.Properties.setProperties(new,properties or {})
		return new
	end;
	newInstance = function(class,parent,props)
		local new = Instance.new(class)
		local parent = Spice.Instance.getInstanceOf(parent)
		props = props or type(parent) == 'table' and parent
		parent = type(parent) ~= 'table' and parent or nil
		local a = next(props or {})
		return Spice.Properties.setProperties(Instance.new(class,parent),props or {})
	end;
	newObject = function(...)
		local function insert(who)
			rawset(getmetatable(Spice.Instance).Objects,who.Instance,who)
		end
		local args,obj,class,parent,props = {...},{}
		for i,v in next,args do
			class = type(v) == 'string' and Spice.Instance.isAClass(v) and v or class
			parent = typeof(v) == 'Instance' and v or parent
			props = type(v) == 'table' and Spice.Table.length(obj) > 0 and v or props
			obj = type(v) == 'table' and Spice.Table.length(obj) == 0 and v or obj
		end
		local ins = Spice.Instance.newInstance(class,parent,props)
		local new = {Instance = ins,Object = obj}
		local newmeta = {
			Properties = {Index = {}, NewIndex = {}};
			__index = function(self,ind)
				local pro = getmetatable(self).Properties
				if Spice.Table.contains(pro.Index,ind) then
					local ret = Spice.Table.find(pro.Index,ind)
					return type(ret) ~= 'function' and ret or ret(self)
				elseif Spice.Table.contains(self.Object,ind) or not Spice.Properties.hasProperty(self.Instance,ind) then
					return Spice.Table.find(self.Object,ind)
				elseif Spice.Properties.hasProperty(self.Instance,ind) then
					return self.Instance[Spice.Properties[ind]]
				end
			end;
			__newindex = function(self,ind,new)
				local pro = getmetatable(self).Properties
				if Spice.Table.contains(pro.NewIndex,ind) then
					Spice.Table.find(pro.NewIndex,ind)(self,new)
				elseif Spice.Table.contains(self.Object,ind) or not Spice.Properties.hasProperty(self.Instance,ind) or type(new) == 'function' then
					rawset(self.Object,ind,new)
				elseif Spice.Properties.hasProperty(self.Instance,ind) then
					self.Instance[Spice.Properties[ind]] = new
				end
			end;
			__call = function(self,prop)
				Spice.Properties.setProperties(self.Instance,prop)
			end;
		}
		function new:Index(name,what)
			rawset(getmetatable(self).Properties.Index,name,what)
		end;
		function new:NewIndex(name,what)
			if type(what) == 'function' then
				rawset(getmetatable(self).Properties.NewIndex,name,what)
			end
		end;
		function new:Clone(parent,prop)
			return Spice.cloneObject(self,parent,prop)
		end;
		setmetatable(new,newmeta)
		insert(new)
		return new
	end;
	cloneObject = function(obj,parent,prop)
		local ins = obj.Instance:Clone()
		ins.Parent = parent
		local clone = Spice.Table.clone(obj)
		clone.Instance = ins
		Spice.setProperties(clone.Instance, prop and prop or {})
		rawset(getmetatable(Spice.Instance).Objects,clone.Instance,clone)
		return clone
	end;
	getInstanceOf = function(who)
		local self = getmetatable(Spice.Instance).Objects
		return Spice.Table.indexOf(self,who) or who
	end;
	getObjectOf = function(who)
		local self = getmetatable(Spice.Instance).Objects
		return Spice.Table.find(self,who) or nil
	end;
	isAnObject = function(who)
		return Spice.Instance.getObjectOf(who) and true or false
	end;
	getAncestors = function(who)
		local anc = {game}
		who = Spice.Instance.getInstanceOf(who)
		local chain = Spice.Misc.stringFilterOut(who:GetFullName(),'%.','game',nil,true)
		local ind = game
		for i,v in next,chain do
			ind = ind[v]
			table.insert(anc,ind)
		end
		return Spice.Table.pack(Spice.Table.reverse(anc),2)
	end;
},{
	Classes = {};
	Objects = {};
});
