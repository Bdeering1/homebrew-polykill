# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Polykill < Formula
  desc "Remove dependencies and build artifacts from unused local projects."
  homepage "https://crates.io/crates/polykill"

  url "https://github.com/Bdeering1/polykill/archive/v1.5.2.tar.gz"
  sha256 "94b8c37d0db6fdeaeb0327711f2e657e36862171096e580b1d6be5c8e09e4b94"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/polykill", "--version"
  end
end
