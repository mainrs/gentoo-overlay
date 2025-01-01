# Copyright 2019-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# https://gitweb.gentoo.org/repo/gentoo.git/plain/net-im/rocketchat-desktop-bin/rocketchat-desktop-bin-4.1.1-r1.ebuild
#
# Modified and adapted.

EAPI=8

CHROMIUM_FLAGS="
    af am ar bg bn ca cs da de el en-GB en-US es es-419 et fa fi fil fr gu he
	hi hr hu id it ja kn ko lt lv ml mr ms nb nl pl pt-BR pt-PT ro ru sk sl sr
	sv sw ta te th tr ur vi zh-CN zh-TW
"
inherit chromium-2 desktop rpm

DESCRIPTION="A quick and easy to use drag and drop retro game creator for your favourite handheld video game system"
HOMEPAGE="https://github.com/chrismaltby/gb-studio"

LICENSE="
  MIT BSD BSD-2 BSD-4 AFL-2.1 Apache-2.0 Ms-PL GPL-2 LGPL-2.1 APSL-2
  unRAR OFL-1.1 CC-BY-SA-3.0 MPL-2.0 android public-domain all-rights-reserved
"

SRC_URI="${HOMEPAGE}/releases/download/v${PV}/gb-studio-linux-redhat.rpm"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="bindist mirror"

# Required by Electron.
RDEPEND="
  >=app-accessibility/at-spi2-core-2.46.0:2
  app-crypt/libsecret
  dev-db/sqlcipher
  dev-libs/expat
  dev-libs/glib:2
  dev-libs/nettle
  dev-libs/nspr
  dev-libs/nss
  media-libs/alsa-lib
  media-libs/mesa
  net-print/cups
  sys-apps/dbus
  virtual/udev
  x11-libs/cairo
  x11-libs/gdk-pixbuf:2
  x11-libs/gtk+:3
  x11-libs/libX11
  x11-libs/libXcomposite
  x11-libs/libXdamage
  x11-libs/libXext
  x11-libs/libXfixes
  x11-libs/libXrandr
  x11-libs/libxcb
  x11-libs/libxkbcommon
  x11-libs/pango
"

QA_PREBUILT="/opt/gb-studio/*"

pkg_pretend() {
  chromium_suid_sandbox_check_kernel_config
}

src_prepare() {
  default

  # Remove unused languages.
  pushd "usr/lib/gb-studio/locales" || die
  chromium_remove_language_paks
  popd || die
}

src_configure() {
  chromium_suid_sandbox_check_kernel_config
  default
}

src_install() {
  domenu usr/share/applications/gb-studio.desktop

  local DESTDIR="/opt/gb-studio"
  pushd "usr/lib/gb-studio" || die

  exeinto "${DESTDIR}"
  doexe chrome-sandbox gb-studio *.so*

  insinto "${DESTDIR}"
  doins *.pak *.json *.bin *.dat
  insopts -m0755
  doins -r locales resources

  fperms 4755 "${DESTDIR}"/chrome-sandbox
  dosym "${DESTDIR}"/gb-studio /opt/bin/gb-studio
}

