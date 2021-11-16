# Instructions for building ROMS

Download the code
```
git clone buildroms
git clone https://www.myroms.org/git/src roms
cd roms
ln -s ../buildroms/build_mahuika_XXX.sh .
source build_mahuika_XXX.sh
mkdir $BINDIR
make
```
