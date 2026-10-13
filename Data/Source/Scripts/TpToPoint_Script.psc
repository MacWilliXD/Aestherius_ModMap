Scriptname TpToPoint_Script extends ObjectReference  

ObjectReference Property TpPoint  auto

Event OnActivate(ObjectReference akActionRef)
akActionRef.MoveTo(TpPoint)
endEvent