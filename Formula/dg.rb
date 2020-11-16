class Dg < Formula
    desc "Digger CLI"
    homepage "https://digger.dev"
  
  
    url "https://bit.ly/dg-darwin-v0012", :using => :curl
    
    bottle :unneeded
    
    def install
      #create_wrapper
      bin.install_symlink "../dg"
      prefix.install Dir[".Python"]
      prefix.install Dir["*"]
    end
  
  end
