class Dg < Formula
    desc "Digger CLI"
    homepage "https://digger.dev"
  
  
    url "https://digger-releases.s3-eu-west-1.amazonaws.com/darwin/dg-darwin-v0.2.27.zip", :using => :curl
    
    bottle :unneeded
    
    def install
      #create_wrapper
      bin.install_symlink "../dg"
      prefix.install Dir[".Python"]
      prefix.install Dir["*"]
    end
  
  end
