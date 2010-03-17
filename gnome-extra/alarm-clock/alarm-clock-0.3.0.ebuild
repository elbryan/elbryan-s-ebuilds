# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
WANT_AUTOMAKE="1.11"

inherit autotools eutils gnome2

DESCRIPTION="A fully-featured alarm clock for your GNOME panel"
HOMEPAGE="http://alarm-clock.pseudoberries.com/"
SRC_URI="http://launchpad.net/alarm-clock/trunk/${PV}/+download/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-libs/glib:2
	gnome-base/gconf
	gnome-base/gnome-panel
	gnome-base/gnome-vfs
	gnome-base/libglade
	gnome-base/libgnome
	gnome-base/libgnomeui
	media-libs/gstreamer
	x11-themes/gnome-icon-theme
	x11-libs/gtk+:2
	x11-libs/libnotify"

DEPEND="${RDEPEND}
	app-text/gnome-doc-utils
	dev-util/intltool
	dev-util/pkgconfig"
