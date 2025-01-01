EAPI=8
inherit rpm xdg-utils

REVISION=1
MY_PV="${PV}-${REVISION}"

DESCRIPTION="Desktop client for Proton Pass"
HOMEPAGE="https://proton.me/pass"
SRC_URI="https://proton.me/download/pass/linux/proton-pass-${MY_PV}.x86_64.rpm"
S="${WORKDIR}"

LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="~amd64"

QA_PREBUILT="opt/proton-pass/*"

src_install() {
  into /opt
  cp -r "${S}"/usr/lib/* "${D}/opt/proton-pass" || die "Failed to copy files to destination directory"

  dosym "../../opt/proton-pass/Proton Pass" "/opt/bin/proton-pass"

  insinto /usr/share
  doins -r "${S}/usr/share/pixmaps"
  doins -r "${S}/usr/share/applications"
}

pkg_postinst() {
  xdg_desktop_database_update
}

pkg_postrm() {
  xdg_desktop_database_update
}
