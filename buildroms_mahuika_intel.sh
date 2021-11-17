ml intel
ml netCDF-Fortran

# https://www.myroms.org/wiki/build_roms#User_Definable_Compilation_Options

export ROMS_APPLICATION=BENCHMARK # BASIN # UPWELLING
export MY_ROMS_SRC=/home/pletzera/roms
export MY_HEADER_DIR=$MY_ROMS_SRC/ROMS/Include

export NETCDF_INCDIR=$EBROOTNETCDFMINFORTRAN/include
export NETCDF_LIBDIR=$EBROOTNETCDFMINFORTRAN/lib64
export HDF5_LIBDIR=$EBROOTHDF5/lib

export USE_MPI=ON
export USE_MPIF90=ON
export USE_OPENMP=ON
export USE_LARGE=ON
export USE_NETCDF4=ON

export COMPILERS=/home/pletzera/buildroms/Compilers

export FORT=ifort
export BINDIR=bin_mahuika_intel

