class LibPlist < Formula
	desc "A library to handle Apple Property List format in binary or XML"
	homepage "http://www.libimobiledevice.org"
	url "https://github.com/tihmstar/libplist/archive/2.0.0.tar.gz"

	depends_on "make" => :build
	depends_on "autoconf" => :build
	depends_on "automake" => :build
    depends_on "libtool" => :build
    depends_on "pkg-config" => :build
    depends_on "cython" => :optional
    depends_on "gcc" => :build

    def install
    	system "./autogen.sh", "--prefix=#{prefix}"
    	system "make", "install"
    end
end