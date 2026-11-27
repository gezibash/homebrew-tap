class Jrnl < Formula
  desc "Journal per project for coding agents, with search by meaning"
  homepage "https://github.com/gezibash/jrnl"
  version "4.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gezibash/jrnl/releases/download/v4.1.0/jrnl_4.1.0_darwin_arm64.tar.gz"
      sha256 "01cbd1b18ada9c203ba1a137234af5d6df37a8a939d575af92711c436ad6a3b7"
    end
    on_intel do
      url "https://github.com/gezibash/jrnl/releases/download/v4.1.0/jrnl_4.1.0_darwin_amd64.tar.gz"
      sha256 "f3be1d9ddec5b4e36c225e83993396deaad00c409d3de97d16f83478f5a16e2e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gezibash/jrnl/releases/download/v4.1.0/jrnl_4.1.0_linux_arm64.tar.gz"
      sha256 "a405328ebe397786cdf95abb94f1576a7bd6fe71cb2a0a23a59fb3c22be2b4b3"
    end
    on_intel do
      url "https://github.com/gezibash/jrnl/releases/download/v4.1.0/jrnl_4.1.0_linux_amd64.tar.gz"
      sha256 "5d4f7de9f3348d6a5fdd1f031fd72929f6d0f2fc27cb886504828fdab37e19f6"
    end
  end

  def install
    bin.install "jrnl"
  end

  test do
    assert_match "jrnl #{version}", shell_output("#{bin}/jrnl --version")
  end
end
