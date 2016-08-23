require "formula"

class Clamp < Formula
  homepage "http://jide.github.io/clamp"
  url "https://github.com/rqelibari/clamp.git", :using => :git, :tag => "1.3.2"
  version "1.3.2"
  sha1 "79d249f667e6e81964590a1ebbc1593ce7d22080"

  depends_on "mariadb"

  def install
    inreplace "clamp", /\/usr\/local\/clamp/, prefix
    prefix.install Dir["*"]
    bin.install_symlink '../clamp'
  end

  test do
    system bin/"clamp", "help"
  end
end
