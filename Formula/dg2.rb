class Dg2 < Formula
    desc "Digger CLI"
    homepage "https://digger.dev"
  
  
    url "https://digger-releases.s3-eu-west-1.amazonaws.com/dg-darwin-homebrew-0.1.2.zip", :using => :curl
    
    bottle :unneeded
    
    def install
      #create_wrapper
      bin.install_symlink "../dg"
      prefix.install Dir["dg/.Python"]
      prefix.install Dir["dg/*"]
    end
  
  end
