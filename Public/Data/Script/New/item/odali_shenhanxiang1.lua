--苏州NPC
--每日赠点领取员
--一般
x002095_g_ScriptId = 002095


--**********************************
--事件交互入口
--**********************************
function x002095_OnDefaultEvent( sceneId, selfId,targetId )
      local 	nam	= LuaFnGetName( sceneId, selfId )
	BeginEvent(sceneId)

		AddText(sceneId,"  #b#u#e0000ffCh鄌 m譶g b課 皙n v緄 Thi阯 Long B醫 B�. !#W")
			--AddNumText(sceneId, x002095_g_scriptId, "H癷 ph鴆 kh� huy猼", 5, 106)
             AddNumText( sceneId, x002095_g_ScriptId, "#gFF8C00Nh T鈓 Ph醦 150",8,14 )
			 --AddNumText(sceneId,x990001_g_ScriptId,"Nh y猽 quy猼 ph醝 M� Dung",1,325)
              AddNumText( sceneId, x002095_g_ScriptId, "#gFF8C00N鈔g level t� 149 l阯 150",8,3333 )
              --AddNumText( sceneId, x000146_g_ScriptId, "#cff0000Nh danh hi畊",5,1009 )
              AddNumText( sceneId, x002095_g_ScriptId, "#b#K#c993366Nh V鄋g",5,10 )
	       --AddNumText( sceneId, x002093_g_ScriptId, "#b#GNh hi畊 裯g tr鵱g l鈛",5,101 )
              --AddNumText( sceneId, x002095_g_scriptId, "#42#gffff00Nh 羗 Kh� - V� H皀#42", 5, 5252)
              --AddNumText( sceneId, x002095_g_ScriptId, "#b#YNh Pet",5,12 )
              AddNumText( sceneId, x000146_g_ScriptId, "#gFF7F00Nh 5000000k KNB",5,13 )
			  --AddNumText( sceneId, x000146_g_ScriptId, "#b#GNh 300000 DMP",5,8888 )
              AddNumText( sceneId, x002093_g_ScriptId, "#gFF7F00Nh buff",8,100 )
              --AddNumText( sceneId, x002095_g_ScriptId, "#b#GNh 餴琺 tg",5,6666 )
              AddNumText( sceneId, x002095_g_scriptId, "#b#YXem S� L CS", 2, 4242)
             AddNumText( sceneId, x002095_g_ScriptId, "#ea00000#bChuy琻 sinh",6,5555 )
              AddNumText( sceneId, x002095_g_ScriptId, "#GS豠 l瞚 kinh nghi甿 <0>",5,11 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end


function x002095_OnEventRequest( sceneId, selfId, targetId, eventId )
local	key	= GetNumText()
         if key  == 100 then
        
                
               LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 30160, 0)
                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 30150, 0)
                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 30119, 0) 
               LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 30134, 0)
                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 30170, 0) 
                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 30180, 0) 
                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 30186, 0) 
                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 30005, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId,  8051, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId,  8052, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId,  50, 0)
                BeginEvent(sceneId)
	        AddText(sceneId,"Nh BUFF th鄋h c鬾g !")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
                end
	 if key == 10 then
		local result =	AddMoney( sceneId, selfId, 100000000 )
			BeginEvent( sceneId )
				AddText( sceneId, "B課 疸 nh 疬㧟 10000 V鄋g" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
	end
	 if key  == 101 then
                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 10088, 0)
                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 0, 0)
              
                BeginEvent(sceneId)
	        AddText(sceneId,"#GNh Hi畊 裯g Th鄋h c鬾g!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
              BroadMsgByChatPipe( sceneId, selfId, "#GCh鷆 m譶g "..nam.." 疸 nh hi畊 裯g Tr鵱g L鈛 th鄋h c鬾g!", 4 )
                end
        if key  == 6666 then
   ZengDian(sceneId,selfId,targetId,1,5000000)

		BeginEvent(sceneId)
		AddText(sceneId,"Nh th鄋h c鬾g 5000000 餴琺 tg.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
end

--**
	if key == 325 then --Nh Y猽 quy猼 M� Dung Gia
		BeginAddItem(sceneId)
		AddItem(sceneId,30308099,1)--YQ 35 - L馽 Ch� Ti玭 Th韈h
		AddItem(sceneId,30308097,1)--YQ 45 - Ph� Thi阯 Th裞
		--AddItem(sceneId,30308096,1)--YQ 65 - H骯 Kh� Th裞
		AddItem(sceneId,30308100,1)--YQ 80 - L錸g Thi阯 Th裞
		EndAddItem(sceneId,selfId)
		AddItemListToHuman(sceneId,selfId)
		
		BeginEvent(sceneId)
			AddText(sceneId,"Ch鷆 m譶g c醕 h� nh 疬㧟 1 b� y猽 quy猼 M� Dung Gia.")
			x002095_NotifyFailTips(sceneId, selfId, "Nh 疬㧟 1 b� y猽 quy猼 M� Dung Gia.")
		EndEvent(sceneId)
		
		DispatchEventList(sceneId,selfId,targetId)
	end
if key  == 106 then
		x002095_FullRestore(sceneId, selfId)
end
if key  == 5252 then
			BeginAddItem(sceneId)
			AddItem( sceneId,10155005,1)
                     AddItem( sceneId,10156005,1)
                     EndAddItem(sceneId,selfId)
		       AddItemListToHuman(sceneId,selfId)
		       BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:秀 nh th鄋h c鬾g", 0)
end
if key  == 11 then
	x002095_Level12(sceneId, selfId, targetId)
end
if key == 13 then
		local result =	YuanBao(sceneId,selfId,targetId,1,30000000)
			BeginEvent( sceneId )
				AddText( sceneId, "B課 疸 nh 疬㧟 30000000 KNB" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
	end
if key == 8888 then
		local result =	SetHumanMenpaiPoint(sceneId,selfId,30000000)
			BeginEvent( sceneId )
				AddText( sceneId, "B課 疸 nh 疬㧟 30000000 DMP" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
	end
if key == 18 then

                LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 30150, 0)
		BeginEvent(sceneId)
		AddText(sceneId,"Nh BUFF th鄋h c鬾g.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
end
if key  == 4242 then
		num = GetMissionData(sceneId,selfId,MD_ZHUANSHENG)
		BeginEvent(sceneId)
			AddText(sceneId,"S� l #GChuy琻 Sinh#W c黙 c醕 ha t韓h t緄 hi畁 tai l�: #G"..num.." l#W!")
			--AddText(sceneId,"T痠 ?a c?n l?i "..(200-num).." l #Gc鋓 l?o ho鄋 ?皀g#W n鎍!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	
	end
if key == 3333 then
		BeginEvent( sceneId )
		AddText( sceneId, "#gF4F4F4B課 mu痭 n鈔g c t� 149 l阯 150 ?" )
		AddNumText(sceneId, x181003_g_scriptId, "#gF4F4F4C�, t鬷 mu痭.", 7, 4444 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
end
if key == 4444 then
		x002095_Shengji( sceneId, selfId, targetId )
end
if key == 5555 then --chuy琻 sinh
		BeginEvent( sceneId )
		AddText( sceneId, "#gF4F4F4B課 c� ch l� mu痭 chuy琻 sinh ?#r#cFF0000T� l chuy琻 sinh 1->100 : Y陁 c c 鸬 #G130#r#cFF0000T� l chuy琻 sinh 100->200 : Y陁 c c 鸬 #G149#r#YSau khi chuy琻 sinh gi� nguy阯 t c�. Sau khi chuy琻 sinh c 鸬 tr� v� #G30." )
		AddNumText(sceneId, x002095_g_scriptId, "#gF4F4F4C�, t鬷 mu痭 chuy琻 sinh", 6, 5566 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
end
if key == 5566 then
		x002095_ZhuanSheng( sceneId, selfId, targetId )
end
if key == 1009 then
		LuaFnAwardSpouseTitle( sceneId, selfId, "#b#eaf6666Thi阯 Long B醫 B� Linh Ki猰" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GXin ch鷆 m譶g, t� gi� c醕 h� ch韓h th裞 l� th鄋h vi阯 c黙 Thi阯 Long B醫 B� Linh Ki猰." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
end
if key == 12 then

BeginEvent(sceneId)
AddText( sceneId, "C醕 h� h銀 ch鱪 tr鈔 th� b課 mu痭 Ch鱪 瘊ng tr鈔 th� c� th� d鵱g 疬㧟 nh� b課. L遳 �: ch� 疬㧟 nh 1 l !" )
		--AddNumText( sceneId, x002095_g_ScriptId, "#c0000ccTr鈔 th� h癷 xu鈔 餫n",5,50 )
		--AddNumText( sceneId, x002095_g_ScriptId, "#c0000ccTr鈔 th� h癷 xu鈔 餫n",5,51 )
		--AddNumText( sceneId, x002095_g_ScriptId, "#b#YTr鈔 th� h癷 xu鈔 餫n",5,52 )
		AddNumText( sceneId, x002095_g_ScriptId, "#c0000ccB� D馽 衖瑄 Bi猲 d�",5,53 )
		AddNumText( sceneId, x002095_g_ScriptId, "#c0000ccC鵱g K� Bi猲 D�",5,54 )
		--AddNumText( sceneId, x002095_g_ScriptId, "#b#GTh H鵱g Mi陁",5,55 )
		--AddNumText( sceneId, x002095_g_ScriptId, "#b#GD� Tr�",5,56 )
		AddNumText( sceneId, x002095_g_ScriptId, "#b#GC鬾g H皀 膎h T唼ng",5,57 )
		AddNumText( sceneId, x002095_g_ScriptId, "#b#GH瞡 Giang Long",5,58 )
EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
end
if key == 50 then
		local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET)
		if index == 1 then
			BeginEvent(sceneId)
			AddText(sceneId, "B課 疸 nh th叻ng.#G Kh鬾g th� nh n鎍.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId) 
		return 0
		end
		
		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, 9110, 1, 0);
		TryRecieveItem( sceneId, selfId, 30607001, 1 )
		if createPetRet and createPetRet == 1 then
			SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET, 1 )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#GXin ch鷆 m譶g "..nam.." 疸 nh th鄋h c鬾g PET ", 4 )
			str= "#YB課 疸 c� #WBOSS PET. "
			BeginEvent( sceneId )
			AddText( sceneId, str )
			EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
		end
	end
if key == 51 then
		local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET)
		if index == 1 then
			BeginEvent(sceneId)
			AddText(sceneId, "B課 疸 nh th叻ng.#G Kh鬾g th� nh n鎍.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId) 
		return 0
		end
		
		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, 9120, 1, 0);
		TryRecieveItem( sceneId, selfId, 30607001, 1 )
		if createPetRet and createPetRet == 1 then
			SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET, 1 )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#GXin ch鷆 m譶g "..nam.." 疸 nh th鄋h c鬾g PET", 4 )
			str= "#YB課 疸 c� #WBOSS PET."
			BeginEvent( sceneId )
			AddText( sceneId, str )
			EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
		end
	end
if key == 52 then
		local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET)
		if index == 1 then
			BeginEvent(sceneId)
			AddText(sceneId, "B課 疸 nh th叻ng.#G Kh鬾g th� nh n鎍.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId) 
		return 0
		end
		
		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, 9130, 1, 0);
		TryRecieveItem( sceneId, selfId, 30607001, 1 )
		if createPetRet and createPetRet == 1 then
			SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET, 1 )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#GXin ch鷆 m譶g "..nam.." 疸 nh th鄋h c鬾g PET", 4 )
			str= "#YB課 疸 c� #WBOSS PET."
			BeginEvent( sceneId )
			AddText( sceneId, str )
			EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
		end
	end
if key == 53 then
		local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET)
		if index == 1 then
			BeginEvent(sceneId)
			AddText(sceneId, "B課 疸 nh th叻ng.#G Kh鬾g th� nh n鎍.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId) 
		return 0
		end
		
		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, 9100, 1, 0);
		if createPetRet and createPetRet == 1 then
			SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET, 1 )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#GXin ch鷆 m譶g "..nam.." 疸 nh th鄋h c鬾g PET", 4 )
			str= "#YB課 疸 c� #WBOSS PET."
			BeginEvent( sceneId )
			AddText( sceneId, str )
			EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
		end
	end
	if key == 54 then
				local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET)
		if index == 1 then
			BeginEvent(sceneId)
			AddText(sceneId, "B課 疸 nh th叻ng.#G Kh鬾g th� nh n鎍.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId) 
		return 0
		end
		
		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, 22068, 1, 0);
		if createPetRet and createPetRet == 1 then
			SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET, 1 )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#G恭喜玩家 #B"..nam.."#G成功领取超级宠物：95级变异穷奇。", 4 )
			str= "#Y你获得了#W超级宠物：95级变异穷奇。"
			BeginEvent( sceneId )
			AddText( sceneId, str )
			EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
		end
	end
	if key == 55 then
				local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET)
		if index == 1 then
			BeginEvent(sceneId)
			AddText(sceneId, "B課 疸 nh th叻ng.#G Kh鬾g th� nh n鎍.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId) 
		return 0
		end
			
		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, 6206, 1, 0);
		if createPetRet and createPetRet == 1 then
			SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET, 1 )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#GCh鷆 m譶g "..nam.." 疸 nh 疬㧟 1 Th H鵱g Mi陁", 4 )
			str= "#YB課 疸 c� #WBOSS PET."
			BeginEvent( sceneId )
			AddText( sceneId, str )
			EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
		end
	end
