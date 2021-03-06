require 'spec_helper'

describe 'mail client' do
  %w(
    mutt
    fetchmail
    msmtp
    urlview
  ).each do |pkg|
    describe package(pkg) do
      it { should be_installed }
    end
  end

  describe file("#{Dir.home}/mail") do
    it { should be_directory }
    it { should be_mode 700 }
  end

  describe file("#{Dir.home}/.mutt") do
    it { should be_directory }
    it { should be_mode 700 }
  end

  describe file("#{Dir.home}/.mutt/mutt-colors-solarized/.git") do
    it { should be_directory }
  end

  describe file("#{Dir.home}/.mutt/muttrc") do
    it { should be_file }
    it { should be_mode 600 }
  end

  describe file("#{Dir.home}/.msmtprc") do
    it { should be_file }
    it { should be_mode 600 }
  end

  describe file("#{Dir.home}/.fetchmailrc") do
    it { should be_file }
    it { should be_mode 600 }
  end

  describe file("#{Dir.home}/.procmailrc") do
    it { should be_file }
    it { should be_mode 600 }
  end
end
