# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class YabaiWrapper < Formula
  desc "Hi"
  homepage "https://github.com/williampayne23/Yabai_Wrapper"
  license ""
  url "https://github.com/williampayne23/Yabai_Wrapper/archive/refs/tags/v1.3.tar.gz"
  sha256 "3663e871a2bd1b7dc582980610f2dfa36d767af77326ca80d2449910f9dbfb7e"
  head "https://github.com/williampayne23/Yabai_Wrapper/archive/refs/tags/v1.3.tar.gz"

  depends_on "yabai"

  def install
    libexec.install "src/yabai_wrapper.sh" => "yabai_wrapper"
    libexec.install Dir["src/*"]

    # Then write executables under #{bin}/
    bin.write_exec_script (libexec/"yabai_wrapper")
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test Yabai_Wrapper`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
