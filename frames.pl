settings(Frame):->
        "Open settings dialog"::
        new(D,dialog(settings)),
        send(D,transient_for,Frame),
        send(D,modal,transient),
        send(D,open_centered,Frame?area?center).

