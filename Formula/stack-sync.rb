class StackSync < Formula
  desc "Interactive file synchronization tool for development teams"
  homepage "https://github.com/aa12gq/stack-file-sync-intellij"
  url "https://github.com/aa12gq/stack-file-sync-intellij/releases/download/v1.1.1/stack-sync"
  sha256 "98a22ea439855749b90f6b8b5789993c8e4e57abcaf253c482618ab1177e3a2a"
  license "MIT"
  head "https://github.com/aa12gq/stack-file-sync-intellij.git", branch: "main"

  # This is a binary package, not a source package
  bottle :unneeded

  def install
    bin.install "stack-sync"
  end

  test do
    system "#{bin}/stack-sync", "version"
  end
end
