# frozen_string_literal: true

require 'spec_helper'

describe 'apache::mod::dir', type: :class do
  it_behaves_like 'a mod class, without including apache'

  context 'default configuration with parameters on a Debian OS' do
    let :facts do
      {
        osfamily: 'Debian',
        operatingsystemrelease: '8',
        operatingsystem: 'Debian',
        id: 'root',
        kernel: 'Linux',
        path: '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
        lsbdistcodename: 'jessie',
        is_pe: false,
      }
    end

    context 'passing no parameters' do
      it { is_expected.to contain_class('apache::params') }
      it { is_expected.to contain_apache__mod('dir') }
      it { is_expected.to contain_file('dir.conf').with_content(%r{^DirectoryIndex }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ index\.html }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ index\.html\.var }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ index\.cgi }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ index\.pl }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ index\.php }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ index\.xhtml$}) }
    end
    context "passing indexes => ['example.txt','fearsome.aspx']" do
      let :params do
        { indexes: ['example.txt', 'fearsome.aspx'] }
      end

      it { is_expected.to contain_file('dir.conf').with_content(%r{ example\.txt }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ fearsome\.aspx$}) }
    end
  end
  context 'default configuration with parameters on a RedHat OS' do
    let :facts do
      {
        osfamily: 'RedHat',
        operatingsystemrelease: '6',
        operatingsystem: 'Redhat',
        id: 'root',
        kernel: 'Linux',
        path: '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
        is_pe: false,
      }
    end

    context 'passing no parameters' do
      it { is_expected.to contain_class('apache::params') }
      it { is_expected.to contain_apache__mod('dir') }
      it { is_expected.to contain_file('dir.conf').with_content(%r{^DirectoryIndex }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ index\.html }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ index\.html\.var }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ index\.cgi }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ index\.pl }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ index\.php }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ index\.xhtml$}) }
    end
    context "passing indexes => ['example.txt','fearsome.aspx']" do
      let :params do
        { indexes: ['example.txt', 'fearsome.aspx'] }
      end

      it { is_expected.to contain_file('dir.conf').with_content(%r{ example\.txt }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ fearsome\.aspx$}) }
    end
  end
  context 'default configuration with parameters on a FreeBSD OS' do
    let :facts do
      {
        osfamily: 'FreeBSD',
        operatingsystemrelease: '9',
        operatingsystem: 'FreeBSD',
        id: 'root',
        kernel: 'FreeBSD',
        path: '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
        is_pe: false,
      }
    end

    context 'passing no parameters' do
      it { is_expected.to contain_class('apache::params') }
      it { is_expected.to contain_apache__mod('dir') }
      it { is_expected.to contain_file('dir.conf').with_content(%r{^DirectoryIndex }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ index\.html }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ index\.html\.var }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ index\.cgi }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ index\.pl }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ index\.php }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ index\.xhtml$}) }
    end
    context "passing indexes => ['example.txt','fearsome.aspx']" do
      let :params do
        { indexes: ['example.txt', 'fearsome.aspx'] }
      end

      it { is_expected.to contain_file('dir.conf').with_content(%r{ example\.txt }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ fearsome\.aspx$}) }
    end
  end
  context 'default configuration with parameters on a Gentoo OS' do
    let :facts do
      {
        osfamily: 'Gentoo',
        operatingsystem: 'Gentoo',
        operatingsystemrelease: '3.16.1-gentoo',
        id: 'root',
        kernel: 'Linux',
        path: '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/bin',
        is_pe: false,
      }
    end

    context 'passing no parameters' do
      it { is_expected.to contain_class('apache::params') }
      it { is_expected.to contain_apache__mod('dir') }
      it { is_expected.to contain_file('dir.conf').with_content(%r{^DirectoryIndex }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ index\.html }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ index\.html\.var }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ index\.cgi }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ index\.pl }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ index\.php }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ index\.xhtml$}) }
    end
    context "passing indexes => ['example.txt','fearsome.aspx']" do
      let :params do
        { indexes: ['example.txt', 'fearsome.aspx'] }
      end

      it { is_expected.to contain_file('dir.conf').with_content(%r{ example\.txt }) }
      it { is_expected.to contain_file('dir.conf').with_content(%r{ fearsome\.aspx$}) }
    end
  end
end
