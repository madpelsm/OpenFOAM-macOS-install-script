hdiutil create -size 8.3g -type SPARSEBUNDLE -fs HFSX -volname OpenFOAM -fsargs -s OpenFOAM.sparsebundle
hdiutil attach -mountpoint $HOME/OpenFOAM OpenFOAM.sparsebundle
cd $HOME/OpenFOAM
git clone https://github.com/OpenFOAM/OpenFOAM-6
cd OpenFOAM-6
curl -O https://raw.githubusercontent.com/mrklein/openfoam-os-x/master/OpenFOAM-6.patch
git apply OpenFOAM-6.patch
source etc/bashrc
ulimit -n 8912
./Allwmake -j4
