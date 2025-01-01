EAPI=8
inherit go-module

DESCRIPTION="Generate images of code and terminal output"
HOMEPAGE="https://github.com/charmbracelet/freeze"
SRC_URI="${HOMEPAGE}/archive/refs/tags/v${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

src_unpack() {
    # Unpack vendored dependencies.
    target="${WORKDIR}"
    if [[ -n "${target}" ]]; then
        mkdir -p $target
        tar -xvf "${FILESDIR}/${P}-vendor.tar.xz" -C "${target}"
    fi

    default
}

src_compile() {
  ego build
}

src_install() {
  dobin "${PN}"
}
