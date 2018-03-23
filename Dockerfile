#    Licensed under the Apache License, Version 2.0 (the "License"); you may
#    not use this file except in compliance with the License. You may obtain
#    a copy of the License at
#
#         http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
#    WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
#    License for the specific language governing permissions and limitations
#    under the License.

FROM fedora:latest
MAINTAINER Donny Davis <donny@fortnebula.com>

RUN dnf -y update; dnf clean all

# fundamental packages
RUN dnf -y install file gcc make man sudo tar; dnf clean all
# pre-built:
RUN curl https://sh.rustup.rs -sSf > rustup.sh
RUN chmod +x rustup.sh
RUN ./rustup.sh -y
RUN source .profile
RUN rustup default nightly
RUN mv .cargo/bin/* /usr/local/bin

CMD ["/bin/bash"]
