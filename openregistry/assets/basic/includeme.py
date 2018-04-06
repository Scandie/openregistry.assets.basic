# -*- coding: utf-8 -*-
from pyramid.interfaces import IRequest
from openregistry.assets.core.includeme import IContentConfigurator
from openregistry.assets.basic.models import Asset, IBasicAsset
from openregistry.assets.basic.adapters import BasicAssetConfigurator


def includeme(config):
    config.add_assetType(Asset)
    config.scan("openregistry.assets.basic.views")
    config.scan("openregistry.assets.basic.subscribers")
    config.registry.registerAdapter(BasicAssetConfigurator,
                                    (IBasicAsset, IRequest),
                                    IContentConfigurator)
