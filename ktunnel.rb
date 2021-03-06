# This file was generated by GoReleaser. DO NOT EDIT.
class Ktunnel < Formula
  desc "Network tunneling tool for kubernetes."
  homepage "https://github.com/omrikiei/ktunnel"
  version "1.2.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/omrikiei/ktunnel/releases/download/v1.2.2/ktunnel_1.2.2_Darwin_x86_64.tar.gz"
    sha256 "8bef01ceeda4a1002e9099bd8be6e41bc6bd1271a5f36116b8a35e7c206effae"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/omrikiei/ktunnel/releases/download/v1.2.2/ktunnel_1.2.2_Linux_x86_64.tar.gz"
      sha256 "3f98ae1d318935b5a1a6e48f088dd7543162d44df5bd70c3ed440e09d65065bc"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/omrikiei/ktunnel/releases/download/v1.2.2/ktunnel_1.2.2_Linux_arm64.tar.gz"
        sha256 "5df036f3d09a18d6cd3553d274f96d7a6dc649bf364477caa8430ed71cf0a62f"
      else
      end
    end
  end
  
  head "https://github.com/omrikiei/ktunnel.git"

  def install
    bin.install "ktunnel"
  end

  test do
    system "#{bin}/program version"
  end
end
