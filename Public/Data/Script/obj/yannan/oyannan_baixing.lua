--Nh課 NamNPC
--百姓
--普通

--**********************************
--事件交互入口
--**********************************
function x018007_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  H� 皤u l� ch鷑g sinh c黙 姓i T痭g, 皤u sinh s痭g � Nh課 M鬾 Quan 疸 m 鸲i r癷, 黏t v鄋g 黏t b誧 c鹡g kh鬾g bg 黏t nh� m靚h. H� s� kh鬾g b� 餴.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
