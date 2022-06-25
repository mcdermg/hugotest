<a href="https://gohugo.io/"><img src="https://raw.githubusercontent.com/gohugoio/gohugoioTheme/master/static/images/hugo-logo-wide.svg?sanitize=true" alt="Hugo" width="565"></a>

A Fast and Flexible Static Site Generator built with love by [bep](https://github.com/bep), [spf13](https://spf13.com/) and [friends](https://github.com/gohugoio/hugo/graphs/contributors) in [Go][].

[Website](https://gohugo.io) |
[Forum](https://discourse.gohugo.io) |
[Documentation](https://gohugo.io/getting-started/) |
[Installation Guide](https://gohugo.io/getting-started/installing/) |
[Contribution Guide](CONTRIBUTING.md) |
[Twitter](https://twitter.com/gohugoio)

[![GoDoc](https://godoc.org/github.com/gohugoio/hugo?status.svg)](https://godoc.org/github.com/gohugoio/hugo)
[![Tests on Linux, MacOS and Windows](https://github.com/gohugoio/hugo/workflows/Test/badge.svg)](https://github.com/gohugoio/hugo/actions?query=workflow%3ATest)
[![Go Report Card](https://goreportcard.com/badge/github.com/gohugoio/hugo)](https://goreportcard.com/report/github.com/gohugoio/hugo)

## Overview

Hugo is a static HTML and CSS website generator written in [Go][].
It is optimized for speed, ease of use, and configurability.
Hugo takes a directory with content and templates and renders them into a full HTML website.

Hugo relies on Markdown files with front matter for metadata, and you can run Hugo from any directory.
This works well for shared hosts and other systems where you don’t have a privileged account.

Hugo renders a typical website of moderate size in a fraction of a second.
A good rule of thumb is that each piece of content renders in around 1 millisecond.

Hugo is designed to work well for any kind of website including blogs, tumbles, and docs.

#### Supported Architectures

Currently, we provide pre-built Hugo binaries for Windows, Linux, FreeBSD, NetBSD, DragonFly BSD, OpenBSD, macOS (Darwin), and [Android](https://gist.github.com/bep/a0d8a26cf6b4f8bc992729b8e50b480b) for x64, i386 and ARM architectures.

Hugo may also be compiled from source wherever the Go compiler tool chain can run, e.g. for other operating systems including Plan 9 and Solaris.

**Complete documentation is available at [Hugo Documentation](https://gohugo.io/getting-started/).**

## Choose How to Install

If you want to use Hugo as your site generator, simply install the Hugo binaries.
The Hugo binaries have no external dependencies.

To contribute to the Hugo source code or documentation, you should [fork the Hugo GitHub project](https://github.com/gohugoio/hugo#fork-destination-box) and clone it to your local machine.

Finally, you can install the Hugo source code with `go`, build the binaries yourself, and run Hugo that way.
Building the binaries is an easy task for an experienced `go` getter.

### Install Hugo as Your Site Generator (Binary Install)

Use the [installation instructions in the Hugo documentation](https://gohugo.io/getting-started/installing/).

### Build and Install the Binaries from Source (Advanced Install)

#### Prerequisite Tools

* [Git](https://git-scm.com/)
* [Go (we test it with the last 2 major versions; but note that Hugo 0.95.0 only builds with >= Go 1.18.)](https://golang.org/dl/)

#### Fetch from GitHub

To fetch and build the source from GitHub:

```bash
mkdir $HOME/src
cd $HOME/src
git clone https://github.com/gohugoio/hugo.git
cd hugo
go install
```

**If you are a Windows user, substitute the `$HOME` environment variable above with `%USERPROFILE%`.**

If you want to compile with Sass/SCSS support use `--tags extended` and make sure `CGO_ENABLED=1` is set in your go environment. If you don't want to have CGO enabled, you may use the following command to temporarily enable CGO only for hugo compilation:

```bash
CGO_ENABLED=1 go install --tags extended
```

## The Hugo Documentation

The Hugo documentation now lives in its own repository, see https://github.com/gohugoio/hugoDocs. But we do keep a version of that documentation as a `git subtree` in this repository. To build the sub folder `/docs` as a Hugo site, you need to clone this repo:

```bash
git clone git@github.com:gohugoio/hugo.git
```
## Contributing to Hugo

**Note  March 16th 2022:** We are currently very constrained on human resources to do code reviews, so we currently require any new Pull Requests to be limited to bug fixes closing an existing issue. Also, we have updated to Go 1.18, but we will currently not accept any generic rewrites, "interface{} to any" replacements and similar.

For a complete guide to contributing to Hugo, see the [Contribution Guide](CONTRIBUTING.md).

We welcome contributions to Hugo of any kind including documentation, themes,
organization, tutorials, blog posts, bug reports, issues, feature requests,
feature implementations, pull requests, answering questions on the forum,
helping to manage issues, etc.

The Hugo community and maintainers are [very active](https://github.com/gohugoio/hugo/pulse/monthly) and helpful, and the project benefits greatly from this activity.

### Asking Support Questions

We have an active [discussion forum](https://discourse.gohugo.io) where users and developers can ask questions.
Please don't use the GitHub issue tracker to ask questions.

### Reporting Issues

If you believe you have found a defect in Hugo or its documentation, use
the GitHub issue tracker to report the problem to the Hugo maintainers.
If you're not sure if it's a bug or not, start by asking in the [discussion forum](https://discourse.gohugo.io).
When reporting the issue, please provide the version of Hugo in use (`hugo version`).

### Submitting Patches

The Hugo project welcomes all contributors and contributions regardless of skill or experience level.
If you are interested in helping with the project, we will help you with your contribution.
Hugo is a very active project with many contributions happening daily.

We want to create the best possible product for our users and the best contribution experience for our developers,
we have a set of guidelines which ensure that all contributions are acceptable.
The guidelines are not intended as a filter or barrier to participation.
If you are unfamiliar with the contribution process, the Hugo team will help you and teach you how to bring your contribution in accordance with the guidelines.

For a complete guide to contributing code to Hugo, see the [Contribution Guide](CONTRIBUTING.md).

[Go]: https://golang.org/
[Hugo Documentation]: https://gohugo.io/overview/introduction/

## Dependencies

Hugo stands on the shoulder of many great open source libraries.

If you run `hugo env -v` you will get a complete and up to date list.

