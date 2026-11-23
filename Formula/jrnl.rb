class Jrnl < Formula
  desc "Journal per project for coding agents, with search by meaning"
  homepage "https://github.com/gezibash/jrnl"
  version "4.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gezibash/jrnl/releases/download/v4.0.1/jrnl_4.0.1_darwin_arm64.tar.gz"
      sha256 "64051943f6c5503003197dcea766146fc790a0e2e0c7c0449f5429a0740c1f0a"
    end
    on_intel do
      url "https://github.com/gezibash/jrnl/releases/download/v4.0.1/jrnl_4.0.1_darwin_amd64.tar.gz"
      sha256 "39555621656daef7ab1019dfb5eb927e2a04c72e058b09bdc5d3fa527cd18174"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gezibash/jrnl/releases/download/v4.0.1/jrnl_4.0.1_linux_arm64.tar.gz"
      sha256 "faa02bb45d7d939c501865168476b5c6b85ae88d487ff6978cad8495de59244e"
    end
    on_intel do
      url "https://github.com/gezibash/jrnl/releases/download/v4.0.1/jrnl_4.0.1_linux_amd64.tar.gz"
      sha256 "67aaf79b052c9d5c968a86a6ab79343f6b18fac56ed0f1102b937c3b4a177ca6"
    end
  end

  def install
    bin.install "jrnl"
  end

  test do
    assert_match "jrnl #{version}", shell_output("#{bin}/jrnl --version")
  end
end