if key == 56 then
		local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET)
		if index == 1 then
			BeginEvent(sceneId)
			AddText(sceneId, "B課 疸 nh th叻ng.#G Kh鬾g th� nh n鎍.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId) 
		return 0
		end
		
		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, 33816, 1, 0);
		if createPetRet and createPetRet == 1 then
			SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET, 1 )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#GCh鷆 m譶g "..nam.." 疸 nh 疬㧟 1 D� Tr� 啸u M鴆", 4 )
			str= "#YB課 疸 c�#WPet Boss"
			BeginEvent( sceneId )
			AddText( sceneId, str )
			EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
		end
	end
if key == 57 then
		local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET)
		if index == 1 then
			BeginEvent(sceneId)
			AddText(sceneId, "B課 疸 nh th叻ng.#G Kh鬾g th� nh n鎍.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId) 
		return 0
		end
		
		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, 880, 1, 0);
		if createPetRet and createPetRet == 1 then
			SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET, 1 )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#GCh鷆 m譶g "..nam.." 疸 nh 疬㧟 1 C鬾g H皀 膎h T唼ng", 4 )
			str= "#YC醕 h� 疸 nh r癷 !"
			BeginEvent( sceneId )
			AddText( sceneId, str )
			EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
		end
	end
