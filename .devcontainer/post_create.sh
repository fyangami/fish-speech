#!/bin/sh

set -ex

pip install torch==2.4.1 torchvision==0.19.1 torchaudio==2.4.1

sudo apt update

sudo apt install -y libsox-dev ffmpeg

sudo apt install -y build-essential \
    cmake \
    libasound-dev \
    portaudio19-dev \
    libportaudio2 \
    libportaudiocpp0

# 安装 fish-speech
pip install -e .[stable]
