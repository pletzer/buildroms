# Instructions for building and running ROMS


## Compiling ROMS

```
git clone buildroms
git clone https://www.myroms.org/git/src roms
cd roms
ln -s ../buildroms/build_mahuika_XXX.sh .
source build_mahuika_XXX.sh
mkdir $BINDIR
make realclean
make
```

## Test run


```
svn checkout https://www.myroms.org/svn/src/test test
srun --time=00:10:00 --ntasks=1 bin_mahuika_XXX/romsM ROMS/External/roms_upwelling.in >& log.txt
```


## Results

jobid    |  compiler  | platform    |test case |  elapsed time sec | comments
-----------------------------------------------------
23190100 | intel      | mahuika     | upwelling | 00:03:58         | single proc
23190306 | gnu        | mahuika     | upwelling | 00:02:11         | 
