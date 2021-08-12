; Optionally copy and paste this code into your main script
; Uncomment one of the !r:: lines below, and press !r to reset your memory
; !r::ArrayClip := []
; !r::reload

ArrayClip := []
return

^~c::
sleep 100
ArrayClip.Push(clipboard)
return

^1::
RemovedValue := ArrayClip.RemoveAt(1)
SendInput %RemovedValue%
return
