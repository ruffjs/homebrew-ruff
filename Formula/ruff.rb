class Ruff < Formula
  desc "IoT platform with JavaScript as application language"
  homepage "https://ruff.io"
  url "http://sdk.ruff.io/ruff-sdk-mac-1.6.2.zip"
  sha256 "e5e58a752aa8cdf4e924ce7946e3a26a175cf5b75519849cb52b742689fe33d6"

  def install
    prefix.install Dir["*"]
  end

  test do
    (testpath/"ruff-test.js").write <<-EOS.undent
      console.log("hello, Ruff")
    EOS
    system "#{bin}/ruff", testpath/"ruff-test.js"
  end
end
