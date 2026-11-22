class Jrnl < Formula
  desc "Journal per project for coding agents, with search by meaning"
  homepage "https://github.com/gezibash/jrnl"
  version "3.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gezibash/jrnl/releases/download/v3.5.0/jrnl_3.5.0_darwin_arm64.tar.gz"
      sha256 "72e26ed73a110ae70eaa93682547c1cc69efe5547cbe7bde4e5f8185a40461b6"
    end
    on_intel do
      url "https://github.com/gezibash/jrnl/releases/download/v3.5.0/jrnl_3.5.0_darwin_amd64.tar.gz"
      sha256 "a6f3fc11f85c8020de6ceed95922e1ffcc4bc134e106ff3e635e202b19ed1a07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gezibash/jrnl/releases/download/v3.5.0/jrnl_3.5.0_linux_arm64.tar.gz"
      sha256 "e05c2aa9c8e47aecba02adf9e4b46f048baed701e083d96cb3feec42e3d4e174"
    end
    on_intel do
      url "https://github.com/gezibash/jrnl/releases/download/v3.5.0/jrnl_3.5.0_linux_amd64.tar.gz"
      sha256 "c8ad8c89bf7cb1d9a0a36536d98850854f12f47d2a04de1efd490994ecc486fd"
    end
  end

  def install
    bin.install "jrnl"
  end

  test do
    assert_match "jrnl #{version}", shell_output("#{bin}/jrnl --version")
  end
end
