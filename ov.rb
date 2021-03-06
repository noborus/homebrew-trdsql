# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ov < Formula
  desc "Feature rich terminal pager"
  homepage "https://github.com/noborus/ov"
  version "0.8.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/noborus/ov/releases/download/v0.8.1/ov_0.8.1_darwin_amd64.zip"
    sha256 "9d32a3232c04be8a10d1b77ffe3db12acdfb8d61cda4f71a8e8cd767f66ef298"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/noborus/ov/releases/download/v0.8.1/ov_0.8.1_linux_amd64.zip"
    sha256 "c024a74f3ebda38b7c19e41e2d546806cd05e738121972e1600b709e6b8ebd9f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/noborus/ov/releases/download/v0.8.1/ov_0.8.1_linux_arm.zip"
    sha256 "531e2b4798372bfe9baa485e4a4621d797f7f2f482e5fe5f1d675a91934a90ae"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/noborus/ov/releases/download/v0.8.1/ov_0.8.1_linux_arm64.zip"
    sha256 "dbb4d3f67acd70a28f9d5d151a772fa99bbbcae5a7bfc6b2b1ef0b62b88daaff"
  end

  def install
    bin.install "ov"
  end

  test do
    system "#{bin}/ov --version"
  end
end
