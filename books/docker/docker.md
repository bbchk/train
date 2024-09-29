- research
  Docker and containers are also well-positioned for emerging cloud technologies such as WebAssembly and AI workloads.

- research
  Under the hood, Docker uses storage drivers to stack layers and present them as a
  unified filesystem and image. Almost all Docker setups use the overlay2 driver, but zfs,
  btrfs, and vfs are alternative options

- research
  Emulation mode performs builds for different architectures on your local machine by
  running the build inside a QEMU virtual machine emulating the target architecture. It
  works most of the time but is slow and doesn’t have a shared cache

what is QEMU VM?

docker scout requires paid subscription,
what if develop free version?
same with emulation for buildx

- research
  what is dangling image in docker?

- research amd64 architecture  
  IMAGE ID DISK USAGE CONTENT SIZE USED
  test:latest 645dfd776a4a 147MB 36.1MB
  └─ linux/amd64 f7a597467c90 147MB 36.1MB

ubuntu:latest dfc10878be8d 117MB 29.8MB
├─ linux/amd64 77d57fd89366 117MB 29.8MB
├─ linux/arm/v7 ec202bea1fff 0B 0B
├─ linux/arm64/v8 d3a9954d4835 0B 0B
├─ linux/ppc64le fde3701847fd 0B 0B
├─ linux/riscv64 f950b6051974 0B 0B
└─ linux/s390x e7e1e79c5dcd 0B 0B

- research
  The only OS-related components
  in most images are filesystem objects, and you’ll sometimes hear people say images
  contain just enough OS.

  what are filesystem objects?

- note
  It’s generally considered a good practice to use Docker Official Images and Verified Publisher images as the base layer for new images you create. This is because they maintain a
  8: Containerizing an app 106
  high standard and quickly implement fixes for known vulnerabilities.

- note
  When it comes to container images… **big** is bad! For example:
  • Big means slow
  • Big means more potential vulnerabilities
  • Big means a larger attack surface
  For these reasons, your container images should only contain the stuff needed to run
  your applications in production.
