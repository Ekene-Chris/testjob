#!/bin/bash
kubectl patch app bgd-app -p '{"metadata": {"finalizers": ["resources-finalizer.argocd.argoproj.io"]}}' --type merge -n argocd
kubectl delete app bgd-app -n argocd
