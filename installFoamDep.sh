brew install open-mpi
brew install boost --with-mpi
brew install cgal
brew install armadillo
brew install git
brew install curl
brew install fftw
brew install swig
brew install metis
brew install qt


curl -O 'https://gforge.inria.fr/frs/download.php/file/34618/scotch_6.0.4.tar.gz'
tar -xzf scotch_6.0.4.tar.gz
rm scotch_6.0.4.tar.gz
cd scotch_6.0.4/src
ln -s Make.inc/Makefile.inc.i686_mac_darwin10 Makefile.inc
make scotch
make install
make ptscotch
make install
cd ..
cd ..
rm -rf scotch_6.0.4

