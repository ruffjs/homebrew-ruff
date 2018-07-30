class Ruff < Formula
  desc "IoT platform with JavaScript as application language"
  homepage "https://ruff.io"
  url "https://link.ruff.io/?target=ruff-sdk-mac-1.11.10.zip"
  sha256 "60a6ca137fae1ee15f4aa81b02aa357f533ba59378867cd61cb6a4af126bbde0"

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
