import vcs
import cdms2
import os

f = cdms2.open(os.path.join(vcs.sample_data, "clt.nc"))
s = f("clt", slice(0, 1), squeeze=1)
x = vcs.init()
x.plot(s)
x.interact()
