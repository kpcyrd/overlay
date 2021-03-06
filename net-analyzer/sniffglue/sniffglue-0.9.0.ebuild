# Copyright 2017-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.1.5

EAPI=6

CRATES="
aho-corasick-0.7.3
ansi_term-0.11.0
argon2rs-0.2.5
arrayvec-0.4.10
atty-0.2.11
autocfg-0.1.4
backtrace-0.3.30
backtrace-sys-0.1.28
base64-0.10.1
bitflags-1.1.0
blake2-rfc-0.2.18
block-buffer-0.7.3
block-padding-0.1.4
boxxy-0.10.0
bufstream-0.1.4
byte-tools-0.3.1
byteorder-1.3.2
bytes-0.4.12
caps-0.3.1
cc-1.0.37
cfg-if-0.1.9
clap-2.33.0
cloudabi-0.0.3
constant_time_eq-0.1.3
cookie-factory-0.2.4
crossbeam-deque-0.7.1
crossbeam-epoch-0.7.1
crossbeam-queue-0.1.2
crossbeam-utils-0.6.5
ct-logs-0.5.1
dhcp4r-0.1.0
digest-0.8.0
dirs-1.0.5
dirs-2.0.1
dirs-sys-0.3.3
dns-parser-0.8.0
either-1.5.2
enum_primitive-0.1.1
env_logger-0.6.1
errno-0.2.4
errno-dragonfly-0.1.1
error-chain-0.12.1
failure-0.1.5
failure_derive-0.1.5
fake-simd-0.1.2
fnv-1.0.6
fuchsia-cprng-0.1.1
fuchsia-zircon-0.3.3
fuchsia-zircon-sys-0.3.3
futures-0.1.27
futures-cpupool-0.1.8
gcc-0.3.55
generic-array-0.12.0
h2-0.1.24
heck-0.3.1
http-0.1.17
http-body-0.1.0
httparse-1.3.3
humantime-1.2.0
hyper-0.12.30
hyper-rustls-0.16.1
idna-0.1.5
indexmap-1.0.2
iovec-0.1.2
itoa-0.4.4
kernel32-sys-0.2.2
lazy_static-1.3.0
libc-0.2.58
lock_api-0.1.5
log-0.4.6
matches-0.1.8
memchr-2.2.0
memoffset-0.2.1
mio-0.6.19
mio-uds-0.6.7
miow-0.2.1
net2-0.2.33
nix-0.13.1
nix-0.14.1
nodrop-0.1.13
nom-4.2.3
num-traits-0.1.43
num-traits-0.2.8
num_cpus-1.10.1
numtoa-0.1.0
opaque-debug-0.2.2
owning_ref-0.4.0
parking_lot-0.7.1
parking_lot_core-0.4.0
pcap-0.7.0
percent-encoding-1.0.1
phf-0.7.24
phf_codegen-0.7.24
phf_generator-0.7.24
phf_shared-0.7.24
pktparse-0.4.0
pledge-0.3.1
proc-macro2-0.4.30
quick-error-1.2.2
quote-0.6.12
rand-0.6.5
rand_chacha-0.1.1
rand_core-0.3.1
rand_core-0.4.0
rand_hc-0.1.0
rand_isaac-0.1.1
rand_jitter-0.1.4
rand_os-0.1.3
rand_pcg-0.1.2
rand_xorshift-0.1.1
rdrand-0.4.0
redox_syscall-0.1.54
redox_termios-0.1.1
redox_users-0.3.0
reduce-0.1.2
regex-1.1.7
regex-syntax-0.6.7
ring-0.14.6
rustc-demangle-0.1.15
rustc_version-0.2.3
rusticata-macros-1.1.0
rustls-0.15.2
rustyline-4.1.0
ryu-0.2.8
scoped-tls-0.1.2
scoped_threadpool-0.1.9
scopeguard-0.3.3
sct-0.5.0
seccomp-sys-0.1.2
semver-0.9.0
semver-parser-0.7.0
serde-1.0.92
serde_derive-1.0.92
serde_json-1.0.39
sha2-0.8.0
siphasher-0.2.3
slab-0.4.2
smallvec-0.6.10
sniffglue-0.9.0
spin-0.5.0
stable_deref_trait-1.1.1
string-0.2.0
strsim-0.8.0
structopt-0.2.16
structopt-derive-0.2.16
strum-0.15.0
strum_macros-0.15.0
syn-0.15.36
synstructure-0.10.2
syscallz-0.11.4
termcolor-1.0.5
termion-1.5.3
textwrap-0.11.0
thread_local-0.3.6
threadpool-1.7.1
time-0.1.42
tls-parser-0.7.1
tokio-0.1.21
tokio-buf-0.1.1
tokio-codec-0.1.1
tokio-core-0.1.17
tokio-current-thread-0.1.6
tokio-executor-0.1.7
tokio-fs-0.1.6
tokio-io-0.1.12
tokio-reactor-0.1.9
tokio-rustls-0.9.3
tokio-sync-0.1.6
tokio-tcp-0.1.3
tokio-threadpool-0.1.14
tokio-timer-0.2.11
tokio-trace-core-0.2.0
tokio-udp-0.1.3
tokio-uds-0.2.5
toml-0.5.1
try-lock-0.2.2
typenum-1.10.0
ucd-util-0.1.3
unicode-bidi-0.3.4
unicode-normalization-0.1.8
unicode-segmentation-1.3.0
unicode-width-0.1.5
unicode-xid-0.1.0
untrusted-0.6.2
url-1.7.2
users-0.9.1
utf8-ranges-1.0.3
utf8parse-0.1.1
vec_map-0.8.1
version_check-0.1.5
void-1.0.2
want-0.0.6
webpki-0.19.1
webpki-roots-0.16.0
winapi-0.2.8
winapi-0.3.7
winapi-build-0.1.1
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.2
winapi-x86_64-pc-windows-gnu-0.4.0
wincolor-1.0.1
ws2_32-sys-0.2.1
"

inherit cargo

DESCRIPTION="Secure multithreaded packet sniffer"
HOMEPAGE="https://github.com/kpcyrd/sniffglue"
SRC_URI="$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~x86"
IUSE=""

RDEPEND="net-libs/libpcap
		sys-libs/libseccomp
"
DEPEND="${RDEPEND}
		>=virtual/rust-1.34.2"

src_test() {
	cargo test || die "tests failed"
}

src_install() {
	cargo_src_install --path=.

	doman docs/sniffglue.1
	dodoc README.md

	insinto /etc
	newins "${FILESDIR}"/sniffglue.conf sniffglue.conf
}
