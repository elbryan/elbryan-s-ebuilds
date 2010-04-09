# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit python eutils gnome2

MY_P=${PN}_${PV}

DESCRIPTION="A Gnome utility to tile windows easily"
HOMEPAGE="http://open.vitaminap.it/en/x_tile.htm"
SRC_URI="http://open.vitaminap.it/software/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-libs/glib:2
	gnome-base/gconf
	gnome-base/gnome-panel
	gnome-base/libglade
	gnome-base/libgnome
	gnome-base/libgnomeui
	x11-libs/gtk+:2"

S=${WORKDIR}/${PN}

src_prepare() {
	find . -name "*.pyc" -exec rm {} +;
	find locale -maxdepth 1 -type f -exec rm {} +;
}

src_configure() {
	{ :; }
}

src_compile() {
	{ :; }
}

src_install() {
	exeinto /usr/bin
	doexe x-tile || die "doexe failed"

	insinto /usr/lib/bonobo/servers
	doins linux/x-tile.server || die "doins failed"

	insinto /usr/share/pixmaps
	doins linux/x-tile.svg || die "doins failed"

	insinto /usr/share/applications
	doins linux/x-tile.desktop || die "doins failed"

	insinto /usr/share/x-tile
	doins -r glade || die "doins failed"
	doins -r modules || die "doins failed"

	insinto /usr/share/locale
	doins -r locale/* || die "doins failed"
}
