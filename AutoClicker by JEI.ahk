#Persistent
loopActive := false
return

F::
    if (loopActive)
    {
        loopActive := false
    }
    else
    {
        loopActive := true
        Loop
        {
            Send, {LButton}{Delay 0.01}
	    Send, {LButton}{Delay 0.01}
	    Send, {LButton}{Delay 0.01}

            if (!loopActive)
                break

        }
    }
return

G::
    loopActive := false
return

Home:: Suspend, Toggle
    loopActive := false

Delete:: ExitApp 

