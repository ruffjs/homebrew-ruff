class Ruff < Formula
  desc "IoT platform with JavaScript as application language"
  homepage "https://ruff.io"
  url "https://link.ruff.io/?target=ruff-sdk-mac-1.11.5.zip"
  sha256 "8d781fe86b17f17f29d387c6018164b1e34dd33c304f90718c4ed26408e4db9d"

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
