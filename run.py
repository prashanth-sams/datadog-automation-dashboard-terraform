#!/usr/bin/python
# -*- coding: utf-8 -*-
from datadog import initialize, api
import time
import os
import glob
import json

options = {'api_key': os.environ['API_KEY']}

initialize(**options)

root_dir = './data/prod/'

for country in os.walk(root_dir).next()[1]:
    with open(root_dir + country + '/stats.json', 'r') as f:
        stats = json.load(f)
        total = int(stats['passed'])+int(stats['failed'])+int(stats['skipped'])
        api.Metric.send(metric='qa.baseline.' + stats['environment'].lower() + '.passed', points=stats['passed'],
                        tags=['country:' + stats['country'].lower()])
        api.Metric.send(metric='qa.baseline.' + stats['environment'].lower() + '.failed', points=stats['failed'],
                        tags=['country:' + stats['country'].lower()])
        api.Metric.send(metric='qa.baseline.' + stats['environment'].lower() + '.pending', points=stats['skipped'], 
                        tags=['country:' + stats['country'].lower()])
        api.Metric.send(metric='qa.baseline.' + stats['environment'].lower() + '.total', points=total,
                        tags=['country:' + stats['country'].lower()])
        time.sleep(60)
