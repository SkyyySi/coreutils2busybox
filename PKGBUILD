# Maintainer: SkyyySi

pkgname=coreutils2busybox
pkgver=1
pkgrel=1
pkgdesc='Symbolic links to replace coreutils with busybox.'
arch=('i686' 'x86_64' 'aarch64')
license=('GPL')
url='https://busybox.net/'
provides=('coreutils')
conflicts=('coreutils')
depends=('busybox')
source=(
	'coreutils2busybox.hook'
	'update-coreutils2busybox.sh'
	'create-coreutils2busybox.sh'
)
sha256sums=(
	'70280017cce31fb4e3d07d1973a9e3cca6fa72bec19ce72e9d99ea5f7f1a7ab4'
	'23294375b40c67035dfe8eb5245ca303c0f14c019770a29a03413555c81e99c5'
	'8e3cac9630141f85e9d1e73cd1746e04ebff9bf096e621697223a645f37f825b'
)

package() {
	install -Dm644 "coreutils2busybox.hook" "$pkgdir/etc/pacman.d/hooks/coreutils2busybox.hook"
	install -Dm755 "update-coreutils2busybox.sh" "$pkgdir/usr/bin/update-coreutils2busybox.sh"
	cd ${pkgdir}
	export pkgdir
	"$srcdir/create-coreutils2busybox.sh"
}
