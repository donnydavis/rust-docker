fedrust
===========

Docker image with Rust programming language and Cargo package manager.

Why
---

Rust changes a lot, many devs want to develop using the Rust nightly
builds. It's customary to download precompiled binaries directly from
Rust's site, but it's a bit cleaner to install such directly
downloaded binaries into a somewhat isolated environment, like a
docker container.

It's also easy to temporarily revert to a previous Rust nightly in
case a new Rust nightly breaks your dependencies way too much, just
name your containers by date when you create them, and then keep them
around for a while.


Usage
-----

```
docker pull automatikdonn/fedrust:latest
```

The intended use case is to base your own per-project images on the
fedora-rust image nightly build. An example Dockerfile:

```
FROM docker pull automatikdonn/fedrust:latest

```
