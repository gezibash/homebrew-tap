class Jrnl < Formula
  desc "Journal per project for coding agents, with search by meaning"
  homepage "https://github.com/gezibash/jrnl"
  version "3.2.0"

  on_macos do
    on_arm do
      url "https://github.com/gezibash/jrnl/releases/download/v3.2.0/jrnl_3.2.0_darwin_arm64.tar.gz"
      sha256 "4e3a88da9ea1d6180a4f29c2575fe34681579b004876ad761ba9cf316e61d292"
    end
    on_intel do
      url "https://github.com/gezibash/jrnl/releases/download/v3.2.0/jrnl_3.2.0_darwin_amd64.tar.gz"
      sha256 "95d937818306d275f539713c1974a8073799376b58c2c7c5215f171aeeea8c27"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gezibash/jrnl/releases/download/v3.2.0/jrnl_3.2.0_linux_arm64.tar.gz"
      sha256 "55d3f86004397228d918104dafcfb0151da909a65129becefeda640e58cddbc9"
    end
    on_intel do
      url "https://github.com/gezibash/jrnl/releases/download/v3.2.0/jrnl_3.2.0_linux_amd64.tar.gz"
      sha256 "ec819e9ba6fc446ebf500f615d479649b09c88fefeb0d94965034a4795780bf7"
    end
  end

  def install
    bin.install "jrnl"
  end

  test do
    assert_match "jrnl #{version}", shell_output("#{bin}/jrnl --version")
  end
end
