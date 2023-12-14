FROM docker.io/opensuse/leap:15.5

MAINTAINER nicholas.yang@suse.com

# install
RUN zypper install -y \
    vim \
    man \
    osc \
    obs-service-format_spec_file \
    obs-service-tar_scm \
    obs-service-recompress \
    obs-service-set_version \
    obs-service-download_files \
    openssh-clients

COPY scripts /scripts
COPY oscrc /root/.config/osc/oscrc
