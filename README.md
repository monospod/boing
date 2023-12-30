# Boing

The is a project to implement [Boing](https://github.com/Wireframe-Magazine/Code-the-Classics/tree/master/boing-master) from [Code the Classics](https://magpi.raspberrypi.com/books/code-the-classics1) in Common Lisp using the [Trivial Gamekit](https://borodust.org/projects/trivial-gamekit/).

## Generate an executable

From the root of the project's directory:
```shell
qlot exec ros -Q run < ./scripts/deliver.lisp
```

**Note:** You need to remove any pre-existing `build/` folder first, otherwise you'll get errors.
