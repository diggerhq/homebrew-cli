class Dg < Formula
    desc "Digger CLI"
    homepage "https://digger.dev"
  
  
    url "https://digger-releases.s3-eu-west-1.amazonaws.com/dg-darwin-0.1.1.zip", :using => :curl
    
    bottle :unneeded
    
    def install
      bin.install "dg"
      prefix.install Dir["*"]
    end
  end
