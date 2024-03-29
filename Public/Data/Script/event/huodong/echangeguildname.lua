--帮会更名

--脚本号
x808009_g_ScriptId	= 808009

x808009_g_Key				=
{
	["ChgG"]					= 200,	--我要改帮会T阯
	["ChgG_Y"]				= 201,	--我要改帮会T阯,确认
}

--**********************************
--事件交互入口
--**********************************
function x808009_OnDefaultEvent( sceneId, selfId, targetId )

	--喧ng否处于无法执行逻辑to� 鸬 状态
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return 0
	end
	
	local	key	= GetNumText()
	if key == x808009_g_Key["ChgG"] then
		BeginEvent( sceneId )
			AddText( sceneId, "#{ChangeName_ChgG}" )
			AddNumText( sceneId, x808009_g_ScriptId, "Duy畉", 6, x808009_g_Key["ChgG_Y"] )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif key == x808009_g_Key["ChgG_Y"] then
		if x808009_IsCanChangeGuildName( sceneId, selfId ) == 1 then
			BeginUICommand( sceneId )
				UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 5424 )
		end
	end
	
end

--**********************************
--事件列表
--**********************************
function x808009_OnEnumerate( sceneId, selfId, targetId )
	
	AddNumText( sceneId, x808009_g_ScriptId, "Ta mu痭 鸨i t阯 bang h礽", 6, x808009_g_Key["ChgG"] )

end

--**********************************
--喧ng否有资格尚鷑g氚锘岣�
--**********************************
function x808009_IsCanChangeGuildName( sceneId, selfId )

	--喧ng否处于无法执行逻辑to� 鸬 状态
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return 0
	end

	if GetGuildLevel( sceneId, selfId ) < 0 then
		x808009_MsgBox( sceneId, selfId, "C醕 h� v鏽 ch遖 m秈 bang h礽" )
		return 0
	end
	if GetGuildPos( sceneId, selfId ) ~= GUILD_POSITION_CHIEFTAIN then
		x808009_MsgBox( sceneId, selfId, "Ch� c� bang ch� m緄 c� th� 鸨i t阯 bang h礽" )
		return 0
	end
	local	GuildName	= LuaFnGetGuildName( sceneId, selfId )
	local	i, _			= strfind( GuildName, "*" )
	if i == nil then
		x808009_MsgBox( sceneId, selfId, "C醕 h� kh鬾g ph鋓 l� ng叨i di d鈔, ho c醕 h� 疸 t譶g s豠 鸨i t阯" )
		return 0
	end
	
	return 1

end

--**********************************
--帮籐inh喧ng敫疤跫觳�
--**********************************
function x808009_CallBackChangeGuildNameBefore( sceneId, selfId )

	if x808009_IsCanChangeGuildName( sceneId, selfId ) == 0 then
		return 0
	end

	return 1

end

--**********************************
--帮籐inh喧ng敫蠼峁鸗r� v�
--**********************************
function x808009_CallBackChangeGuildNameAfter( sceneId, selfId, nRetType )

	--喧ng否处于无法执行逻辑to� 鸬 状态
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return 0
	end

	--更名消息Tr� v嘈�
	--enum	CHANGE_NAME_RESULT
	--{
	--	CHGNAME_RE_OK					= 0 ,	// 更名成功
	--	CHGNAME_RE_ERROR ,					// 更名th b読
	--	CHGNAME_RE_DBBUSY ,					// DB压力过大,请重新尝试
	--	CHGNAME_RE_NAMEERROR ,			// 不可Ti猵 th鴗o� 鸬 新名称
	--	CHGNAME_RE_REPEATED ,				// 名称重复
	--};
	if nRetType == 1 then
		x808009_MsgBox( sceneId, selfId, "S豠 鸨i th b読" )
	elseif nRetType == 2 then
		x808009_MsgBox( sceneId, selfId, "DB 醦 l馽 qu� cao, xin h銀 th� l読 t� 馥u" )
	elseif nRetType == 3 then
		x808009_MsgBox( sceneId, selfId, "Kh鬾g ch nh t阯 m緄" )
	elseif nRetType == 4 then
		x808009_MsgBox( sceneId, selfId, "Tr� v� t阯 c�" )
	else
		x808009_MsgBox( sceneId, selfId, "Xin ch鷆 m譶g, t阯 bang h礽 c黙 c醕 h� s豠 鸨i th鄋h c鬾g!" )
	end
	return 1

end

--**********************************
--醒目提示
--**********************************
function x808009_MsgBox( sceneId, selfId, str )

	if str == nil then
		return
	end

	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
