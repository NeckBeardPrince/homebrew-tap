# frozen_string_literal: true

# This file is automatically updated by GoReleaser on each release.
# Do not edit manually.
cask 'howtfdoi' do
  version '1.0.10'

  if Hardware::CPU.arm?
    url "https://github.com/NeckBeardPrince/howtfdoi/releases/download/v#{version}/howtfdoi_#{version}_darwin_arm64.tar.gz"
    sha256 'PLACEHOLDER_ARM64'
  else
    url "https://github.com/NeckBeardPrince/howtfdoi/releases/download/v#{version}/howtfdoi_#{version}_darwin_amd64.tar.gz"
    sha256 'PLACEHOLDER_AMD64'
  end

  name 'howtfdoi'
  desc 'Instant AI-powered CLI command answers from your terminal'
  homepage 'https://github.com/NeckBeardPrince/howtfdoi'

  binary 'howtfdoi'

  zap trash: [
    '~/.config/howtfdoi',
    '~/.local/state/howtfdoi'
  ]
end
