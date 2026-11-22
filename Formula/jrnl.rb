class Jrnl < Formula
  desc "Journal per project for coding agents, with search by meaning"
  homepage "https://github.com/gezibash/jrnl"
  version "3.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gezibash/jrnl/releases/download/v3.5.1/jrnl_3.5.1_darwin_arm64.tar.gz"
      sha256 "2037592147161406664567772315e9f8ede8b2b4b3b595a9d9da19232ab83625"
    end
    on_intel do
      url "https://github.com/gezibash/jrnl/releases/download/v3.5.1/jrnl_3.5.1_darwin_amd64.tar.gz"
      sha256 "d4238d8436a08fe2b02981e1a9c03fb496f2f292f5bd9fd05848467d94e3fd55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gezibash/jrnl/releases/download/v3.5.1/jrnl_3.5.1_linux_arm64.tar.gz"
      sha256 "e294da466eaa17040b73d4d0e31ceed3f5b56718a496cc26fdd8e2d0731c013a"
    end
    on_intel do
      url "https://github.com/gezibash/jrnl/releases/download/v3.5.1/jrnl_3.5.1_linux_amd64.tar.gz"
      sha256 "4b072802c71586c3217494a50d8fc6804057597a2a5cde78eaa85428e1b9668f"
    end
  end

  def install
    bin.install "jrnl"
  end

  test do
    assert_match "jrnl #{version}", shell_output("#{bin}/jrnl --version")
  end
end
