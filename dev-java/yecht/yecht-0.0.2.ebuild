# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

GITHUB_USER="olabini"
JAVA_PKG_IUSE=""

inherit eutils java-pkg-2 java-ant-2

DESCRIPTION="YAML 1.0 processor for Ruby, based on Syck"
HOMEPAGE="http://github.com/olabini/yecht"
SRC_URI="http://github.com/${GITHUB_USER}/${PN}/tarball/${PV} -> ${P}.tgz"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=virtual/jdk-1.5.0
	dev-java/ant-core"

RDEPEND=">=virtual/jre-1.5.0"

S="${WORKDIR}/olabini-yecht-157cf13"

src_prepare () {
	mkdir lib
}

src_install () {
	java-pkg_newjar lib/${P}.jar ${PN}.jar
}
