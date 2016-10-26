class Ruff < Formula
  desc "IoT platform with JavaScript as application language"
  homepage "https://ruff.io"
  url "http://sdk.ruff.io/ruff-sdk-mac-1.6.0.zip"
  sha256 "6855e155b1d9fbaddc83123ffa6e8c80e47f86dd42df67782be91241f167f357"

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
