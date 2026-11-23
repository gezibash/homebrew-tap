class Jrnl < Formula
  desc "Journal per project for coding agents, with search by meaning"
  homepage "https://github.com/gezibash/jrnl"
  version "4.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gezibash/jrnl/releases/download/v4.0.0/jrnl_4.0.0_darwin_arm64.tar.gz"
      sha256 "f55a44a66993de7e1b30a35beb3a2bc6a2233db3e758360c52812066c4bec684"
    end
    on_intel do
      url "https://github.com/gezibash/jrnl/releases/download/v4.0.0/jrnl_4.0.0_darwin_amd64.tar.gz"
      sha256 "b5460aa465dbddef57c6cef26c446de73a220f5e46231206c40deaa4ff5a20e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gezibash/jrnl/releases/download/v4.0.0/jrnl_4.0.0_linux_arm64.tar.gz"
      sha256 "c88dab223ad8da4c32e08f88a0ceb15a71605275fc6001f2f9696f496cd3b5d3"
    end
    on_intel do
      url "https://github.com/gezibash/jrnl/releases/download/v4.0.0/jrnl_4.0.0_linux_amd64.tar.gz"
      sha256 "b868eabb062e1a3e377f3aeccf0abb8ab39cc32b66cf0cd69e9b6e7df77d0dcb"
    end
  end

  def install
    bin.install "jrnl"
  end

  test do
    assert_match "jrnl #{version}", shell_output("#{bin}/jrnl --version")
  end
end
