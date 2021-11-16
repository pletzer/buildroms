# Instructions for building and running ROMS


## Compiling ROMS

```
git clone buildroms
git clone https://www.myroms.org/git/src roms
cd roms
ln -s ../buildroms/build_mahuika_XXX.sh .
source build_mahuika_XXX.sh
mkdir $BINDIR
make
```

## Test run


```
svn checkout https://www.myroms.org/svn/src/test test
sbatch --time=00:30:00 --ntasks=1 bin_mahuika_XXX/romsM ROMS/External/roms_upwelling.in >& log.txt
```
