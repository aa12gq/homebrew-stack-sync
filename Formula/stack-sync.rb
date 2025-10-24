class StackSync < Formula
  desc "Interactive file synchronization tool for development teams"
  homepage "https://github.com/aa12gq/stack-file-sync-intellij"
  url "https://github.com/aa12gq/stack-file-sync-intellij/archive/refs/tags/v1.1.4.tar.gz"
  sha256 "eacc9481a43fe637b58653b712dc013c4e831049f0603e8ef8ad1bfed588a9f2"
  license "MIT"
  head "https://github.com/aa12gq/stack-file-sync-intellij.git", branch: "main"

  depends_on "go" => :build

  def install
    # 进入 stack-sync-cli 目录
    cd "stack-sync-cli" do
      system "go", "build", "-o", bin/"stack-sync", "./cmd/stack-sync"
    end
  end

  test do
    system "#{bin}/stack-sync", "version"
  end
end
