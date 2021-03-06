#! /bin/sh

I18NDOMAIN="collective.facebook.portlets"

# Synchronise the templates and scripts with the .pot.
# All on one line normally:
i18ndude rebuild-pot --pot src/collective/facebook/portlets/locales/${I18NDOMAIN}.pot \
    --create ${I18NDOMAIN} \
    src/collective/facebook/portlets

# Synchronise the resulting .pot with all .po files
for po in src/collective/facebook/portlets/locales/*/LC_MESSAGES/${I18NDOMAIN}.po; do
    i18ndude sync --pot src/collective/facebook/portlets/locales/${I18NDOMAIN}.pot $po
done
