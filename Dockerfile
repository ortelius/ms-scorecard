# Copyright (c) 2021 Linux Foundation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# hadolint global ignore=DL3041,DL3013,DL4006
FROM public.ecr.aws/amazonlinux/amazonlinux:2023.5.20240805.0@sha256:03c807fdc5d40ab06b21c2e6d158c63c37d5149a127b7fdfa9e3c1150352ff20

WORKDIR /app
COPY . /app

RUN dnf install -y python3.11; \
    curl -sL https://bootstrap.pypa.io/get-pip.py | python3.11 - ; \
    python3.11 -m pip install --no-cache-dir -r requirements.in; \
    dnf update -y; \
    dnf upgrade -y; \
    dnf clean all

ENV DB_HOST localhost
ENV DB_NAME postgres
ENV DB_USER postgres
ENV DB_PASS postgres
ENV DB_PORT 5432

EXPOSE 8080

ENTRYPOINT ["/usr/local/bin/uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
