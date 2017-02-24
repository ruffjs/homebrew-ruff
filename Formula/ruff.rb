class Ruff < Formula
  desc "IoT platform with JavaScript as application language"
  homepage "https://ruff.io"
  url "https://link.ruff.io/?target=ruff-sdk-mac-1.7.1.zip"
  sha256 "f64463125151a568e0e615cd54afaad739fcd28a922ac6ffa343157576af4f43"

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
