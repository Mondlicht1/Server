--姓i L齆PC
--张道长
--普通

x002075_g_ScriptId	= 002075

--咫尺天涯(技能编号、技能名称、消耗金钱)
x002075_g_Ability				= {}
x002075_g_Ability["aid"]= 39
x002075_g_Ability["nam"]= "Ch� X韈h Thi阯 Nhai"
x002075_g_Ability["gld"]= 300000		--30G
x002075_g_LevMax				= 3					--可学习to� 鸬 最高等c

--操作集
x002075_g_Key				= {}
x002075_g_Key["nul"]= 0		--啥都没做
x002075_g_Key["stu"]= 1		--K� n錸g h鱟 t
x002075_g_Key["sty"]= 101	--X醕 nh学习
x002075_g_Key["stn"]= 100	--放弃学习
x002075_g_Key["lup"]= 2		--升c技能
x002075_g_Key["upy"]= 201	--X醕 nh升c
x002075_g_Key["upn"]= 200	--放弃升c
x002075_g_Key["des"]= 3		--定位符介绍


--**********************************
--事件交互入口
--**********************************
function x002075_OnDefaultEvent( sceneId, selfId, targetId )
	local	lev	= QueryHumanAbilityLevel( sceneId, selfId, x002075_g_Ability["aid"] )
	BeginEvent( sceneId )
		AddText( sceneId, "  Ta c� th� truy玭 th� cho ng呓i m祎 k� n錸g th k�, c醕 ch� k� hi畊 疬㧟 t誳 ra t� vi甤 l㱮 d鴑g k� n錸g n鄖 c� th� ghi l読 th鬾g tin v� tr�, sau n鄖 ng呓i mu痭 quay tr� l読 n絠 ghi ch閜 n鄖, ch� c s� d鴑g c醕 ch� k� hi畊 l� 疬㧟" )
		AddText( sceneId, "  蝎 ngh� ch� �, c醕 ch� k� hi畊 c鄋g cao c th� s� l c� th� s� d鴑g c鄋g nhi玼" )
		if GetLevel( sceneId, selfId ) >= 30 then
			if lev <= 0 then
				AddNumText( sceneId, x002075_g_ScriptId, "H鱟 "..x002075_g_Ability["nam"], 6, x002075_g_Key["stu"] )
			else
				AddNumText( sceneId, x002075_g_ScriptId, "K� n錸g th錸g c", 6, x002075_g_Key["lup"] )
			end			
			AddNumText( sceneId, x002075_g_ScriptId, "Kh鬾g l鄊 g� c�", -1, x002075_g_Key["nul"] )
		end
		AddNumText( sceneId, x002075_g_ScriptId, "Gi緄 thi畊 k� hi畊 鸶nh v�", 11, x002075_g_Key["des"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中m祎 项
--**********************************
function x002075_OnEventRequest( sceneId, selfId, targetId, eventId )
	local	key	= GetNumText()
	local	lev	= QueryHumanAbilityLevel( sceneId, selfId, x002075_g_Ability["aid"] )
	local exp = GetAbilityExp( sceneId, selfId, x002075_g_Ability["aid"] )	--熟练度
	local ret, demandMoney, _, limitAbilityExp, limitAbilityExpShow, _, limitLevel
		= LuaFnGetAbilityLevelUpConfig( x002075_g_Ability["aid"], lev + 1 )

	--定位符介绍
	if key == x002075_g_Key["des"]	then

		x002075_MsgBox( sceneId, selfId, targetId, "#{function_help_020}" )

	--K� n錸g h鱟 t
	elseif key == x002075_g_Key["stu"]	then
	
		if GetLevel( sceneId, selfId ) < 30 then--非法情况走到这里,也不C 提示了
			return 0
		end

		x002075_OnAsk( sceneId, selfId, targetId, x002075_g_Key["stu"], "  Ng呓i h鱟 k� n錸g n鄖 c ph鋓 ti陁 #{_EXCHG" .. demandMoney .. "},喧ng否继续?" )
	
	--X醕 nh学习
	elseif key == x002075_g_Key["sty"] then
	
		if GetLevel( sceneId, selfId ) < 30 then--非法情况走到这里,也不C 提示了
			return 0
		end

		if lev > 0 then
			x002075_MsgBox( sceneId, selfId, targetId, "  Ng呓i 疸 t譶g h鱟 k� n錸g n鄖 r癷!" )
			return 0
		end

		if LuaFnGetMoney( sceneId, selfId )+GetMoneyJZ( sceneId, selfId ) < demandMoney then
			x002075_MsgBox( sceneId, selfId, targetId, "  Ti玭 m trong ng叨i ng呓i kh鬾g 瘘, kh鬾g th� h鱟 k� n錸g n鄖!" )
			return 0
		end

		LuaFnCostMoneyWithPriority( sceneId, selfId, demandMoney )
		SetHumanAbilityLevel( sceneId, selfId, x002075_g_Ability["aid"], 1 )
		x002075_SetMyPrescription( sceneId, selfId, 1 )
		x002075_MsgBox( sceneId, selfId, targetId, "  Ch鷆 m譶g ng呓i 疸 h鱟 疬㧟 "..x002075_g_Ability["nam"]..", ch� c� 餴玼 n猽 mu痭 t誳 ra c醕 k� hi畊 鸶nh v� c� s� l s� d鴑g nhi玼 h絥, m秈 ng呓i n鈔g c k� n錸g c黙 m靚h." )

	--升c技能
	elseif key == x002075_g_Key["lup"] then
		if GetLevel( sceneId, selfId ) < 30 then--非法情况走到这里,也不C 提示了
			return 0
		end
		
		if lev >= x002075_g_LevMax then
			x002075_MsgBox( sceneId, selfId, targetId, "  衅ng c k� n錸g c黙 ng呓i 疸 瘘, kh鬾g c n鈔g c n鎍." )
			return 0
		end
		x002075_OnAsk( sceneId, selfId, targetId, x002075_g_Key["lup"], "  Ng呓i n鈔g c k� n錸g n鄖 c ph鋓 ti陁 #{_EXCHG" .. demandMoney .. "}, c� ti猵 t鴆 hay kh鬾g?" )

	--X醕 nh升c
	elseif key == x002075_g_Key["upy"] then
		if ret ~= 1 then
			return 0
		end
		
		if GetLevel( sceneId, selfId ) < 30 then--非法情况走到这里,也不C 提示了
			return 0
		end

		if lev < 1 then
			x002075_MsgBox( sceneId, selfId, targetId, "  Ng呓i v鏽 ch遖 h鱟 "..x002075_g_Ability["nam"]..", 瘙i sau khi h鱟 疬㧟 k� n錸g c 1 l読 皙n t靘 ta n鈔g c." )
			return 0
		end

		if lev >= x002075_g_LevMax then
			x002075_MsgBox( sceneId, selfId, targetId, "  衅ng c k� n錸g c黙 ng呓i 疸 瘘, kh鬾g c n鈔g c n鎍" )
			return 0
		end

		if exp < limitAbilityExp then
			x002075_MsgBox( sceneId, selfId, targetId, "  C " .. limitAbilityExpShow .. " Nh v鄌 鸬 th鄋h th誳 m緄 n鈔g c 瘃㧟 l n鎍" )
			return 0
		end

		if LuaFnGetMoney( sceneId, selfId )+GetMoneyJZ( sceneId, selfId ) < demandMoney then
			x002075_MsgBox( sceneId, selfId, targetId, "  C #{_EXCHG" .. demandMoney .. "} m緄 c� th� n鈔g c 疬㧟 ti猵" )
			return 0
		end

		--升c此技能
		LuaFnCostMoneyWithPriority( sceneId, selfId, demandMoney )
		SetHumanAbilityLevel( sceneId, selfId, x002075_g_Ability["aid"], lev+1 )
		x002075_SetMyPrescription( sceneId, selfId, lev+1 )
		x002075_MsgBox( sceneId, selfId, targetId, "  K� n錸g c黙 ng呓i 疸 疬㧟 n鈔g c th鄋h c鬾g, ch鷆 m譶g ng呓i c� th� t誳 ra c醕 ch� k� hi畊 cao c h絥!" )

	else
		
		--关闭界面		
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )

	end

	return 1
end

--**********************************
--设置相应等cto� 鸬 配方
--**********************************
function x002075_SetMyPrescription( sceneId, selfId, lev )
	--每c醝等c对应6种配方: 红色、蓝色、白色、绿色、黄色、紫色
	for i=0, 5 do
		SetPrescription( sceneId, selfId, 510+(lev-1)*6+i, 1 )
	end
end

--**********************************
--询问喧ng否这样做
--**********************************
function x002075_OnAsk( sceneId, selfId, targetId, key, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
		AddNumText( sceneId, x002075_g_ScriptId, "C�", -1, key*100+1 )
		AddNumText( sceneId, x002075_g_ScriptId, "Kh鬾g", -1, key*100 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中m祎 项
--**********************************
function x002075_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
