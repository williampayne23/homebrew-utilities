# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class YabaiWrapper < Formula
  desc "Wrapper for yabai window manager"
  homepage "https://github.com/williampayne23/Yabai_Wrapper"
  url "https://github.com/williampayne23/Yabai_Wrapper/archive/v1.5.3.tar.gz"
  sha256 "0a17306d3c711a76cdaf654157605b482d8f3ca7997f8c83f95430aa71242f2c"
  license "GPL-2.0"
  bottle :unneeded

  def install
    libexec.install "src/yabai_wrapper.sh" => "yabai_wrapper" and libexec.install Dir["src/*"] and bin.write_exec_script (libexec/"yabai_wrapper")
  end
end
