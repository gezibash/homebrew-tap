class Jrnl < Formula
  desc "Journal per project for coding agents, with search by meaning"
  homepage "https://github.com/gezibash/jrnl"
  version "4.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gezibash/jrnl/releases/download/v4.0.2/jrnl_4.0.2_darwin_arm64.tar.gz"
      sha256 "05e0db9be95d17cb89457d1afb07a1ac45f54acd3a66c3d33ff482de23e48c17"
    end
    on_intel do
      url "https://github.com/gezibash/jrnl/releases/download/v4.0.2/jrnl_4.0.2_darwin_amd64.tar.gz"
      sha256 "0b6399ab85b6faeb5fcda9caae5417bacb6d66d147695df372d75da8877cb8d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gezibash/jrnl/releases/download/v4.0.2/jrnl_4.0.2_linux_arm64.tar.gz"
      sha256 "10ab61324c49a988278e326a1c37f2c198100f9de7241151b53a69d180727d49"
    end
    on_intel do
      url "https://github.com/gezibash/jrnl/releases/download/v4.0.2/jrnl_4.0.2_linux_amd64.tar.gz"
      sha256 "0b64de036e572663798b8eb394f4a9643f427f4643e24ef54e083e754c596c51"
    end
  end

  def install
    bin.install "jrnl"
  end

  test do
    assert_match "jrnl #{version}", shell_output("#{bin}/jrnl --version")
  end
end
