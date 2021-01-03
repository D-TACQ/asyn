# README_8CHSCOPE
## Mark Rivers' asynPortDriver example extended to show 8CH
## cs-studio OPI

## It runs REALLY QUICK!

# Build:
First build EPICS BASE and support with asyn (see end)..

# Running Instructions:
cd /home/pgm/PROJECTS/ACQ164/support/asyn/iocBoot/ioctestAsynPortDriver
../../testAsynPortDriverApp/src/O.linux-x86_64/testAsynPortDriver st.cmd


# To run the UI
Set up a cs-studio workspace, include this OPI:
opi/boy/FakeScope.opi

# Build EPICS From Scratch:

mkdir PROJECTS
git clone github.com:D-TACQ/EPICS-base.git ACQ164
cd ACQ164
git git checkout -b ACQ164 origin/ACQ164

Now add submodules as per README.md



