class StackSync < Formula
  desc "Interactive file synchronization tool for development teams"
  homepage "https://github.com/aa12gq/stack-file-sync-intellij"
  url "https://github.com/aa12gq/stack-file-sync-intellij/releases/download/v1.1.4/stack-sync-darwin-amd64.tar.gz"
  sha256 "e8bdf7ef2aac0e4b32ff51f30fc6cdf392b4eddfe6d4057d8a3a09a9067e5721"
  license "MIT"
  head "https://github.com/aa12gq/stack-file-sync-intellij.git", branch: "main"

  def install
    bin.install "stack-sync"
  end

  test do
    system "#{bin}/stack-sync", "version"
  end
end
