class Ruff < Formula
  desc "IoT platform with JavaScript as application language"
  homepage "https://ruff.io"
  url "https://link.ruff.io/?target=ruff-sdk-mac-1.10.0.zip"
  sha256 "1b2ef9b7913e4a3206c2f6eac454f2530999d7db14dae912d2ebf9264d465afe"

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
