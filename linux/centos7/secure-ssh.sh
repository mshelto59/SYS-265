#!/bin/bash
useradd $1
usermod -aG wheel $1

