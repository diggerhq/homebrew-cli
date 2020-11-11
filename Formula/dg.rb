class Dg < Formula
    desc "Digger CLI"
    homepage "https://digger.dev"
  
  
    url "https://digger-releases.s3-eu-west-1.amazonaws.com/dg-darwin-0.1.1.zip", :using => :curl
    
    bottle :unneeded
    
    def install
      create_wrapper
      bin.install "dg-homebrew" => "dg"
      prefix.install Dir[".Python"]
      prefix.install Dir["*"]
    end

  
    private def create_wrapper
      wrapper = '#!/usr/bin/env bash
      ../dg'
      File.write('dg-homebrew', wrapper)
    end

  end
