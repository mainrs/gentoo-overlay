# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# https://github.com/FlyingWaffleDev/waffle-builds/blob/411893ae555f010adef2fdf97193563064054136/net-vpn/proton-vpn-gtk-app/proton-vpn-gtk-app-4.3.0-r1.ebuild
#
# Modified to newest versions.

EAPI=8

PYTHON_COMPAT=( python3_{10..12} )
DISTUTILS_USE_SETUPTOOLS=rdepend

inherit distutils-r1 desktop

MY_PN=${PN/-bin/}

DESCRIPTION="Official ProtonVPN Linux app"
HOMEPAGE="https://protonvpn.com https://github.com/ProtonVPN/proton-vpn-gtk-app"
SRC_URI="
  https://github.com/ProtonVPN/${MY_PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
  https://github.com/ProtonVPN/python-proton-core/archive/refs/tags/v0.3.3.tar.gz -> pp-core-0.3.3.tar.gz
  https://github.com/ProtonVPN/python-proton-vpn-api-core/archive/refs/tags/v0.36.6.tar.gz -> ppv-api-core-0.36.6.tar.gz
  https://github.com/ProtonVPN/python-proton-vpn-network-manager/archive/refs/tags/v0.9.7.tar.gz -> ppv-network-manager-0.9.7.tar.gz
  https://github.com/ProtonVPN/python-proton-keyring-linux/archive/refs/tags/v0.1.0.tar.gz -> pp-keyring-linux-0.1.0.tar.gz
"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

IUSE="+networkmanager"
RESTRICT="test primaryuri"

RDEPEND="
  dev-python/pygobject[${PYTHON_USEDEP}]
  dev-python/pycairo[${PYTHON_USEDEP}]
  dev-python/dbus-python[${PYTHON_USEDEP}]
  dev-python/packaging[${PYTHON_USEDEP}]
  dev-python/jinja2[${PYTHON_USEDEP}]
  dev-python/requests[${PYTHON_USEDEP}]
  dev-python/bcrypt[${PYTHON_USEDEP}]
  dev-python/python-gnupg[${PYTHON_USEDEP}]
  dev-python/pyopenssl[${PYTHON_USEDEP}]
  dev-python/aiohttp[${PYTHON_USEDEP}]
  dev-python/distro[${PYTHON_USEDEP}]
  dev-python/cryptography[${PYTHON_USEDEP}]
  dev-python/pynacl[${PYTHON_USEDEP}]
  dev-python/secretstorage[${PYTHON_USEDEP}]
  dev-python/keyring[${PYTHON_USEDEP}]
  networkmanager? ( net-vpn/networkmanager-openvpn )
"
DEPEND="${RDEPEND}"
S="${WORKDIR}"

src_compile() {
  for d in "${S}"/*; do
    if [ -d "$d" ]; then
      cd "$d" || return
	  distutils-r1_src_compile
	fi
  done
}

src_install() {
  for d in "${S}"/*; do
    if [[ "$d" == *"build-python"* ]]; then
      continue
	fi

	if [ -d "$d" ]; then
      cd "$d" || return
	  distutils-r1_src_install
	fi
  done

  rm "${D}/usr/version.py"
  rm "${D}/usr/versions.yml"

  domenu "${S}/${MY_PN}-${PV}/rpmbuild/SOURCES/protonvpn-app.desktop"
  doicon "${S}/${MY_PN}-${PV}/rpmbuild/SOURCES/proton-vpn-logo.svg"
}

