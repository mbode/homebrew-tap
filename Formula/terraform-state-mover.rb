# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TerraformStateMover < Formula
  desc "Refactoring Terraform code has never been easier"
  homepage "https://github.com/mbode/terraform-state-mover"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mbode/terraform-state-mover/releases/download/0.5.0/terraform-state-mover_0.5.0_Darwin_x86_64.tar.gz"
      sha256 "e9b8d7968617c5ea9bd6b187467ae6327d8085cc3d5f598efc8ac53a9b2603af"

      def install
        bin.install "terraform-state-mover"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mbode/terraform-state-mover/releases/download/0.5.0/terraform-state-mover_0.5.0_Darwin_arm64.tar.gz"
      sha256 "21bad9647985cddaf8af2826718029301f0abd00d25bb50a01aa4c25f2371d05"

      def install
        bin.install "terraform-state-mover"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mbode/terraform-state-mover/releases/download/0.5.0/terraform-state-mover_0.5.0_Linux_x86_64.tar.gz"
      sha256 "62b767c8ee6ba066a6fd2d574faf3fddf735fde9512c3c2fb1822a80878ab4dc"

      def install
        bin.install "terraform-state-mover"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mbode/terraform-state-mover/releases/download/0.5.0/terraform-state-mover_0.5.0_Linux_arm64.tar.gz"
      sha256 "420ba3d22d5676925f3c654c0e4fded275ccf5f0114a8a37a56ab769f50ea6cc"

      def install
        bin.install "terraform-state-mover"
      end
    end
  end

  test do
    system "#{bin}/terraform-state-mover", "--version"
  end
end
