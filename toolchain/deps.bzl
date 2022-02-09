# Copyright 2020 The Bazel Authors.
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

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def bazel_toolchain_dependencies():
    # Load rules_cc if the user has not defined them.
    if not native.existing_rule("rules_cc"):
        http_archive(
            name = "rules_cc",
            sha256 = "ff7876d80cd3f6b8c7a064bd9aa42a78e02096544cca2b22a9cf390a4397a53e",
            strip_prefix = "rules_cc-081771d4a0e9d7d3aa0eed2ef389fa4700dfb23e",
            urls = ["https://github.com/bazelbuild/rules_cc/archive/081771d4a0e9d7d3aa0eed2ef389fa4700dfb23e.tar.gz"],
        )
