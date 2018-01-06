class Ruff < Formula
  desc "IoT platform with JavaScript as application language"
  homepage "https://ruff.io"
  url "https://link.ruff.io/?target=ruff-sdk-mac-1.11.4.zip"
  sha256 "852d91fd0de7c62a334a914f54e30480c0f20fd4c32aa5495f3586a488534c1a"

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
