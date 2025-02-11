# Use the ArchLinux base image
FROM archlinux:latest

# Set the environment variables
ENV VCPKG_ROOT=vcpkg
ENV CMAKE_PREFIX_PATH=/usr/lib/cmake
ENV PKG_CONFIG_PATH=/usr/lib/pkgconfig

# Set the working directory to /app
WORKDIR /app

# Install CMake and git
RUN pacman -Sy --noconfirm git cmake wget unzip zip ninja clang python pkgconf

# Install vcpkg
RUN wget https://github.com/microsoft/vcpkg/archive/refs/tags/2024.04.26.zip
RUN unzip 2024.04.26.zip
RUN cp -r vcpkg-2024.04.26 vcpkg && rm -rf vcpkg-2024.04.26
RUN cd vcpkg && sh bootstrap-vcpkg.sh
RUN cp -r vcpkg/vcpkg /bin/vcpkg

# Copy the source
COPY . .

# Build the project using CMake
RUN cmake -S . -B build -G "Ninja"
RUN cmake --build build

# Copy the executable
RUN cp -r build/template template

CMD ["./template"]