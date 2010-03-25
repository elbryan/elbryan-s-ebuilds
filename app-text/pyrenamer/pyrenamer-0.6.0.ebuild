# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

PYTHON_DEPEND="2"

inherit python gnome2

DESCRIPTION="Mass rename files"
HOMEPAGE="http://www.infinicode.org/code/pyrenamer/"
SRC_URI="http://www.infinicode.org/code/${PN}/files/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="dev-python/pygtk:2"

pkg_postinst() {
	python_mod_optimize	$(python_get_sitedir)/${PN}

	einfo
	einfo "Notice that you'll need to emerge dev-python/eyeD3 or
app-misc/hachoir-metadata in order to be able to rename music"
}

pkg_postrm() {
	python_mod_cleanup
}
