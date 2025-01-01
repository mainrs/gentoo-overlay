# Copyright 2019-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# https://gitweb.gentoo.org/repo/gentoo.git/plain/net-im/rocketchat-desktop-bin/rocketchat-desktop-bin-4.1.1-r1.ebuild
#
# Modified and adapted.

EAPI=8

MY_PN="grayjay"

CHROMIUM_LANGS="
	af am ar bg bn ca cs da de el en-GB en-US es es-419 et fa fi fil fr gu he hi
	hr hu id it ja kn ko lt lv ml mr ms nb nl pl pt-BR pt-PT ro ru sk sl sr sv
	sw ta te th tr uk ur vi zh-CN zh-TW
"

inherit chromium-2 desktop

DESCRIPTION="Video player and source aggregator that allows for streaming and organization of videos across different paltforms."
HOMEPAGE="https://grayjay.app https://gitlab.futo.org/videostreaming/grayjay"
SRC_URI="https://updater.grayjay.app/Apps/Grayjay.Desktop/Grayjay.Desktop-linux-x64.zip"
S="${WORKDIR}/Grayjay.Desktop-linux-x64-v${PV}"

# Electron bundles a bunch of things
LICENSE="
	MIT BSD BSD-2 BSD-4 AFL-2.1 Apache-2.0 Ms-PL GPL-2 LGPL-2.1 APSL-2
	unRAR OFL-1.1 CC-BY-SA-3.0 MPL-2.0 android public-domain all-rights-reserved
"
LICENSE="${LICENSE} FUTO-Grayjay"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="bindist mirror"

RDEPEND="
	>=app-accessibility/at-spi2-core-2.46.0:2
	dev-libs/expat
	dev-libs/glib:2
	dev-libs/libayatana-appindicator
	dev-libs/nspr
	dev-libs/nss
	media-fonts/noto-emoji
	media-libs/alsa-lib
	media-libs/mesa
	net-print/cups
	sys-libs/glibc
	sys-apps/dbus
	x11-libs/cairo
	x11-libs/gtk+:3
	x11-libs/libX11
	x11-libs/libXcomposite
	x11-libs/libXdamage
	x11-libs/libXext
	x11-libs/libXfixes
	x11-libs/libXrandr
	x11-libs/libdrm
	x11-libs/libxcb
	x11-libs/libxkbcommon
	x11-libs/pango
"

QA_PREBUILT="opt/GrayJay/*"

DESTDIR="/opt/${MY_PN}"

pkg_pretend() {
  chromium_suid_sandbox_check_kernel_config
}

src_prepare() {
  default
  # Remove unwanted language files.
  pushd "cef/locales" || die
  chromium_remove_language_paks
  popd || die
}

src_configure() {
  chromium_suid_sandbox_check_kernel_config
  default
}

src_install() {
  exeinto "${DESTDIR}"
  doexe ClearScriptV8.linux-x64.so ffmpeg FUTO.Updater.Client Grayjay \
	  libe_sqlite3.so libsodium.so

  exeinto "${DESTDIR}/cef"
  doexe cef/chrome-sandbox cef/dotcefnative cef/libcef.so cef/libEGL.so cef/libvk_swiftshader.so \
	  cef/libvulkan.so.1

  insinto "${DESTDIR}"
  doins AppVersion.json FUTO.MDNS.pdb grayjay.png logo.ico logo.svg Portable \
      UpdaterConfig.json UpdaterOSConfig.json \
	  wwwroot
  insinto "${DESTDIR}/cef"
  doins cef/chrome_100_percent.pak cef/chrome_200_percent.pak cef/icudtl.dat cef/resources.pak \
	  cef/snapshot_blob.bin cef/v8_context_snapshot.bin cef/vk_swiftshader_icd.json

  # Locales.
  insopts -m0755
  doins -r cef/locales

  # Chrome-sandbox requires the setuid bit to be specifically set.
  # see https://github.com/electron/electron/issues/17972
  fperms 4755 "${DESTDIR}"/cef/chrome-sandbox
  #fowners root "${DESTDIR}/cef/chrome-sandbox"
  #fperms 4711 "${DESTDIR}/cef/chrome-sandbox"
}

