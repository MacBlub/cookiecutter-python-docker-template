# Download base image
FROM python:3.8

# Update locales
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8

# =========================
#          GUI
# =========================
# Comment in, if you want a possible GUI (e.g. python-tk)
# Be aware: You have to adapt the start scripts in "scripts"
# to inlude access to DISPLAY-Server
#
# # X-Window - Access for Display
# RUN apt-get update && \
#     apt-get install -y xauth x11-apps
#
# # Install requirements for bpy
# RUN apt-get update && \
#     apt-get install -y  libopenexr-dev \   
#                         libxmu-dev \ 
#                         libxi-dev \ 
#                         libxxf86vm-dev \ 
#                         libgl1-mesa-glx \ 
#                         libxrender1 \
#                         libxkbcommon-x11-0 
# 
# # We need at least some GUI backend
# ARG DEBIAN_FRONTEND=noninteractive
# ENV TZ=Europe/Munich
# RUN apt-get update && \
#     apt-get install -y python3-tk

# =========================
# Install requirments.txt
# =========================
# Install requirements for project
RUN mkdir /requirements
COPY requirements.txt /requirements/requirements.txt
RUN cd /requirements && \
    pip3 install -r requirements.txt

# =========================
# Start point
# ========================
WORKDIR "/app"
CMD ["/bin/bash"]

