--传送NPC
--驿站老板
--普通

x000180_g_ScriptId	= 000180

--门派信息(门派名称,SceneID,PosX,PosY,门派ID)
x000180_g_mpInfo		= {}
x000180_g_mpInfo[0]	= { "Tinh T鷆", 16,  96, 152, MP_XINGSU }
x000180_g_mpInfo[1]	= { "Ti陁 Dao", 14,  67, 145, MP_XIAOYAO }
x000180_g_mpInfo[2]	= { "Thi猽 L鈓",  9,  96, 127, MP_SHAOLIN }
x000180_g_mpInfo[3]	= { "Thi阯 S絥", 17,  95, 120, MP_TIANSHAN }
x000180_g_mpInfo[4]	= { "Thi阯 Long", 13,  96, 120, MP_DALI }
x000180_g_mpInfo[5]	= { "Nga My", 15,  89, 139, MP_EMEI }
x000180_g_mpInfo[6]	= { "V� 衋ng", 12, 103, 140, MP_WUDANG }
x000180_g_mpInfo[7]	= { "Minh Gi醥", 11,  98, 167, MP_MINGJIAO }
x000180_g_mpInfo[8]	= { "C醝 Bang", 10,  91, 116, MP_GAIBANG }

x000180_g_Yinpiao = 40002000
--**********************************
--事件交互入口
--**********************************
function x000180_OnDefaultEvent( sceneId, selfId, targetId )

	-- 检测玩家身上喧ng不喧ng有“银票”C醝 n鄖 东西,有就不能使用这里to� 鸬 功能
	if GetItemCount(sceneId, selfId, x000180_g_Yinpiao)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "  Xin th� l瞚 tr阯 ng叨i c醕 h� 餫ng gi� ng鈔 phi猽 ta kh鬾g th� gi鷓 疬㧟." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	local	mp
	local	i		= 0
	BeginEvent( sceneId )
		if GetLevel( sceneId, selfId ) >= 10 then
			AddText( sceneId, "#{XIYU_20071228_01}" )
			--AddNumText( sceneId, x000180_g_ScriptId, "#gFF83FATr� v排�", 9, 1000 )
			AddNumText( sceneId, x000180_g_ScriptId, "#gFF7F24夙阳镇", 9, 1001 )
			AddNumText( sceneId, x000180_g_ScriptId, "#gFF7F24通天塔塔顶", 9, 1002 )
			AddNumText( sceneId, x000180_g_ScriptId, "#cFF0000通天塔三层", 9, 1003 )
			AddNumText( sceneId, x000180_g_ScriptId, "#gFF7F24通天塔二层", 9, 1006 )
			AddNumText( sceneId, x000180_g_ScriptId, "#gFF7F24通天塔m祎 层", 9, 1007 )
			AddNumText( sceneId, x000180_g_ScriptId, "#gFF34B3通天塔地宫", 9, 1008 )
			AddNumText( sceneId, x000180_g_ScriptId, "#gFF34B3钧天王陵", 9, 1012 )
			AddNumText( sceneId, x000180_g_ScriptId, "#gFAFAFA兵圣奇阵", 9, 1013 )
			AddNumText( sceneId, x000180_g_ScriptId, "门派 - 慕容山庄", 9, 1014 )
			AddNumText( sceneId, x000180_g_ScriptId, "副本 - 藏书水阁", 9, 1015 )
			AddNumText( sceneId, x000180_g_ScriptId, "林海溪谷", 9, 1016 )
			AddNumText( sceneId, x000180_g_ScriptId, "漠南清原", 9, 1017 )
			AddNumText( sceneId, x000180_g_ScriptId, "#G忘川花海", 9, 1018 )
			AddNumText( sceneId, x000180_g_ScriptId, "#gFAFAFA天岐南淮", 9, 1019 )
			--AddNumText( sceneId, x000180_g_ScriptId, "#gFAFAFA野外 - Th鷆 H� C� Tr(BOSS专区)", 9, 1009 )
			AddNumText( sceneId, x000180_g_ScriptId, "#gFAFAFA野外 - 昆仑福地(BOSS专区)", 9, 1010 )
			AddNumText( sceneId, x000180_g_ScriptId, "#gFFB6C1带我去其他门派", 9, 1011 )
			for i, mp in x000180_g_mpInfo do
				--AddNumText( sceneId, x000180_g_ScriptId, "门派 - "..mp[1], 9, i )
			end
		else
			AddText( sceneId, "  Ng呓i c 等级到达10级以上,才能去别to� 鸬 Th鄋h ph� ." )
			AddNumText( sceneId, x000180_g_ScriptId, "Th鄋h ph�  - 姓i L�",  9, 1003 )
			AddNumText( sceneId, x000180_g_ScriptId, "Th鄋h ph�  - 姓i L�2", 9, 1004 )
			AddNumText( sceneId, x000180_g_ScriptId, "Th鄋h ph�  - 姓i L�3", 9, 1005 )
		end

		-- 我怎样才能去恤n Ho鄋g和Tung S絥
		--AddNumText( sceneId, x000180_g_ScriptId, "我怎样才能去恤n Ho鄋g和Tung S絥", 11, 2000 )

	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中m祎 项
