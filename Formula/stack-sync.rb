class StackSync < Formula
  desc "Interactive file synchronization tool for development teams"
  homepage "https://github.com/aa12gq/stack-file-sync-intellij"
  version "1.2.0"
  license "MIT"

  head "https://github.com/aa12gq/stack-file-sync-intellij.git", branch: "main"

  url "https://github.com/aa12gq/stack-file-sync-intellij/archive/700d2080b92a3996e730fd54cd072ed101dac37e.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"

  depends_on "go" => :build

  def install
    cd "stack-sync-cli" do
      system "go", "build",
             "-ldflags", "-X main.Version=1.2.0",
             "-o", bin/"stack-sync",
             "./cmd/stack-sync"
    end
  end

  test do
    system "#{bin}/stack-sync", "--version"
  end
end
