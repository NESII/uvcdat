import vcs, cdms2, sys

x = vcs.init()
f = cdms2.open(vcs.sample_data+"/clt.nc")
v = f["clt"]
dv3d = vcs.get3d_scalar()
d = x.plot( v, dv3d )
x.interact()

