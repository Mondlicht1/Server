--Thi猽 L鈓NPC
--洪彩云
--学习Thi猽 L鈓轻功

x009018_g_scriptId = 009018

--**********************************
--事件交互入口
--**********************************
function x009018_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ta c� th� truy玭 th� cho khinh c鬾g 穑c bi畉 c黙 b眓 ph醝, c� 餴玼 c t痭 50 #-03")
		AddNumText(sceneId, x009018_g_scriptId, "H鱟 khinh c鬾g Thi猽 L鈓",12,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件列表选中m祎 项
--**********************************
function x009018_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText()==0	then
		
		if GetMenPai(sceneId, selfId) == 0 then
			if	HaveSkill( sceneId, selfId, 23)<0	then
				-- 检查钱
				if GetMoney(sceneId, selfId)+GetMoneyJZ(sceneId, selfId) < STUDY_MENPAI_QINGGONG_SPEND  then
					BeginEvent(sceneId)
						AddText(sceneId,"  Ng鈔 l唼ng tr阯 ng叨i c醕 h� kh鬾g 瘘 50 #-03, v� v kh鬾g th� h鱟 khinh c鬾g b眓 m鬾")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
					return
				end
				-- 扣钱
				LuaFnCostMoneyWithPriority(sceneId,selfId,STUDY_MENPAI_QINGGONG_SPEND)

				AddSkill( sceneId, selfId, 23 )
				DelSkill( sceneId, selfId, 34 )
				BeginEvent(sceneId)
					AddText(sceneId,"  Ch鷆 m譶g ng呓i 疸 h鱟 疬㧟 khinh c鬾g c黙 b眓 m鬾, hy v鱪g ng呓i ti猵 t鴆 n� l馽 瓞 ph醫 huy danh ti猲g b眓 m鬾.")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			else
				BeginEvent(sceneId)
					AddText(sceneId,"Ch苙g ph鋓 ng呓i 疸 h鱟 r癷 sao?")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end
		elseif GetMenPai(sceneId, selfId) == 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"H鱟 khinh c鬾g c黙 Thi猽 L鈓 tr呔c ti阯 c gia nh ph醝 Thi猽 L鈓!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Ng呓i kh鬾g ph鋓 l� 甬 t� c黙 b眓 m鬾, ta kh鬾g th� d誽 ng呓i khinh c鬾g c黙 Thi猽 L鈓")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	end	
end

--**********************************
--Ti猵 th薔PCto� 鸬 任务
--**********************************
function x009018_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--拒绝此NPCto� 鸬 任务
--**********************************
function x009018_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后,要Tr� v玁PCto� 鸬 事件列表
end

--**********************************
--继续(已经接了任务)
--**********************************
function x009018_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--提交已做完to� 鸬 任务
--**********************************
function x009018_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
end

--**********************************
--死亡事件
--**********************************
function x009018_OnDie( sceneId, selfId, killerId )
end
