EAPI=8

inherit go-module

DESCRIPTION="A cross-platform TUI database managemen tool written in Go"
HOMEPAGE="https://github.com/jorgerojas26/lazysql"
SRC_URI="${HOMEPAGE}/archive/refs/tags/v${PV}.tar.gz"

# S="${WORKDIR}/${PN}-${COMMIT}/"

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
  ego build -v -x -o "${PN}" -ldflags="-X main.version=${PV}"
}

src_install() {
  dobin "${PN}"
}
