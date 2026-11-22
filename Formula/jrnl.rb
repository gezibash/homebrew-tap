class Jrnl < Formula
  desc "Journal per project for coding agents, with search by meaning"
  homepage "https://github.com/gezibash/jrnl"
  version "3.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gezibash/jrnl/releases/download/v3.4.0/jrnl_3.4.0_darwin_arm64.tar.gz"
      sha256 "acada6e53e5f8c863bdd4dc726eaae798b096dec65d634948b3ef20e4316062f"
    end
    on_intel do
      url "https://github.com/gezibash/jrnl/releases/download/v3.4.0/jrnl_3.4.0_darwin_amd64.tar.gz"
      sha256 "dabe970c55ffcbddb39e3e61b366059cdb16c57331bdf59ed49ea8a661a85b8b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gezibash/jrnl/releases/download/v3.4.0/jrnl_3.4.0_linux_arm64.tar.gz"
      sha256 "f9c0ff939588951af0b3f82b58103f7ac71eab62cbefc72633e3ebb1b2bbd311"
    end
    on_intel do
      url "https://github.com/gezibash/jrnl/releases/download/v3.4.0/jrnl_3.4.0_linux_amd64.tar.gz"
      sha256 "1f1fd601fa6a4a7d2bb70c6ca1cfddd1a406a21715ac2916f721b597c726b0ab"
    end
  end

  def install
    bin.install "jrnl"
  end

  test do
    assert_match "jrnl #{version}", shell_output("#{bin}/jrnl --version")
  end
end
