#!/bin/bash
salt-key | sed '/:$/! s/^/  - /g'
