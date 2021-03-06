EAPI=7
inherit git-r3

DESCRIPTION="Small set of tools to control UKSM"
HOMEPAGE="https://github.com/mantheman/uksmtools"
LICENSE="GPL-3+"

EGIT_REPO_URI="https://github.com/mantheman/uksmtools.git"
EGIT_BRANCH="master"
SRC_URI=""

SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	sys-devel/gcc
	sys-devel/make
"
src_install(){
	emake \
		DESTDIR="${D}" \
		PREFIX="/usr" \
		install
}