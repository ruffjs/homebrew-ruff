class Ruff < Formula
  desc "IoT platform with JavaScript as application language"
  homepage "https://ruff.io"
  url "http://sdk.ruff.io/ruff-sdk-mac-1.6.1.zip"
  sha256 "c8152fc562e4e565467f227b2e692a5c96f9ebc452e2f54db35d86028d8536b0"

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
