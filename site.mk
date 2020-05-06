##	GLUON_FEATURES
#		Specify Gluon features/packages to enable;
#		Gluon will automatically enable a set of packages
#		depending on the combination of features listed

GLUON_FEATURES := \
	autoupdater \
	ebtables-filter-multicast \
	ebtables-filter-ra-dhcp \
	ebtables-limit-arp \
	mesh-batman-adv-14 \
	mesh-vpn-fastd \
	respondd \
	status-page \
	web-advanced \
	web-wizard

GLUON_SITE_PACKAGES := \
        gluon-alfred \
        gluon-web-node-role \
        gluon-radvd \
	iwinfo \
	iptables \
	haveged

DEFAULT_GLUON_RELEASE := 1.3.2-$(shell date '+%Y%m%d')

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_PRIORITY ?= 0

GLUON_LANGS ?= de en

# Build images to update from EU-specific firmware (TP-Link)
GLUON_REGION := eu

# Build images with ath10k-based drivers for IBSS (Ad-Hoc)
GLUON_WLAN_MESH := ibss
