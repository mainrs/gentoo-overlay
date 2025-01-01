EAPI=8

DESCRIPTION="Secure audio disc ripper"
HOMEPAGE="https://github.com/bleskodev/rubyripper"
IUSE="+cli +gui cue discid flac mp3 normalize replaygain vorbis wave"

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="${HOMEPAGE}.git"
else
	SRC_URI="${HOMEPAGE}/archive/refs/heads/master.tar.gz"
	KEYWORDS="~amd64"
fi

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
  dev-ruby/rexml
  media-sound/cdparanoia

  cue? ( app-cdr/cdrdao )
  discid? ( media-sound/cd-discid )
  flac? (
    media-libs/flac
  )
  gui? ( dev-ruby/ruby-gtk3 )
  normalize? ( media-sound/normalize )
  mp3? (
    media-sound/lame
	replaygain? ( media-sound/mp3gain )
  )
  vorbis? (
  	media-libs/libvorbis
    replaygain? ( media-sound/vorbisgain )
  )
  wave? (
    media-sound/wavpack
    replaygain? ( media-sound/wavegain )
  )
"

src_configure() {
  # The program uses a custom configure/make build system.
  ./configure --enable-lang-all $(use_enable cli cli) $(use_enable gui gtk3) --prefix=/opt/rubyripper
}

src_compile() {
  # no-op to override default behavior.
  echo ""
}

src_install() {
  emake DESTDIR="${D}" install
}
