-- created by 左春伟

x400960_g_ScriptId = 400960; --脚本号
x400960_g_name	="车传信";

--传送目标
x400960_g_transfer_target =
{
	[1] = {x = 216, z = 340, scene_num = 0}, 		--L誧 D呓ng
	[2] = {x = 330, z = 248, scene_num = 1}, 		--T� Ch鈛
	[3] = {x = 378, z = 187, scene_num = 2}, 		--姓i L�
	[4] = {x = 294, z = 90, scene_num = 186}, 	--L鈛 Lan
	[5] = {x = 186, z = 43, scene_num = 28},		--Nam H鋓
	[6] = {x = 158, z = 113, scene_num = 22}, 	--Tr叨ng B誧h S絥
}

-- 收费金额
x400960_g_transfer_cost = 5000; -- 50银交子

--**********************************
--事件交互入口
--**********************************
function x400960_OnDefaultEvent( sceneId, selfId, targetId )
	x400960_UpdateEventList( sceneId, selfId, targetId );
end

--**********************************
--事件列表
--**********************************
function x400960_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent(sceneId);
		AddText( sceneId, "#{SFCS_80828_02}" );
		AddNumText(sceneId, x400960_g_ScriptId, "L誧 D呓ng", 9, 1);
		AddNumText(sceneId, x400960_g_ScriptId, "T� Ch鈛", 9, 2);
		AddNumText(sceneId, x400960_g_ScriptId, "姓i L�", 9, 3);
		AddNumText(sceneId, x400960_g_ScriptId, "L鈛 Lan", 9, 4);
		AddNumText(sceneId, x400960_g_ScriptId, "Nam H鋓", 9, 5);
		AddNumText(sceneId, x400960_g_ScriptId, "Tr叨ng B誧h S絥", 9, 6);
	EndEvent()
	DispatchEventList(sceneId, selfId, targetId);
end

--**********************************
--事件列表选中m祎 项
--**********************************
function x400960_OnEventRequest( sceneId, selfId, targetId, eventId )
	--跑商相关
	if GetItemCount(sceneId, selfId, 40002000)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "  Xin th� l瞚 tr阯 ng叨i c醕 h� 餫ng gi� ng鈔 phi猽 ta kh鬾g th� gi鷓 疬㧟." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	--队伍相关
	if GetTeamId(sceneId,selfId)>=0 and 
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		BeginEvent( sceneId )
			AddText( sceneId, "  Ng呓i 餫ng � trong tr課g th醝 T鄌 v, kh鬾g th� ti猲 v� c鋘h tr呔c!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	--漕运相关
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		BeginEvent(sceneId)
			AddText(sceneId, "  Ng呓i 餫ng � trong tr課g th醝 T鄌 v, kh鬾g th� ti猲 v� c鋘h tr呔c.")
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId)
		return
	end
	--
	local id = GetNumText();
	if id >=1 and id <= 6 then
		BeginEvent(sceneId)
			--"本次传送收取50银交子,你要传送吗？"
			AddText(sceneId, "#{FFCS_081210_1}")
			if id == 1 then	
				AddNumText(sceneId, x400960_g_ScriptId, "X醕 nh", 0, 11);
			elseif id == 2 then
				AddNumText(sceneId, x400960_g_ScriptId, "X醕 nh", 0, 21);
			elseif id == 3 then
				AddNumText(sceneId, x400960_g_ScriptId, "X醕 nh", 0, 31);
			elseif id == 4 then
				AddNumText(sceneId, x400960_g_ScriptId, "X醕 nh", 0, 41);
			elseif id == 5 then
				AddNumText(sceneId, x400960_g_ScriptId, "X醕 nh", 0, 51);
			elseif id == 6 then
				AddNumText(sceneId, x400960_g_ScriptId, "X醕 nh", 0, 61);
			end
			AddNumText(sceneId, x400960_g_ScriptId, "H鼀 b�", 0, 100);
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId);
	elseif id == 100 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )		
	else
		local index = floor(id/10);
		--L鈛 Lan75级限制
		if index == 4 then
			if GetLevel(sceneId, selfId) < 75 then
				BeginEvent(sceneId)
					AddText(sceneId, "  C 鸬 ch遖 瘘 75 kh鬾g th� d竎h chuy琻.")
				EndEvent()
				DispatchEventList(sceneId, selfId, targetId)
				return
			end
			--同骑带小号限制
			if LuaFnGetDRideFlag(sceneId, selfId) == 1 then
				local objId = LuaFnGetDRideTargetID(sceneId, selfId);
				if objId ~= -1 and GetLevel(sceneId, objId) < 75 then
					BeginEvent(sceneId)
						AddText(sceneId, "#{SRCS_090203_1}")
					EndEvent()
					DispatchEventList(sceneId, selfId, targetId)
					return					
				end
			end
		end
		--[tx44121]bug这里没有设置最低级别,导致低级别可通过双骑乘进高级别场景
		local minLevel = 10
		if index == 4 then
			minLevel = 75
		end
		if LuaFnGetDRideFlag(sceneId, selfId) == 1 then
			local objId = LuaFnGetDRideTargetID(sceneId, selfId);
			if objId ~= -1 and GetLevel(sceneId, objId) < minLevel then
				local Tip = format("#{CQTS_90227_1}%d#{CQTS_90227_2}", minLevel)
				x400960_NotifyFailTips( sceneId, selfId, targetId, Tip )
				return					
			end
		end	
		--[/tx44121]
				
		local pos_x = x400960_g_transfer_target[index]["x"];
		local pos_z = x400960_g_transfer_target[index]["z"];
		local scene_num = x400960_g_transfer_target[index]["scene_num"];			
			
		local nMoneyJZ = GetMoneyJZ (sceneId, selfId)
		local nMoney = GetMoney (sceneId, selfId)

		--钱够吗？
		if (nMoneyJZ + nMoney) >= x400960_g_transfer_cost then 
				
			-- 收费
			-- 使用带优先级to� 鸬 金钱消耗函数
			if LuaFnCostMoneyWithPriority (sceneId, selfId, x400960_g_transfer_cost) == -1 then
				BeginEvent(sceneId)
					AddText(sceneId, "Thu l� ph� kh鬾g th鄋h c鬾g!");
				EndEvent()
				DispatchMissionTips(sceneId, selfId)
				return
			else
				CallScriptFunction((400900), "TransferFunc",sceneId, selfId, scene_num, pos_x, pos_z, minLevel); 
			end

		-- 钱不够
		else
			BeginEvent(sceneId)
				AddText(sceneId, "Kh鬾g 瘘 ng鈔 l唼ng");
			EndEvent()
			DispatchEventList(sceneId, selfId, targetId)
			return
			
		end
	end	
end
--**********************************
-- 屏幕中间信息提示
--**********************************
function x400960_NotifyFailTips( sceneId, selfId, targetId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
