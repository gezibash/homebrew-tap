class Jrnl < Formula
  desc "Journal per project for coding agents, with search by meaning"
  homepage "https://github.com/gezibash/jrnl"
  version "3.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gezibash/jrnl/releases/download/v3.3.0/jrnl_3.3.0_darwin_arm64.tar.gz"
      sha256 "75d937b74e3861fc4b42464ccf6e10bf67f0979d82b76d0b4b2c2af5e5bca8f8"
    end
    on_intel do
      url "https://github.com/gezibash/jrnl/releases/download/v3.3.0/jrnl_3.3.0_darwin_amd64.tar.gz"
      sha256 "5cd51a6898fdaf0caf06a85be295a83e841c76b1d1ad5fed5c399ec021ec4c55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gezibash/jrnl/releases/download/v3.3.0/jrnl_3.3.0_linux_arm64.tar.gz"
      sha256 "88b50c995d48b98cecbfc0f873bc67854d512e744a789f0b1aa1a93af081e333"
    end
    on_intel do
      url "https://github.com/gezibash/jrnl/releases/download/v3.3.0/jrnl_3.3.0_linux_amd64.tar.gz"
      sha256 "ec0b238730a009a3ccad89af7ad8f99c64ed7dd5df4ca815c8ee93fcbe201148"
    end
  end

  def install
    bin.install "jrnl"
  end

  test do
    assert_match "jrnl #{version}", shell_output("#{bin}/jrnl --version")
  end
end
