class Smctemp < Formula
    desc "Check Temperature by using Apple System Management Control (Smc) tool"
    homepage "https://github.com/narugit/smctemp"
    url "https://github.com/narugit/smctemp/archive/refs/tags/0.7.0.tar.gz"
    sha256 "4ca4eaade1964f2d4d39c5fc21ccb357a1966c5c2b8bb1480b08a28d47f8d4dd"
    license "GPL-2.0-only"

    depends_on :macos
  
    def install
      system "make"
      bin.install "smctemp"
    end
  
    test do
      assert_match version.to_s, shell_output("#{bin}/smctemp -v")
    end
  end