EAPI=8

inherit desktop

MY_PN=${PN/-bin/}
MY_PV=${PV:0:3}
BINNAME="${MY_PN}.x86_64"

DESCRIPTION="A beginner-friendly music making app"
HOMEPAGE="https://github.com/YuriSizov/boscaceoil-blue"

SRC_URI="${HOMEPAGE}/releases/download/${MY_PV}-stable/boscaceoil-blue-linux-x86_64.zip"
S="${WORKDIR}"

SLOT="0"
LICENSE="BSD-2 MIT"
KEYWORDS="~amd64"
RESTRICT="bindist mirror"

src_install() {
  local DESTDIR="/opt/boscaceoil-blue"
  pushd "boscaceoil-blue-linux-x86_64" || die

  exeinto "${DESTDIR}"
  doexe "${BINNAME}" libgdsion.linux.template_release.x86_64.so

  dosym "${DESTDIR}/${BINNAME}" "/opt/bin/${MY_PN}"
  make_desktop_entry "${DESTDIR}/${BINNAME}" "Boscaceoil Blue" "" "Audio;AudioVideo;Sequencer"
}
