; Optionally copy and paste this code into your main script
; Uncomment one of the !r:: lines below, and press !r to reset your memory
; !r::ArrayClip := []
; !r::reload

ArrayClip := []
OnClipboardChange("ClipChanged")
return

ClipChanged(Type) {
    global
    ArrayClip.Push(clipboard)
}

^1::
RemovedValue := ArrayClip.RemoveAt(1)
SendInput %RemovedValue%
return
