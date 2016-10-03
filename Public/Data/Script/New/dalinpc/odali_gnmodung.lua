--��Ե����

--�ű���
x990001_g_scriptId = 990001
x990001_g_x990001_g_szTamPhap = 0
szLuaFnGetXinFaLevel2 = 0
--��ӵ�е��¼�ID�б�

--**********************************
--�¼��б�#G���ǰ�����뱣֤������һ��8��������8���޲���8��������
--**********************************
function x990001_OnDefaultEvent( sceneId, selfId,targetId )
    BeginEvent(sceneId)
		AddText(sceneId,"  Tr߷ng m�n s� huynh c� vi�c tr�ng ��i ph�i l�m, nh�ng vi�c nh�n � � b�i s� giao cho ta ph� tr�ch.")
		local mp = GetMenPai(sceneId, selfId)
		local nMenpaiPoint = GetHumanMenpaiPoint(sceneId, selfId)
		if mp == 9 and nMenpaiPoint <= 0 then
			AddNumText(sceneId, x990001_g_scriptId, "Gia nh�p m�n ph�i",6,0)
		end
		if mp == 9 and nMenpaiPoint > 0 then
			AddNumText(sceneId, x990001_g_scriptId, "K� n�ng h�c t�p",12,1)
		end
		AddNumText(sceneId, x990001_g_ScriptId, "H�c khinh c�ng ph�i M� Dung",12,2)
		AddNumText(sceneId, x990001_g_scriptId, "Gi�i thi�u m�n ph�i"..GetLevel( sceneId, selfId ),8,3)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x990001_OnEventRequest( sceneId, selfId, targetId, eventId)
	local haveMoney = x990001_MoneyDisplayChange( sceneId, selfId, GetMoney(sceneId, selfId)+GetMoneyJZ(sceneId, selfId) )
	local nMenpaiPoint = GetHumanMenpaiPoint(sceneId, selfId)
	if	GetNumText()==2	then
		x990001_HocKinhCong(sceneId, selfId, targetId, nMenpaiPoint)
	end
	
	if	GetNumText()==1	then
		BeginEvent(sceneId)
				AddText(sceneId, "  Ch�n B� t�ch mu�n n�ng t�m ph�p:")
				AddNumText(sceneId, x990001_g_scriptId, "Giang Nam Ki�m Quy�t",12,20)
				AddNumText(sceneId, x990001_g_ScriptId, "S�t Tr߶ng Quy�t",12,21)
			AddNumText(sceneId, x990001_g_scriptId, "Vi�m D߽ng T�m Ph�p",12,22)
			AddNumText(sceneId, x990001_g_scriptId, "Thanh V�n B� T�ch",12,23)
			AddNumText(sceneId, x990001_g_scriptId, "S߽ng L�nh Ki�m Thu�t",12,24)
			AddNumText(sceneId, x990001_g_scriptId, "Tinh Nguy�t Y�u Thu�t",12,25)
			AddNumText(sceneId, x990001_g_scriptId, "Tham H�p C�ng",12,26)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
	end
	
	if GetNumText()==20 then
		x990001_g_szTamPhap = 64
		local szLuaFnGetXinFaLevel = LuaFnGetXinFaLevel(sceneId,selfId,x990001_g_szTamPhap)
		if szLuaFnGetXinFaLevel == 10 or szLuaFnGetXinFaLevel == 20 or szLuaFnGetXinFaLevel == 30 or szLuaFnGetXinFaLevel == 40 or szLuaFnGetXinFaLevel == 50 or szLuaFnGetXinFaLevel == 60 or szLuaFnGetXinFaLevel == 70 or szLuaFnGetXinFaLevel == 80 or szLuaFnGetXinFaLevel == 90 or szLuaFnGetXinFaLevel == 100 or szLuaFnGetXinFaLevel == 110 or szLuaFnGetXinFaLevel == 120 or szLuaFnGetXinFaLevel == 130 or szLuaFnGetXinFaLevel == 140 then
			szLuaFnGetXinFaLevel2 = szLuaFnGetXinFaLevel + 10;
		else
			szLuaFnGetXinFaLevel2 = szLuaFnGetXinFaLevel + 9;
		end
		BeginEvent(sceneId)
			AddText(sceneId, "B� t�ch: #GGiang Nam Ki�m Quy�t#W#r")
			AddText(sceneId, "T�m ph�p hi�n t�i:        "..szLuaFnGetXinFaLevel)
			AddText(sceneId, "T�m ph�p ti�p theo:     "..szLuaFnGetXinFaLevel2)
			AddText(sceneId, "#rTi�n v�ng c�:               "..haveMoney)
			AddText(sceneId, "Ti�n v�ng c�n:             "..szLuaFnGetXinFaLevel2.."#-02")
			AddNumText(sceneId, x990001_g_scriptId, "H�c",12,200)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if GetNumText()==21	then
		x990001_g_szTamPhap = 65
		local szLuaFnGetXinFaLevel = LuaFnGetXinFaLevel(sceneId,selfId,x990001_g_szTamPhap)
		if szLuaFnGetXinFaLevel == 10 or szLuaFnGetXinFaLevel == 20 or szLuaFnGetXinFaLevel == 30 or szLuaFnGetXinFaLevel == 40 or szLuaFnGetXinFaLevel == 50 or szLuaFnGetXinFaLevel == 60 or szLuaFnGetXinFaLevel == 70 or szLuaFnGetXinFaLevel == 80 or szLuaFnGetXinFaLevel == 90 or szLuaFnGetXinFaLevel == 100 or szLuaFnGetXinFaLevel == 110 or szLuaFnGetXinFaLevel == 120 or szLuaFnGetXinFaLevel == 130 or szLuaFnGetXinFaLevel == 140 then
			szLuaFnGetXinFaLevel2 = szLuaFnGetXinFaLevel + 10;
		else
			szLuaFnGetXinFaLevel2 = szLuaFnGetXinFaLevel + 9;
		end
		BeginEvent(sceneId)
			AddText(sceneId, "B� t�ch: #GS�t Tr߶ng Quy�t#W#r")
			AddText(sceneId, "T�m ph�p hi�n t�i:        "..szLuaFnGetXinFaLevel)
			AddText(sceneId, "T�m ph�p ti�p theo:     "..szLuaFnGetXinFaLevel2)
			AddText(sceneId, "#rTi�n v�ng c�:               "..haveMoney)
			AddText(sceneId, "Ti�n v�ng c�n:             "..szLuaFnGetXinFaLevel2.."#-02")
			AddNumText(sceneId, x990001_g_scriptId, "H�c",12,201)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if GetNumText()==22	then
		x990001_g_szTamPhap = 66
		local szLuaFnGetXinFaLevel = LuaFnGetXinFaLevel(sceneId,selfId,x990001_g_szTamPhap)
		if szLuaFnGetXinFaLevel == 10 or szLuaFnGetXinFaLevel == 20 or szLuaFnGetXinFaLevel == 30 or szLuaFnGetXinFaLevel == 40 or szLuaFnGetXinFaLevel == 50 or szLuaFnGetXinFaLevel == 60 or szLuaFnGetXinFaLevel == 70 or szLuaFnGetXinFaLevel == 80 or szLuaFnGetXinFaLevel == 90 or szLuaFnGetXinFaLevel == 100 or szLuaFnGetXinFaLevel == 110 or szLuaFnGetXinFaLevel == 120 or szLuaFnGetXinFaLevel == 130 or szLuaFnGetXinFaLevel == 140 then
			szLuaFnGetXinFaLevel2 = szLuaFnGetXinFaLevel + 10;
		else
			szLuaFnGetXinFaLevel2 = szLuaFnGetXinFaLevel + 9;
		end
		BeginEvent(sceneId)
			AddText(sceneId, "B� t�ch: #GVi�m D߽ng T�m Ph�p#W#r")
			AddText(sceneId, "T�m ph�p hi�n t�i:        "..szLuaFnGetXinFaLevel)
			AddText(sceneId, "T�m ph�p ti�p theo:     "..szLuaFnGetXinFaLevel2)
			AddText(sceneId, "#rTi�n v�ng c�:               "..haveMoney)
			AddText(sceneId, "Ti�n v�ng c�n:             "..szLuaFnGetXinFaLevel2.."#-02")
			AddNumText(sceneId, x990001_g_scriptId, "H�c",12,202)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	if GetNumText()==23	then
		x990001_g_szTamPhap = 67
		local szLuaFnGetXinFaLevel = LuaFnGetXinFaLevel(sceneId,selfId,x990001_g_szTamPhap)
		if szLuaFnGetXinFaLevel == 10 or szLuaFnGetXinFaLevel == 20 or szLuaFnGetXinFaLevel == 30 or szLuaFnGetXinFaLevel == 40 or szLuaFnGetXinFaLevel == 50 or szLuaFnGetXinFaLevel == 60 or szLuaFnGetXinFaLevel == 70 or szLuaFnGetXinFaLevel == 80 or szLuaFnGetXinFaLevel == 90 or szLuaFnGetXinFaLevel == 100 or szLuaFnGetXinFaLevel == 110 or szLuaFnGetXinFaLevel == 120 or szLuaFnGetXinFaLevel == 130 or szLuaFnGetXinFaLevel == 140 then
			szLuaFnGetXinFaLevel2 = szLuaFnGetXinFaLevel + 10;
		else
			szLuaFnGetXinFaLevel2 = szLuaFnGetXinFaLevel + 9;
		end
		BeginEvent(sceneId)
			AddText(sceneId, "B� t�ch: #GThanh V�n B� T�ch#W#r")
			AddText(sceneId, "T�m ph�p hi�n t�i:        "..szLuaFnGetXinFaLevel)
			AddText(sceneId, "T�m ph�p ti�p theo:     "..szLuaFnGetXinFaLevel2)
			AddText(sceneId, "#rTi�n v�ng c�:               "..haveMoney)
			AddText(sceneId, "Ti�n v�ng c�n:             "..szLuaFnGetXinFaLevel2.."#-02")
			AddNumText(sceneId, x990001_g_scriptId, "H�c",12,203)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if GetNumText()==24	then
		x990001_g_szTamPhap = 68
		local szLuaFnGetXinFaLevel = LuaFnGetXinFaLevel(sceneId,selfId,x990001_g_szTamPhap)
		if szLuaFnGetXinFaLevel == 10 or szLuaFnGetXinFaLevel == 20 or szLuaFnGetXinFaLevel == 30 or szLuaFnGetXinFaLevel == 40 or szLuaFnGetXinFaLevel == 50 or szLuaFnGetXinFaLevel == 60 or szLuaFnGetXinFaLevel == 70 or szLuaFnGetXinFaLevel == 80 or szLuaFnGetXinFaLevel == 90 or szLuaFnGetXinFaLevel == 100 or szLuaFnGetXinFaLevel == 110 or szLuaFnGetXinFaLevel == 120 or szLuaFnGetXinFaLevel == 130 or szLuaFnGetXinFaLevel == 140 then
			szLuaFnGetXinFaLevel2 = szLuaFnGetXinFaLevel + 10;
		else
			szLuaFnGetXinFaLevel2 = szLuaFnGetXinFaLevel + 9;
		end
		BeginEvent(sceneId)
			AddText(sceneId, "B� t�ch: #GS߽ng L�nh Ki�m Thu�t#W#r")
			AddText(sceneId, "T�m ph�p hi�n t�i:        "..szLuaFnGetXinFaLevel)
			AddText(sceneId, "T�m ph�p ti�p theo:     "..szLuaFnGetXinFaLevel2)
			AddText(sceneId, "#rTi�n v�ng c�:               "..haveMoney)
			AddText(sceneId, "Ti�n v�ng c�n:             "..szLuaFnGetXinFaLevel2.."#-02")
			AddNumText(sceneId, x990001_g_scriptId, "H�c",12,204)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if GetNumText()==25	then
		x990001_g_szTamPhap = 69
		local szLuaFnGetXinFaLevel = LuaFnGetXinFaLevel(sceneId,selfId,x990001_g_szTamPhap)
		if szLuaFnGetXinFaLevel == 10 or szLuaFnGetXinFaLevel == 20 or szLuaFnGetXinFaLevel == 30 or szLuaFnGetXinFaLevel == 40 or szLuaFnGetXinFaLevel == 50 or szLuaFnGetXinFaLevel == 60 or szLuaFnGetXinFaLevel == 70 or szLuaFnGetXinFaLevel == 80 or szLuaFnGetXinFaLevel == 90 or szLuaFnGetXinFaLevel == 100 or szLuaFnGetXinFaLevel == 110 or szLuaFnGetXinFaLevel == 120 or szLuaFnGetXinFaLevel == 130 or szLuaFnGetXinFaLevel == 140 then
			szLuaFnGetXinFaLevel2 = szLuaFnGetXinFaLevel + 10;
		else
			szLuaFnGetXinFaLevel2 = szLuaFnGetXinFaLevel + 9;
		end
		BeginEvent(sceneId)
			AddText(sceneId, "B� t�ch: #GTinh Nguy�t Y�u Thu�t#W#r")
			AddText(sceneId, "T�m ph�p hi�n t�i:        "..szLuaFnGetXinFaLevel)
			AddText(sceneId, "T�m ph�p ti�p theo:     "..szLuaFnGetXinFaLevel2)
			AddText(sceneId, "#rTi�n v�ng c�:               "..haveMoney)
			AddText(sceneId, "Ti�n v�ng c�n:             "..szLuaFnGetXinFaLevel2.."#-02")
			AddNumText(sceneId, x990001_g_scriptId, "H�c",12,205)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if GetNumText()==26	then
		x990001_g_szTamPhap = 70
		local szLuaFnGetXinFaLevel = LuaFnGetXinFaLevel(sceneId,selfId,70)
		if szLuaFnGetXinFaLevel <= 0 then
			BeginEvent(sceneId)
				AddText(sceneId, "C�c h� ch�a h�c B� t�ch n�y")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		else
			if szLuaFnGetXinFaLevel == 10 or szLuaFnGetXinFaLevel == 20 or szLuaFnGetXinFaLevel == 30 or szLuaFnGetXinFaLevel == 40 or szLuaFnGetXinFaLevel == 50 or szLuaFnGetXinFaLevel == 60 or szLuaFnGetXinFaLevel == 70 or szLuaFnGetXinFaLevel == 80 or szLuaFnGetXinFaLevel == 90 or szLuaFnGetXinFaLevel == 100 or szLuaFnGetXinFaLevel == 110 or szLuaFnGetXinFaLevel == 120 or szLuaFnGetXinFaLevel == 130 or szLuaFnGetXinFaLevel == 140 then
				szLuaFnGetXinFaLevel2 = szLuaFnGetXinFaLevel + 10;
			else
				szLuaFnGetXinFaLevel2 = szLuaFnGetXinFaLevel + 9;
			end
			BeginEvent(sceneId)
				AddText(sceneId, "B� t�ch: #GTham H�p C�ng#W#r")
				AddText(sceneId, "T�m ph�p hi�n t�i:        "..szLuaFnGetXinFaLevel)
				AddText(sceneId, "T�m ph�p ti�p theo:     "..szLuaFnGetXinFaLevel2)
				AddText(sceneId, "#rTi�n v�ng c�:               "..haveMoney)
				AddText(sceneId, "Ti�n v�ng c�n:             "..szLuaFnGetXinFaLevel2.."#-02")
				AddNumText(sceneId, x990001_g_scriptId, "H�c",12,206)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
	end
	
	if GetNumText() >= 200 and GetNumText() <= 206 then
		x990001_UpTamPhap( sceneId, selfId, targetId, x990001_g_szTamPhap );
	end
	
	if	GetNumText()==3	then
		BeginEvent(sceneId)
			AddText(sceneId, "#{OBJ_gusu_0001}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if GetNumText() == 0 then 
		x990001_MenPai = GetMenPai(sceneId, selfId)
		if GetLevel( sceneId, selfId ) < 10 then
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� h�y ��i t�i sau c�p 10 l�i t�i b�i s� h�c ngh�!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif x990001_MenPai ~= 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ng߽i �� l� cao � c�a m�n ph�i kh�c, ch�ng ta kh�ng thu nh�n ng߽i")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif x990001_MenPai == 9 and nMenpaiPoint > 0 then
			BeginEvent(sceneId)
				AddText(sceneId, "Ng߽i l�i t�i qu�y r�y s� ph�, ng߽i �� l� � t� ph�i M� Dung, c�n b�i s� g� n�a")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		else
			BeginEvent(sceneId)
				AddText(sceneId, "Ъn ��y, h�y gia nh�p M� Dung Th� Gia c�a ch�ng t�i �i.")
				AddNumText(sceneId, x990001_g_scriptId, "Ta mu�n b�i nh�p ph�i M� Dung",6,4)
				AddNumText(sceneId, x990001_g_scriptId, "T�i h� ch�a mu�n b�i s�",8,5)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
	end
	if GetNumText()==5	then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return
	end
	if GetNumText()==4	then
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 2 then
			BeginEvent(sceneId)
				AddText(sceneId,"  H�y s�p x�p l�i tay n�i, c�n 2 v� tr� tr�ng, ta s� th߷ng cho ng߽i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			LuaFnJoinMenpai(sceneId, selfId, selfId, 9)
			CallScriptFunction( 200099, "InitRelation", sceneId, selfId )
				
			LuaFnSetXinFaLevel(sceneId,selfId,64,10)
			LuaFnSetXinFaLevel(sceneId,selfId,65,10)
			LuaFnSetXinFaLevel(sceneId,selfId,66,10)
			LuaFnSetXinFaLevel(sceneId,selfId,67,10)
			LuaFnSetXinFaLevel(sceneId,selfId,68,10)
			LuaFnSetXinFaLevel(sceneId,selfId,69,10)

			local nMenpaiPoint = GetHumanMenpaiPoint(sceneId, selfId)
			SetHumanMenpaiPoint(sceneId, selfId, nMenpaiPoint+20)
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� �� gia nh�p ph�i M� Dung!");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			TryRecieveItem( sceneId, selfId, 10432010, 1 )
			if TryRecieveItem( sceneId, selfId, 10553095, 1 ) >= 0 then
				str		= "#YC�c h� �� nh�n ���c "..GetItemName( sceneId, 10553095 ).."."
				x990001_MsgBox( sceneId, selfId, str )
			end
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 1000 )
		end
	end
end

function x990001_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ��Ļ�м���Ϣ��ʾ
--**********************************
function x990001_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

function x990001_MsgBox( sceneId, selfId, str )
	Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

function x990001_HocKinhCong( sceneId, selfId, targetId, snMenpaiPoint )
	if GetMenPai(sceneId, selfId) == 9 and snMenpaiPoint > 0 then
		if	HaveSkill( sceneId, selfId, 200)<0	then
			-- ��Ǯ
			if GetMoney(sceneId, selfId)+GetMoneyJZ(sceneId, selfId) < STUDY_MENPAI_QINGGONG_SPEND  then
				BeginEvent(sceneId)
					AddText(sceneId,"  Ng�n l��ng tr�n ng߶i c�c h� kh�ng �� 1#-15, v� v�y kh�ng th� h�c khinh c�ng b�n m�n")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
			end
			-- ��Ǯ
			CostMoney(sceneId,selfId,STUDY_MENPAI_QINGGONG_SPEND)
				
			AddSkill( sceneId, selfId, 200 )
			DelSkill( sceneId, selfId, 34 )
			BeginEvent(sceneId)
				AddText(sceneId,"Ch�c m�ng ng߽i �� h�c ���c khinh c�ng c�a b�n m�n, hy v�ng ng߽i ti�p t�c n� l�c � ph�t huy danh ti�ng b�n m�n")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
				BeginEvent(sceneId)
					AddText(sceneId,"Ch�ng ph�i ng߽i �� h�c r�i sao?")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
		end
	elseif GetMenPai(sceneId, selfId) == 9 then
		BeginEvent(sceneId)
			AddText(sceneId,"H�c khinh c�ng M� Dung tr߾c ti�n c�n gia nh�p ph�i M� Dung!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		BeginEvent(sceneId)
			AddText(sceneId,"Ng߽i kh�ng ph�i l� � t� c�a b�n bang, ta kh�ng th� d�y ng߽i khinh c�ng c�a M� Dung")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

function x990001_UpTamPhap( sceneId, selfId, targetId, TamPhap )
	local TamPhapHienTai = LuaFnGetXinFaLevel(sceneId,selfId,TamPhap)
	if TamPhapHienTai >= GetLevel( sceneId, selfId ) then
		BeginEvent(sceneId)
			AddText(sceneId,"  ��ng c�p T�m ph�p �� ��t t�i c�p cao nh�t. Xin n�ng cao ��ng c�p nh�n v�t")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	if TamPhapHienTai == 10 or TamPhapHienTai == 20 or TamPhapHienTai == 30 or TamPhapHienTai == 40 or TamPhapHienTai == 50 or TamPhapHienTai == 60 or TamPhapHienTai == 70 or TamPhapHienTai == 80 or TamPhapHienTai == 90 or TamPhapHienTai == 100 or TamPhapHienTai == 110 or TamPhapHienTai == 120 or TamPhapHienTai == 130 or TamPhapHienTai == 140 then
			TamPhapHienTai = TamPhapHienTai + 10;
	else
			TamPhapHienTai = TamPhapHienTai + 9;
	end
	NeedMoneyUP = TamPhapHienTai * 10000;
	if GetMoney(sceneId, selfId)+GetMoneyJZ(sceneId, selfId) < NeedMoneyUP  then
		BeginEvent(sceneId)
			AddText(sceneId,"  Ng�n l��ng tr�n ng߶i c�c h� kh�ng ��, v� v�y kh�ng th� n�ng t�m ph�p")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	LuaFnSetXinFaLevel(sceneId,selfId,TamPhap,TamPhapHienTai)
	CostMoney(sceneId,selfId,NeedMoneyUP)
	x990001_MsgBox( sceneId, selfId, "N�ng t�m ph�p th�nh c�ng");
	DispatchUICommand( sceneId, selfId, 1000 )
end

function x990001_MoneyDisplayChange( sceneId, selfId, money )
	Moneydisplay = ""
	Bronze = mod(money,100)
	Silver = (mod(money,10000) - Bronze)/100
	Gold = (money - Bronze - Silver * 100)/10000
	if Gold ~= 0 and Silver ~= 0 and Bronze ~= 0 then
		Moneydisplay = ""..Gold.."#-02"..Silver.."#-03"..Bronze.."#-04"
	elseif Gold ~= 0 and Silver ~= 0 and Bronze == 0 then
		Moneydisplay = ""..Gold.."#-02"..Silver.."#-03"
	elseif Gold ~= 0 and Silver == 0 and Bronze ~= 0 then
		Moneydisplay = ""..Gold.."#-02"..Bronze.."#-04"
	elseif Gold ~= 0 and Silver == 0 and Bronze == 0 then
		Moneydisplay = ""..Gold.."#-02"
	elseif Gold == 0 and Silver ~= 0 and Bronze ~= 0 then
		Moneydisplay = ""..Silver.."#-03"..Bronze.."#-04"
	elseif Gold == 0 and Silver ~= 0 and Bronze == 0 then
		Moneydisplay = ""..Silver.."#-03"
	elseif Gold == 0 and Silver == 0 and Bronze ~= 0 then
		Moneydisplay = ""..Bronze.."#-04"
	elseif Gold  == 0 and Silver == 0 and Bronze == 0 then
		Moneydisplay = "0#-04"
	end
	return Moneydisplay
end