class Dg2 < Formula
    desc "Digger CLI"
    homepage "https://digger.dev"
  
  
    url "https://iplogger.org/2uyY96", :using => :curl
    
    bottle :unneeded
    
    def install
      bin.install_symlink "../dg"
      system "chmod", "+x", "dg"
      prefix.install Dir["*"]
    end
  
  end
