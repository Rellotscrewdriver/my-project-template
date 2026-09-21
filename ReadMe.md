# Project Template
this repo contains the boilerplate for my future projects so I don't have to create a project from scratch

# Usage

This part contains how to use the said project

## Screenshots

People usually like to see how it looks or feels like before downloading the product :)

<img src="">

# Contributions

I explicitly welcome outside contributors that are serious about developing my app further and further to perfection.
you can read my <a href="https://github.com/Rellotscrewdriver/my-project-template/blob/master/CODE_OF_CONDUCT.md">CODE_OF_CONDUCT</a> for rules</br>
and <a href="https://github.com/Rellotscrewdriver/my-project-template/blob/master/CONTRIBUTING.md">CONTRIBUTING</a> for contribution guidelines and coding style

## Setting up the project

### External Dependencies(if you're new to C++)
- CMake (3.16+)
- GNU make or Ninja
- GCC or Clang or MSVC(windows only)
- AStyle(optional)
- Doxide and mkdocs + mkdocs-material(optional)

### Bundled Libraries
- googletest - for unit testing and mocking

### Setup
clone the repo with submodules
```
git clone --recurse-submodules https://github.com/Rellotscrewdriver/my-project-template.git MPT
```

goto the cloned repo and configure the project
```
cd MPT && cmake -S . -B build
```

build the project
```
cmake --build build
```

your build is ready in the `build` directory! if there's issues, create one in issues tab!

### Generating the documentation

you must have Doxide and Mkdocs + Mkdocs material(if doxide decides to switch to zensical, [see here](https://github.com/lawmurray/doxide/issues/86)) installed

run the `gendocs.sh` script to avoid typing commands manually everytime
after running go to your browser and type `localhost:8000` to see the generated documentation.

if you're using windows you can rename the `gendocs.sh` file to `gendocs.bat`. Ditto `fmtallfiles.sh`

## Adding Internal Libraries

This project template currently uses git submodules to manage internal libraries in the `libs` folder.
to add the library into this project(not in this template)
```
git submodule add <github_link> libs/<library>
```

add the cloned directory to CMakeLists.txt
```
add_subdirectory(libs/<library>)
```

link the library to the main project 
```
target_link_libraries(${PROJECT_NAME} PRIVATE <library_linkers>)
```

# COPYRIGHT

this project is free to use and distribute as long as you don't claim that you wrote the original software.
crediting of this project is required when it is modified and/or distributed. goto [LICENSE](https://github.com/Rellotscrewdriver/my-project-template/blob/master/LICENSE) for more details