if key == 58 then
		local index =	GetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET)
		if index == 1 then
			BeginEvent(sceneId)
			AddText(sceneId, "B課 疸 nh th叻ng.#G Kh鬾g th� nh n鎍.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId) 
		return 0
		end
		
		local createPetRet, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, 884, 1, 0);
		if createPetRet and createPetRet == 1 then
			SetMissionFlag( sceneId, selfId, MF_LINGQUYUANBAOPET, 1 )
			local	nam	= LuaFnGetName( sceneId, selfId )
			BroadMsgByChatPipe( sceneId, selfId, "#GCh鷆 m譶g "..nam.." 疸 nh 疬㧟 1 H瞡 Giang Long", 4 )
			str= "#YB課 疸 nh r癷 !"
			BeginEvent( sceneId )
			AddText( sceneId, str )
			EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
		end
	end
	if key == 13 then
		local result =	YuanBao(sceneId,selfId,targetId,1,300000)
			BeginEvent( sceneId )
				AddText( sceneId, "B課 疸 nh th鄋h c鬾g 300000 KNB" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
	end
		if key == 14 then
	BeginEvent( sceneId )
		AddText( sceneId, "H銀 ch鱪 m鬾 ph醝 b課 mu痭 gia nh. #r#GSau khi gia nh m鬾 ph醝 b課 s� 疬㧟 t鈓 ph醦 150 bao g癿 c� B� T竎h. #r#YL遳 �: N猽 c醕 h� 疸 chuy琻 sinh r癷 m� s� d鴑g ch裞 n錸g n鄖 s� 餴琺 ti玬 n錸g s� m." )
		--AddNumText(sceneId,x990001_g_ScriptId,"#YM� Dung",5,29)
		AddNumText( sceneId, x002095_g_ScriptId, "#GTinh T鷆",5,20 )
		AddNumText( sceneId, x002095_g_ScriptId, "#GTi陁 Dao",5,21 )
		AddNumText( sceneId, x002095_g_ScriptId, "#GThi猽 L鈓",5,22 )
		AddNumText( sceneId, x002095_g_ScriptId, "#GThi阯 S絥",5,23 )
		AddNumText( sceneId, x002095_g_ScriptId, "#GThi阯 Long",5,24 )
		AddNumText( sceneId, x002095_g_ScriptId, "#GNga My",5,25 )
		AddNumText( sceneId, x002095_g_ScriptId, "#GV� 衋ng",5,26 )
		AddNumText( sceneId, x002095_g_ScriptId, "#GMinh Gi醥",5,27 )
		AddNumText( sceneId, x002095_g_ScriptId, "#GC醝 Bang",5,28 )
    	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	end
	--**
	if key == 29 then --M� Dung
		--Gia nh m鬾 ph醝
		LuaFnJoinMenpai(sceneId,selfId, targetId, 9) --ID 9 l� M� Dung
		--T鈓 ph醦
		LuaFnSetXinFaLevel(sceneId,selfId,64,150)
		LuaFnSetXinFaLevel(sceneId,selfId,65,150)
		LuaFnSetXinFaLevel(sceneId,selfId,66,150)
		LuaFnSetXinFaLevel(sceneId,selfId,67,150)
		LuaFnSetXinFaLevel(sceneId,selfId,68,150)
		LuaFnSetXinFaLevel(sceneId,selfId,69,150)
		LuaFnSetXinFaLevel(sceneId,selfId,70,150)
		LuaFnSetXinFaLevel(sceneId,selfId,71,150)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)
		--Th錸g c
		--SetLevel(sceneId,selfId,120)
		
		BeginEvent(sceneId)
			AddText(sceneId,"Ch鷆 m譶g ng呓i 疸 l� 甬 t� M� Dung Gia, nh th鄋h c鬾g t鈓 ph醦 150 m鬾 ph醝 鸢ng th秈 th錸g l阯 c 150...")
		EndEvent(sceneId)
			
		DispatchEventList(sceneId,selfId,targetId )
	end
	if key == 20 then
		LuaFnJoinMenpai(sceneId, selfId, targetId, 5)
		LuaFnSetXinFaLevel(sceneId,selfId,31,150)
		LuaFnSetXinFaLevel(sceneId,selfId,32,150)
		LuaFnSetXinFaLevel(sceneId,selfId,33,150)
		LuaFnSetXinFaLevel(sceneId,selfId,34,150)
		LuaFnSetXinFaLevel(sceneId,selfId,35,150)
		LuaFnSetXinFaLevel(sceneId,selfId,36,150)
		LuaFnSetXinFaLevel(sceneId,selfId,60,150)
		LuaFnSetXinFaLevel(sceneId,selfId,77,150)
              local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#ea00000#GCh鷆 m譶g "..nam.." 疸 nh t鈓 ph醦 150 ph醝 Tinh T鷆 !", 4 )
		 BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#GB課 疸 nh BUFF t鈓 ph醦 th鄋h c鬾g. Ch鷆 b課 ch絠 vui v� !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 21 then
		LuaFnJoinMenpai(sceneId, selfId, targetId, 8)
		LuaFnSetXinFaLevel(sceneId,selfId,49,150)
		LuaFnSetXinFaLevel(sceneId,selfId,50,150)
		LuaFnSetXinFaLevel(sceneId,selfId,51,150)
		LuaFnSetXinFaLevel(sceneId,selfId,52,150)
		LuaFnSetXinFaLevel(sceneId,selfId,53,150)
		LuaFnSetXinFaLevel(sceneId,selfId,54,150)
		LuaFnSetXinFaLevel(sceneId,selfId,63,150)
		LuaFnSetXinFaLevel(sceneId,selfId,80,150)
              local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#ea00000#GCh鷆 m譶g "..nam.." 疸 nh t鈓 ph醦 150 ph醝 Ti陁 Dao !", 4 )
		 BroadMsgByChatPipe(sceneId, selfId, strText, 4)

		SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#GB課 疸 nh BUFF t鈓 ph醦 th鄋h c鬾g. Ch鷆 b課 ch絠 vui v� !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 22 then
		LuaFnJoinMenpai(sceneId, selfId, targetId, 0)
		LuaFnSetXinFaLevel(sceneId,selfId,1,150)
		LuaFnSetXinFaLevel(sceneId,selfId,2,150)
		LuaFnSetXinFaLevel(sceneId,selfId,3,150)
		LuaFnSetXinFaLevel(sceneId,selfId,4,150)
		LuaFnSetXinFaLevel(sceneId,selfId,5,150)
		LuaFnSetXinFaLevel(sceneId,selfId,6,150)
		LuaFnSetXinFaLevel(sceneId,selfId,55,150)
		LuaFnSetXinFaLevel(sceneId,selfId,72,150)
              local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#ea00000#GCh鷆 m譶g "..nam.." 疸 nh t鈓 ph醦 150 ph醝 Thi猽 L鈓 !", 4 )
		SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#GB課 疸 nh BUFF t鈓 ph醦 th鄋h c鬾g. Ch鷆 b課 ch絠 vui v� !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 23 then
		LuaFnJoinMenpai(sceneId, selfId, targetId, 7)
		LuaFnSetXinFaLevel(sceneId,selfId,43,150)
		LuaFnSetXinFaLevel(sceneId,selfId,44,150)
		LuaFnSetXinFaLevel(sceneId,selfId,45,150)
		LuaFnSetXinFaLevel(sceneId,selfId,46,150)
		LuaFnSetXinFaLevel(sceneId,selfId,47,150)
		LuaFnSetXinFaLevel(sceneId,selfId,48,150)
		LuaFnSetXinFaLevel(sceneId,selfId,62,150)
		LuaFnSetXinFaLevel(sceneId,selfId,79,150)
              local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#ea00000#GCh鷆 m譶g "..nam.." 疸 nh t鈓 ph醦 150 ph醝 Thi阯 S絥 !", 4 )
		 BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#GB課 疸 nh BUFF t鈓 ph醦 th鄋h c鬾g. Ch鷆 b課 ch絠 vui v� !" )

		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 24 then
		LuaFnJoinMenpai(sceneId, selfId, targetId, 6)
		LuaFnSetXinFaLevel(sceneId,selfId,37,150)
		LuaFnSetXinFaLevel(sceneId,selfId,38,150)
		LuaFnSetXinFaLevel(sceneId,selfId,39,150)
		LuaFnSetXinFaLevel(sceneId,selfId,40,150)
		LuaFnSetXinFaLevel(sceneId,selfId,41,150)
		LuaFnSetXinFaLevel(sceneId,selfId,42,150)
		LuaFnSetXinFaLevel(sceneId,selfId,61,150)
		LuaFnSetXinFaLevel(sceneId,selfId,78,150)
              local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#ea00000#GCh鷆 m譶g "..nam.." 疸 nh t鈓 ph醦 150 ph醝 Thi阯 Long !", 4 )

		SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#GB課 疸 nh BUFF t鈓 ph醦 th鄋h c鬾g. Ch鷆 b課 ch絠 vui v� !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 25 then
		LuaFnJoinMenpai(sceneId, selfId, targetId, 4)
		LuaFnSetXinFaLevel(sceneId,selfId,25,150)
		LuaFnSetXinFaLevel(sceneId,selfId,26,150)
		LuaFnSetXinFaLevel(sceneId,selfId,27,150)
		LuaFnSetXinFaLevel(sceneId,selfId,28,150)
		LuaFnSetXinFaLevel(sceneId,selfId,29,150)
		LuaFnSetXinFaLevel(sceneId,selfId,30,150)
		LuaFnSetXinFaLevel(sceneId,selfId,59,150)
		LuaFnSetXinFaLevel(sceneId,selfId,76,150)
              local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#ea00000#GCh鷆 m譶g "..nam.." 疸 nh t鈓 ph醦 150 ph醝 Nga My !", 4 )
		SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#GB課 疸 nh BUFF t鈓 ph醦 th鄋h c鬾g. Ch鷆 b課 ch絠 vui v� !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 26 then
		LuaFnJoinMenpai(sceneId, selfId, targetId, 3)
		LuaFnSetXinFaLevel(sceneId,selfId,19,150)
		LuaFnSetXinFaLevel(sceneId,selfId,20,150)
		LuaFnSetXinFaLevel(sceneId,selfId,21,150)
		LuaFnSetXinFaLevel(sceneId,selfId,22,150)
		LuaFnSetXinFaLevel(sceneId,selfId,23,150)
		LuaFnSetXinFaLevel(sceneId,selfId,24,150)
		LuaFnSetXinFaLevel(sceneId,selfId,58,150)
		LuaFnSetXinFaLevel(sceneId,selfId,75,150)
              local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#ea00000#GCh鷆 m譶g "..nam.." 疸 nh t鈓 ph醦 150 ph醝 V� 衋ng !", 4 )
		SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#GB課 疸 nh BUFF t鈓 ph醦 th鄋h c鬾g. Ch鷆 b課 ch絠 vui v� !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 27 then
		LuaFnJoinMenpai(sceneId, selfId, targetId, 1)
		LuaFnSetXinFaLevel(sceneId,selfId,7,150)
		LuaFnSetXinFaLevel(sceneId,selfId,8,150)
		LuaFnSetXinFaLevel(sceneId,selfId,9,150)
		LuaFnSetXinFaLevel(sceneId,selfId,10,150)
		LuaFnSetXinFaLevel(sceneId,selfId,11,150)
		LuaFnSetXinFaLevel(sceneId,selfId,12,150)
		LuaFnSetXinFaLevel(sceneId,selfId,56,150)
		LuaFnSetXinFaLevel(sceneId,selfId,73,150)
              local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#ea00000#GCh鷆 m譶g "..nam.." 疸 nh t鈓 ph醦 150 ph醝 Minh Gi醥 !", 4 )
		SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#GB課 疸 nh BUFF t鈓 ph醦 th鄋h c鬾g. Ch鷆 b課 ch絠 vui v� !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 28 then
		LuaFnJoinMenpai(sceneId, selfId, targetId, 2)
		LuaFnSetXinFaLevel(sceneId,selfId,13,150)
		LuaFnSetXinFaLevel(sceneId,selfId,14,150)
		LuaFnSetXinFaLevel(sceneId,selfId,15,150)
		LuaFnSetXinFaLevel(sceneId,selfId,16,150)
		LuaFnSetXinFaLevel(sceneId,selfId,17,150)
		LuaFnSetXinFaLevel(sceneId,selfId,18,150)
		LuaFnSetXinFaLevel(sceneId,selfId,57,150)
		LuaFnSetXinFaLevel(sceneId,selfId,74,150)
              local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#ea00000#GCh鷆 m譶g "..nam.." 疸 nh t鈓 ph醦 150 ph醝 C醝 Bang !", 4 )
		SetMissionData(sceneId, selfId, MF_LINGQUYUANBAOMP1, day);
		BeginEvent( sceneId )
			AddText( sceneId, "#GB課 疸 nh BUFF t鈓 ph醦 th鄋h c鬾g. Ch鷆 b課 ch絠 vui v� !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 15 then
                local   	NameM	= GetName( sceneId, ObjIDM )
	AwardShiTuTitle( sceneId, selfId, NameM .. "挟 t�" )
	DispatchAllTitle( sceneId, selfId )
		LuaFnAwardSpouseTitle( sceneId, selfId, "VIP" )
		DispatchAllTitle( sceneId, selfId )
		BeginEvent( sceneId )
			AddText( sceneId, "#GXin ch鷆 m譶g b課 疸 nh th鄋h c鬾g danh hi畊." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if key == 16 then
		TryRecieveItem( sceneId, selfId, 30900016, 1 )
		Msg2Player( sceneId, selfId, "B課 疸 nh th鄋h c鬾g 500 餴琺 c醕 ng鱟 qu�.", MSG2PLAYER_PARA )
	end

      if key == 181 then

         local  nam= LuaFnGetName( sceneId, selfId )

            local lastDayTime1 = GetMissionData( sceneId, selfId, MF_LINGQUYUANBAOMP2)
	   
            local CurDayTime1 = GetDayTime()

	           if CurDayTime1 > lastDayTime1 then

                  BeginEvent(sceneId)
		   
                             --for i = 0,30 do 

                                    -- TryRecieveItem( sceneId, selfId, 30505107, 1 )

                                 --  end
                            TryRecieveItem( sceneId, selfId, 10113054, 1 )
TryRecieveItem( sceneId, selfId, 10113054, 1 )
TryRecieveItem( sceneId, selfId, 10113054, 1 )
                SetMissionData( sceneId, selfId, MF_LINGQUYUANBAOMP2, CurDayTime1 )

                 str = "#cffffccXin ch鷆 m譶g <#c00ff00"..nam.."#cffffcc>疸 nh th鄋h c鬾g danh hi畊."

                   BroadMsgByChatPipe(sceneId, selfId, str, 4)

		   AddText(sceneId,"H銀 quay l読 v鄌 ng鄖 mai. ")

		  EndEvent(sceneId)

		  DispatchEventList(sceneId,selfId,targetId)
                
                                else

		BeginEvent(sceneId)
			AddText(sceneId," H銀 quay l読 v鄌 ng鄖 mai.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	
	    end
	if key  == 19 then
           TryRecieveItem( sceneId, selfId, 10113054, 1 ) 
                BeginEvent(sceneId)
                            
		  AddText(sceneId,"Th鄋h c鬾g. ");
		  EndEvent(sceneId)
		  DispatchEventList(sceneId,selfId,targetId)
                  end
	

          end
    
end




--**********************************
-- 对话窗口信息提示
--**********************************
function x002095_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
--**********************************
--消息提示
--**********************************
function x002095_MsgBox( sceneId, selfId, str )	
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--对话提示
--**********************************
function x002095_TalkMsg( sceneId, selfId, targetId, str )	
	BeginEvent(sceneId)
      AddText(sceneId, str)      
  EndEvent(sceneId)
  DispatchEventList(sceneId,selfId,targetId)    
end
--**********************************
--转换经验
--**********************************
function x002095_Level12 (sceneId, selfId, targetId)
	if GetExp(sceneId,selfId) < 0  then
		BeginEvent( sceneId )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,1000)
			LuaFnAddExp(sceneId,selfId,GetExp(sceneId,selfId)*-1)
			AddText(sceneId,"继续点我吧，点10次应该就解决升级问题！！！...")
		EndEvent( sceneId )
	else

		BeginEvent( sceneId )
			AddText(sceneId,"失败,只有打怪获得不了经验的玩家才能使用此功能!!...")
		EndEvent( sceneId )

	end
	

	DispatchEventList( sceneId, selfId, targetId )

end

function x002095_ZhuanSheng( sceneId, selfId, targetId )
	local zhuanshengTimes = GetMissionData(sceneId, selfId, MD_ZHUANSHENG)
	if zhuanshengTimes >= 305 then
		BeginEvent( sceneId )
			AddText( sceneId, "H課 ch� 305 l chuy琻 sinh, Trong H鬽 Nay!!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
		return -1
	end
	
	local	lev	= GetLevel( sceneId, selfId )
	if zhuanshengTimes >= 150 then
		if lev < 149 then
			BeginEvent( sceneId )
			AddText( sceneId, "衅ng c nh� h絥 #G149#W. H銀 quay l読 khi 鹫t c 鸬 #G149.#W " )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return -1
		end
		local number = LuaFnGetAvailableItemCount(sceneId, selfId, 30504080)
		if number<150 then
			BeginEvent( sceneId )
			AddText( sceneId, "#GC醕 h� c thu th 瘘 #Y150 #Gvi阯 #W#Long #G瓞 c� th� chuy琻 sinh." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return -1
		else
			local reply = LuaFnDelAvailableItem(sceneId,selfId,30504080,150)
		end
	end
	
	--local mppoint = GetHumanMenpaiPoint(sceneId, humanObjId)
	
	
	if zhuanshengTimes >100 then
		if lev < 149 then
			BeginEvent( sceneId )
			AddText( sceneId, "衅ng c nh� h絥 #G149#W. H銀 quay l読 khi 鹫t c 鸬 #G149.#W " )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		return -1
		end
		
	end
	if lev < 130 then
		BeginEvent( sceneId )
		AddText( sceneId, "衅ng c nh� h絥 #G130#W. H銀 quay l読 khi 鹫t c 鸬 #G130#W " )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return -1
	end

        SetLevel( sceneId, selfId, 30)
	    
	SetMissionData(sceneId, selfId, MD_ZHUANSHENG, zhuanshengTimes+1 )
	zhuanshengTimes = zhuanshengTimes+1
	BeginEvent(sceneId)
		AddText(sceneId,"#GCh鷆 m譶g, chuy琻 sinh l #Y"..zhuanshengTimes.. " #Gth鄋h c鬾g!!!")
		AddText( sceneId, "#WServer gi緄 h課 s� l chuy琻 sinh l� #Y305, Trong H鬽 Nay!!" )
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	BeginEvent(sceneId)
		AddText(sceneId,"#GCh鷆 m譶g, chuy琻 sinh l #Y"..zhuanshengTimes.. " #Gth鄋h c鬾g!!!")
		AddText( sceneId, "#WServer gi緄 h課 s� l chuy琻 sinh l� #Y305, Trong H鬽 Nay!!" )
	EndEvent(sceneId)
	DispatchEventList( sceneId, selfId, targetId )
	local 	nam	= LuaFnGetName( sceneId, selfId )
	local szMsg = format("#2#G#cFF0000Ch鷆 m譶g #W#{_INFOUSR%s} #gFFFF00疸 chuy琻 sinh th鄋h c鬾g ! #2",nam)
		
	AddGlobalCountNews( sceneId, szMsg )
	
end

function x002095_Shengji (sceneId, selfId, targetId)
	local	lev	= GetLevel( sceneId, selfId )
	if lev < 148 then
		BeginEvent( sceneId )
		AddText( sceneId, "C 鸬 ch遖 瘘 #G149#W. H銀 quay l読 khi 鹫t c 鸬 #G149#W." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return -1
	end
	SetLevel( sceneId, selfId, 150)
	BeginEvent(sceneId)
		AddText(sceneId,"Ch鷆 m譶g, th鄋h c鬾g.!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	BeginEvent( sceneId )
		AddText( sceneId, "Th錸g c 150 th鄋h c鬾g." )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	local	nam	= LuaFnGetName( sceneId, selfId )
	BroadMsgByChatPipe( sceneId, selfId, "#48#eaf0000Ch鷆 m譶g "..nam.." 疸 th錸g l阯 150 c !!#48", 4 )
end