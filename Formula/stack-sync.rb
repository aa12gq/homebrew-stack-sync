class StackSync < Formula
  desc "Interactive file synchronization tool for development teams"
  homepage "https://github.com/aa12gq/stack-file-sync-intellij"
  version "1.1.5"
  license "MIT"
  
  head "https://github.com/aa12gq/stack-file-sync-intellij.git", branch: "main"

  # Use universal binary for macOS (supports both Intel and ARM)
  url "https://github.com/aa12gq/stack-file-sync-intellij/releases/download/v1.1.5/stack-sync-darwin-universal.tar.gz"
  sha256 "13f200db1238317a0949d4c7abff8c1f302522cd191d831274aa5cf11a4989a1"

  def install
    bin.install "stack-sync-darwin-universal" => "stack-sync"
  end

  test do
    system "#{bin}/stack-sync", "version"
  end
end
