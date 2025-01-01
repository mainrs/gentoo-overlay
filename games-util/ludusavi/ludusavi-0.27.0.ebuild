# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.4

EAPI=8

CRATES="
	ab_glyph@0.2.29
	ab_glyph_rasterizer@0.1.8
	addr2line@0.24.2
	adler2@2.0.0
	aes@0.8.4
	ahash@0.7.8
	ahash@0.8.11
	aho-corasick@1.1.3
	allocator-api2@0.2.18
	android-activity@0.6.0
	android-properties@0.2.2
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anstream@0.6.15
	anstyle-parse@0.2.5
	anstyle-query@1.1.1
	anstyle-wincon@3.0.4
	anstyle@1.0.8
	approx@0.5.1
	arrayref@0.3.9
	arrayvec@0.7.6
	as-raw-xcb-connection@1.0.1
	ash@0.37.3+1.3.251
	async-compression@0.4.15
	atk-sys@0.18.0
	atomic-waker@1.1.2
	autocfg@1.4.0
	backtrace@0.3.74
	base64@0.22.1
	base64ct@1.6.0
	bit-set@0.5.3
	bit-vec@0.6.3
	bitflags@1.3.2
	bitflags@2.6.0
	bitvec@1.0.1
	block-buffer@0.10.4
	block2@0.5.1
	block@0.1.6
	borsh-derive@1.5.1
	borsh@1.5.1
	bstr@1.10.0
	bumpalo@3.16.0
	by_address@1.2.1
	byte-unit@5.1.4
	bytecheck@0.6.12
	bytecheck_derive@0.6.12
	bytemuck@1.19.0
	bytemuck_derive@1.8.0
	byteorder-lite@0.1.0
	byteorder@1.5.0
	bytes@1.7.2
	bzip2-sys@0.1.11+1.0.8
	bzip2@0.4.4
	cairo-sys-rs@0.18.2
	calloop-wayland-source@0.3.0
	calloop@0.13.0
	cc@1.1.30
	cesu8@1.1.0
	cfg-expr@0.15.8
	cfg-if@1.0.0
	cfg_aliases@0.1.1
	cfg_aliases@0.2.1
	chrono@0.4.38
	cipher@0.4.4
	clap@4.5.20
	clap_builder@4.5.20
	clap_complete@4.5.33
	clap_derive@4.5.18
	clap_lex@0.7.2
	clipboard-win@5.4.0
	clipboard_macos@0.1.1
	clipboard_wayland@0.2.2
	clipboard_x11@0.4.2
	codespan-reporting@0.11.1
	colorchoice@1.0.2
	com@0.6.0
	com_macros@0.6.0
	com_macros_support@0.6.0
	combine@4.6.7
	concurrent-queue@2.5.0
	console@0.15.8
	constant_time_eq@0.1.5
	core-foundation-sys@0.8.7
	core-foundation@0.10.0
	core-foundation@0.9.4
	core-graphics-types@0.1.3
	core-graphics-types@0.2.0
	core-graphics@0.23.2
	core-graphics@0.24.0
	cosmic-text@0.12.1
	cpufeatures@0.2.14
	crc-catalog@2.4.0
	crc32fast@1.4.2
	crc@3.2.1
	crossbeam-channel@0.5.13
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-queue@0.3.11
	crossbeam-utils@0.8.20
	crunchy@0.2.2
	crypto-common@0.1.6
	ctor-lite@0.1.0
	cursor-icon@1.1.0
	d3d12@0.19.0
	dbus@0.9.7
	deranged@0.3.11
	dialoguer@0.11.0
	diff@0.1.13
	digest@0.10.7
	dirs-sys@0.4.1
	dirs@5.0.1
	dispatch@0.2.0
	displaydoc@0.2.5
	dlib@0.5.2
	downcast-rs@1.2.1
	dpi@0.1.1
	drm-ffi@0.8.0
	drm-fourcc@2.2.0
	drm-sys@0.7.0
	drm@0.12.0
	dyn-clone@1.0.17
	either@1.13.0
	encode_unicode@0.3.6
	equivalent@1.0.1
	errno@0.3.9
	error-code@3.3.1
	etagere@0.2.13
	euclid@0.22.11
	fallible-iterator@0.3.0
	fallible-streaming-iterator@0.1.9
	fast-srgb8@1.0.0
	fastrand@2.1.1
	fdeflate@0.3.5
	filetime@0.2.25
	flate2@1.0.34
	flexi_logger@0.29.3
	fluent-bundle@0.15.3
	fluent-langneg@0.13.0
	fluent-syntax@0.11.1
	fluent@0.16.1
	fnv@1.0.7
	font-types@0.7.2
	fontconfig-parser@0.5.7
	fontdb@0.16.2
	foreign-types-macros@0.2.3
	foreign-types-shared@0.3.1
	foreign-types@0.5.0
	form_urlencoded@1.2.1
	funty@2.0.0
	futures-channel@0.3.31
	futures-core@0.3.31
	futures-executor@0.3.31
	futures-io@0.3.31
	futures-macro@0.3.31
	futures-sink@0.3.31
	futures-task@0.3.31
	futures-util@0.3.31
	futures@0.3.31
	fuzzy-matcher@0.3.7
	gdk-pixbuf-sys@0.18.0
	gdk-sys@0.18.0
	generic-array@0.14.7
	gethostname@0.4.3
	getrandom@0.2.15
	gimli@0.31.1
	gio-sys@0.18.1
	gl_generator@0.14.0
	glam@0.25.0
	glib-sys@0.18.1
	globetter@0.2.0
	globset@0.4.15
	glow@0.13.1
	glutin_wgl_sys@0.5.0
	gobject-sys@0.18.0
	gpu-alloc-types@0.3.0
	gpu-alloc@0.6.0
	gpu-allocator@0.25.0
	gpu-descriptor-types@0.1.2
	gpu-descriptor@0.2.4
	gtk-sys@0.18.0
	guillotiere@0.6.2
	half@2.4.1
	hashbrown@0.12.3
	hashbrown@0.14.5
	hashbrown@0.15.0
	hashlink@0.9.1
	hassle-rs@0.11.0
	heck@0.5.0
	hermit-abi@0.3.9
	hermit-abi@0.4.0
	hexf-parse@0.2.1
	hmac@0.12.1
	home@0.5.9
	http-body-util@0.1.2
	http-body@1.0.1
	http@1.1.0
	httparse@1.9.5
	hyper-rustls@0.27.3
	hyper-util@0.1.9
	hyper@1.4.1
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.61
	iced@0.13.1
	iced_core@0.13.2
	iced_futures@0.13.2
	iced_glyphon@0.6.0
	iced_graphics@0.13.0
	iced_renderer@0.13.0
	iced_runtime@0.13.2
	iced_tiny_skia@0.13.0
	iced_wgpu@0.13.5
	iced_widget@0.13.4
	iced_winit@0.13.0
	idna@0.5.0
	image@0.25.2
	indexmap@1.9.3
	indexmap@2.6.0
	indicatif@0.17.8
	inout@0.1.3
	instant@0.1.13
	intl-memoizer@0.5.2
	intl_pluralrules@7.0.2
	ipnet@2.10.1
	is_terminal_polyfill@1.70.1
	itertools@0.13.0
	itoa@1.0.11
	jni-sys@0.3.0
	jni@0.21.1
	jobserver@0.1.32
	js-sys@0.3.72
	keyvalues-parser@0.2.0
	keyvalues-serde@0.2.1
	khronos-egl@6.0.0
	khronos_api@3.1.0
	known-folders@1.2.0
	kurbo@0.10.4
	lazy_static@1.5.0
	libc@0.2.159
	libdbus-sys@0.2.5
	libloading@0.7.4
	libloading@0.8.5
	libm@0.2.8
	libredox@0.0.2
	libredox@0.1.3
	libsqlite3-sys@0.30.1
	linked-hash-map@0.5.6
	linux-raw-sys@0.4.14
	linux-raw-sys@0.6.5
	lock_api@0.4.12
	log@0.4.22
	lru@0.12.5
	malloc_buf@0.0.6
	memchr@2.7.4
	memmap2@0.9.5
	metal@0.27.0
	mime@0.3.17
	minimal-lexical@0.2.1
	miniz_oxide@0.8.0
	mio@1.0.2
	naga@0.19.2
	ndk-context@0.1.1
	ndk-sys@0.5.0+25.2.9519653
	ndk-sys@0.6.0+11769913
	ndk@0.9.0
	nom@7.1.3
	normpath@1.3.0
	nu-ansi-term@0.50.1
	num-conv@0.1.0
	num-traits@0.2.19
	num_cpus@1.16.0
	num_enum@0.7.3
	num_enum_derive@0.7.3
	number_prefix@0.4.0
	objc-sys@0.3.5
	objc2-app-kit@0.2.2
	objc2-cloud-kit@0.2.2
	objc2-contacts@0.2.2
	objc2-core-data@0.2.2
	objc2-core-image@0.2.2
	objc2-core-location@0.2.2
	objc2-encode@4.0.3
	objc2-foundation@0.2.2
	objc2-link-presentation@0.2.2
	objc2-metal@0.2.2
	objc2-quartz-core@0.2.2
	objc2-symbols@0.2.2
	objc2-ui-kit@0.2.2
	objc2-uniform-type-identifiers@0.2.2
	objc2-user-notifications@0.2.2
	objc2@0.5.2
	objc@0.2.7
	objc_exception@0.1.2
	object@0.36.5
	once_cell@1.20.2
	opener@0.7.2
	option-ext@0.2.0
	orbclient@0.3.47
	owned_ttf_parser@0.25.0
	palette@0.7.6
	palette_derive@0.7.6
	pango-sys@0.18.0
	parking_lot@0.11.2
	parking_lot@0.12.3
	parking_lot_core@0.8.6
	parking_lot_core@0.9.10
	password-hash@0.4.2
	paste@1.0.15
	pbkdf2@0.11.0
	percent-encoding@2.3.1
	pest@2.7.14
	pest_derive@2.7.14
	pest_generator@2.7.14
	pest_meta@2.7.14
	phf@0.11.2
	phf_generator@0.11.2
	phf_macros@0.11.2
	phf_shared@0.11.2
	pin-project-internal@1.1.6
	pin-project-lite@0.2.14
	pin-project@1.1.6
	pin-utils@0.1.0
	pkg-config@0.3.31
	png@0.17.14
	polling@3.7.3
	portable-atomic@1.9.0
	powerfmt@0.2.0
	ppv-lite86@0.2.20
	presser@0.3.1
	pretty_assertions@1.4.1
	proc-macro-crate@3.2.0
	proc-macro-error-attr@1.0.4
	proc-macro-error@1.0.4
	proc-macro2@1.0.87
	profiling@1.0.16
	ptr_meta@0.1.4
	ptr_meta_derive@0.1.4
	quick-xml@0.36.2
	quinn-proto@0.11.8
	quinn-udp@0.5.5
	quinn@0.11.5
	quote@1.0.37
	radium@0.7.0
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	range-alloc@0.1.3
	rangemap@1.5.1
	raw-window-handle@0.6.2
	rayon-core@1.12.1
	rayon@1.10.0
	read-fonts@0.22.3
	redox_syscall@0.2.16
	redox_syscall@0.4.1
	redox_syscall@0.5.7
	redox_users@0.4.6
	regashii@0.2.0
	regex-automata@0.4.8
	regex-syntax@0.8.5
	regex@1.11.0
	rend@0.4.2
	renderdoc-sys@1.1.0
	reqwest@0.12.8
	rfd@0.15.0
	ring@0.17.8
	rkyv@0.7.45
	rkyv_derive@0.7.45
	roxmltree@0.20.0
	rusqlite@0.32.1
	rust_decimal@1.36.0
	rustc-demangle@0.1.24
	rustc-hash@1.1.0
	rustc-hash@2.0.0
	rustix@0.38.37
	rustls-pemfile@2.2.0
	rustls-pki-types@1.10.0
	rustls-webpki@0.102.8
	rustls@0.23.14
	rustybuzz@0.14.1
	ryu@1.0.18
	same-file@1.0.6
	schemars@0.8.21
	schemars_derive@0.8.21
	scoped-tls@1.0.1
	scopeguard@1.2.0
	sctk-adwaita@0.10.1
	seahash@4.1.0
	self_cell@0.10.3
	self_cell@1.0.4
	semver@1.0.23
	serde@1.0.210
	serde_derive@1.0.210
	serde_derive_internals@0.29.1
	serde_json@1.0.128
	serde_spanned@0.6.8
	serde_urlencoded@0.7.1
	serde_yaml@0.8.26
	sha1@0.10.6
	sha2@0.10.8
	shell-words@1.1.0
	shlex@1.3.0
	signal-hook-registry@1.4.2
	signal-hook@0.3.17
	simd-adler32@0.3.7
	simdutf8@0.1.5
	siphasher@0.3.11
	skrifa@0.22.3
	slab@0.4.9
	slotmap@1.0.7
	smallvec@1.13.2
	smithay-client-toolkit@0.19.2
	smithay-clipboard@0.7.2
	smol_str@0.2.2
	socket2@0.5.7
	softbuffer@0.4.6
	spin@0.9.8
	spirv@0.3.0+sdk-1.3.268.0
	static_assertions@1.1.0
	steamlocate@2.0.0
	strict-num@0.1.1
	strsim@0.11.1
	subtle@2.6.1
	svg_fmt@0.4.3
	swash@0.1.19
	syn@1.0.109
	syn@2.0.79
	syn_derive@0.1.8
	sync_wrapper@1.0.1
	sys-locale@0.3.1
	system-deps@6.2.2
	tap@1.0.1
	target-lexicon@0.12.16
	tempfile@3.13.0
	termcolor@1.4.1
	terminal_size@0.4.0
	thiserror-impl@1.0.64
	thiserror@1.0.64
	thread_local@1.1.8
	time-core@0.1.2
	time@0.3.36
	tiny-skia-path@0.11.4
	tiny-skia@0.11.4
	tiny-xlib@0.2.3
	tinystr@0.7.6
	tinyvec@1.8.0
	tinyvec_macros@0.1.1
	tokio-macros@2.4.0
	tokio-rustls@0.26.0
	tokio-util@0.7.12
	tokio@1.40.0
	toml@0.5.11
	toml@0.8.19
	toml_datetime@0.6.8
	toml_edit@0.22.22
	tower-service@0.3.3
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing@0.1.40
	try-lock@0.2.5
	ttf-parser@0.20.0
	ttf-parser@0.21.1
	ttf-parser@0.25.0
	type-map@0.5.0
	typed-path@0.9.2
	typenum@1.17.0
	ucd-trie@0.1.7
	unic-langid-impl@0.9.5
	unic-langid@0.9.5
	unicode-bidi-mirroring@0.2.0
	unicode-bidi@0.3.17
	unicode-ccc@0.2.0
	unicode-ident@1.0.13
	unicode-linebreak@0.1.5
	unicode-normalization@0.1.24
	unicode-properties@0.1.3
	unicode-script@0.5.7
	unicode-segmentation@1.12.0
	unicode-width@0.1.14
	unicode-xid@0.2.6
	untrusted@0.9.0
	url@2.5.2
	utf16string@0.2.0
	utf8-width@0.1.7
	utf8parse@0.2.2
	uuid@1.10.0
	vcpkg@0.2.15
	velcro@0.5.4
	velcro_core@0.5.4
	velcro_macros@0.5.4
	version-compare@0.2.0
	version_check@0.9.5
	walkdir@2.5.0
	want@0.3.1
	wasi@0.11.0+wasi-snapshot-preview1
	wasite@0.1.0
	wasm-bindgen-backend@0.2.95
	wasm-bindgen-futures@0.4.45
	wasm-bindgen-macro-support@0.2.95
	wasm-bindgen-macro@0.2.95
	wasm-bindgen-shared@0.2.95
	wasm-bindgen@0.2.95
	wasm-timer@0.2.5
	wayland-backend@0.3.7
	wayland-client@0.31.6
	wayland-csd-frame@0.3.0
	wayland-cursor@0.31.6
	wayland-protocols-plasma@0.3.4
	wayland-protocols-wlr@0.3.4
	wayland-protocols@0.32.4
	wayland-scanner@0.31.5
	wayland-sys@0.31.5
	web-sys@0.3.72
	web-time@1.1.0
	webpki-roots@0.26.6
	wgpu-core@0.19.4
	wgpu-hal@0.19.5
	wgpu-types@0.19.2
	wgpu@0.19.4
	which@6.0.3
	whoami@1.5.2
	widestring@1.1.0
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.9
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	window_clipboard@0.4.1
	windows-core@0.52.0
	windows-core@0.58.0
	windows-implement@0.58.0
	windows-interface@0.58.0
	windows-registry@0.2.0
	windows-result@0.2.0
	windows-strings@0.1.0
	windows-sys@0.45.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-sys@0.59.0
	windows-targets@0.42.2
	windows-targets@0.48.5
	windows-targets@0.52.6
	windows@0.52.0
	windows@0.58.0
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.6
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.6
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.6
	windows_i686_gnullvm@0.52.6
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.6
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.6
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.6
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.6
	winit@0.30.5
	winnow@0.6.20
	winreg@0.52.0
	winres@0.1.12
	winsafe@0.0.19
	wyz@0.5.1
	x11-dl@2.21.0
	x11rb-protocol@0.13.1
	x11rb@0.13.1
	xcursor@0.3.8
	xkbcommon-dl@0.4.2
	xkeysym@0.2.1
	xml-rs@0.8.22
	yaml-rust@0.4.5
	yansi@1.0.1
	yazi@0.1.6
	zeno@0.2.3
	zerocopy-derive@0.7.35
	zerocopy@0.7.35
	zeroize@1.8.1
	zip@0.6.6
	zstd-safe@5.0.2+zstd.1.5.2
	zstd-sys@2.0.13+zstd.1.5.6
	zstd@0.11.2+zstd.1.5.2
"

inherit cargo desktop

DESCRIPTION="Game save backup tool"
HOMEPAGE=""
SRC_URI="
    https://github.com/mtkennerly/ludusavi/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="MIT"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD-2 BSD Boost-1.0
	CC0-1.0 ISC MIT MPL-2.0 Unicode-3.0 Unicode-DFS-2016 ZLIB
"
SLOT="0"
KEYWORDS="~amd64"

pkg_setup() {
  rust_pkg_setup
}

src_configure() {
  cargo_src_configure
}

src_install() {
  dobin "$(cargo_target_dir)/${PN}"

  doicon "assets/icon.svg"
  domenu "assets/linux/com.mtkennerly.ludusavi.desktop"
}
