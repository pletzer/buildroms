# Instructions for building and running ROMS


## Compiling ROMS

```
git clone buildroms
git clone https://www.myroms.org/git/src roms
cd roms
ln -s ../buildroms/build_mahuika_XXX.sh .
source build_mahuika_XXX.sh
mkdir $BINDIR
rm -rf Build_roms/*
make
```

## Test run

In the $MY_ROMS_SRC directory
```
svn checkout https://www.myroms.org/svn/src/test test
```

UPWELLING:
```
srun --time=00:10:00 --ntasks=1 bin_mahuika_XXX/romsM ROMS/External/roms_upwelling.in >& log.txt
```


BASIN: (reduced the number of time steps from 288,000 to 12,000)
```
srun --time=00:20:00 --ntasks=4 bin_mahuika_XXX/romsM ROMS/External/roms_basin.in >& log.txt
```


## Results

jobid    |  compiler  | platform    |test case |  elapsed time sec | comments
-----------------------------------------------------
23190100 | intel      | mahuika     | upwelling | 00:03:58         | single proc
23190306 | gnu        | mahuika     | upwelling | 00:02:11         | 
23190508 | gnu        | mahuika     | basin 12000  |  00:11:03     | 4 procs (from the log file, for some reason the code exceeded the tie limit)
23190516 | intel      | mahuika     | basin 12000  |  00:16:47     |         
23194289 | intel      | mahuika     | basin 12000  |  00:11:50     | removed --check uninit
23194532 | intel      | mahuika     | basin 12000  |  00:20:10     | --ntasks=4 --hint=multithread (2 physical procs)
23194537 | gnu        | mahuika     | benchmark1   | 