--**********************************
function x000180_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1011 then
	local	mp
	local	i		= 0
		BeginEvent( sceneId )
			for i, mp in x000180_g_mpInfo do
				AddNumText( sceneId, x000180_g_ScriptId, "门派 - "..mp[1], 9, i )
			end
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
		--队伍相关
	if GetTeamId(sceneId,selfId)>=0 and
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		num=LuaFnGetFollowedMembersCount( sceneId, selfId)
		local mems = {}
		for	i=0,num-1 do
			mems[i] = GetFollowedMember(sceneId, selfId, i)
			if mems[i] == -1 then
				return
			end
			if IsHaveMission(sceneId,mems[i],4021) > 0 then
				x000180_MsgBox( sceneId, selfId, targetId, "  你队伍成员中有人有漕运\货舱T読 身,我们驿站不能为你提供传送服务." )
				return
			end
		end
	end

	--漕运相关
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x000180_MsgBox( sceneId, selfId, targetId, "  你有漕运\货舱T読 身,我们驿站不能为你提供传送服务." )
		return
	end

	--顺利传送
	local	arg	= GetNumText()
	local	mp
	local	i		= 0
	local	id	= LuaFnGetMenPai( sceneId, selfId )
	if arg == 1000 then		--Tr� v排�
		if id < 0 or id >= 9 then
			x000180_MsgBox( sceneId, selfId, targetId, "  你还没有加入任何门派!" )
		else
			mp	= x000180_GetMPInfo( id )
			if mp ~= nil then
				CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4], 10 )
			end
		end
		return
	end
	if arg == 1001 then		--夙阳镇
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 559, 158, 115, 10 )
		return
	end
	if arg == 1002 then		--通天塔塔顶
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 548, 256,272, 10 )
		return
	end
	if arg == 1003 then		--通天塔三层
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 547, 258,314, 10 )
		return
	end
	if arg == 1006 then		--通天塔二层
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 546, 255, 367, 10 )
		return
	end
	if arg == 1007 then		--通天塔m祎 层
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 545, 255, 380, 10 )
		return
	end
	if arg == 1008 then		--通天塔地宫
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 544, 255, 384, 10 )
		return
	end
	if arg == 1009 then		--Th鷆 H� C� Tr
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 422, 200, 211, 10 )
		return
	end
	if arg == 1010 then		--昆仑福地
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 421, 93, 36, 10 )
		return
	end
	if arg == 1012 then		--钧天王陵
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 553, 48, 48, 10 )
		return
	end
	if arg == 1013 then		--兵圣奇阵
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 543, 125, 139, 10 )
		return
	end
	if arg == 1014 then		--慕容山庄
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 535, 30, 134, 10 )
		return
	end
	if arg == 1015 then		--藏书水阁
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 527, 16, 42, 10 )
		return
	end
	if arg == 1016 then		--林海溪谷
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 552, 220, 196, 10 )
		return
	end
	if arg == 1017 then		--漠南清原
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 556, 211, 207, 10 )
		return
	end
	if arg == 1018 then		--忘川花海
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 557, 43, 45, 10 )
		return
	end
	if arg == 1019 then		--天岐南淮
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 558, 41, 212, 10 )
		return
	end
	if arg == 1003 then		--姓i L�1
		--如果玩家就T読 姓i L�1则不传送
		if sceneId == 2 then
			x000180_MsgBox( sceneId, selfId, targetId, "  你已经T読 姓i L�." )
		else
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 241, 138 )
		end
		return
	end
	if arg == 1004 then		--姓i L�2
		--如果玩家就T読 姓i L�2则不传送
		if sceneId == 71 then
			x000180_MsgBox( sceneId, selfId, targetId, "  你已经T読 姓i L�2了." )
		else
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 71, 241, 138 )
		end
		return
	end
	if arg == 1005 then		--姓i L�3
		--如果玩家就T読 姓i L�3则不传送
		if sceneId == 72 then
			x000180_MsgBox( sceneId, selfId, targetId, "  你已经T読 姓i L�3了." )
		else
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 72, 241, 138 )
		end
		return
	end
	for i, mp in x000180_g_mpInfo do
		if arg == i then
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4], 10 )
			return
		end
	end

	if GetNumText() == 2000 then		--
		BeginEvent( sceneId )
			AddText( sceneId, "#{GOTO_DUNHUANF_SONGSHAN}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

		return
	end

end

--**********************************
--根据门派ID获取门派信息
--**********************************
function x000180_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x000180_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--对话窗口信息提示
--**********************************
function x000180_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end