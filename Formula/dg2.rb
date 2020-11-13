class Dg2 < Formula
    desc "Digger CLI"
    homepage "https://digger.dev"
  
  
    url "https://digger-releases.s3-eu-west-1.amazonaws.com/dg-darwin-v0.1.2.zip", :using => :curl
    
    bottle :unneeded
    
    def install
      bin.install_symlink "../dg"
      system "chmod", "+x", "dg"
      prefix.install Dir["*"]
    end
  
  end
