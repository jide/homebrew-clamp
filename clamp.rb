require "formula"

class Clamp < Formula
  homepage "http://jide.github.io/clamp"
  url "https://github.com/jide/clamp.git", :using => :git, :tag => "1.3.2"
  version "1.3.2"
  sha256 "03794e01bc949878c0b233bc810ac0bc49ce64a1a490ecc110b006deebf2b16a"

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
