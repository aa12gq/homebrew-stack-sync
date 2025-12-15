class StackSync < Formula
  desc "Interactive file synchronization tool for development teams"
  homepage "https://github.com/aa12gq/stack-file-sync-intellij"
  version "1.2.0"
  license "MIT"

  head "https://github.com/aa12gq/stack-file-sync-intellij.git", branch: "main"

  url "https://github.com/aa12gq/stack-file-sync-intellij/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "4857f6d23b727bd07aab9bf73d9569aa77ca0db1a4d8448e078819d2a4fb489f"

  depends_on "go" => :build

  def install
    cd "stack-sync-cli" do
      system "go", "build", "-o", bin/"stack-sync", "./cmd/stack-sync"
    end
  end

  test do
    system "#{bin}/stack-sync", "--version"
  end
end
