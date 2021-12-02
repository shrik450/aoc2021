app "solution"
    packages { base: "../platform" }
    imports [ base.Task.{ await, succeed }, base.Stdout ]
    provides [ main ] to base

main =
    _ <- await (succeed {})
    Stdout.line "Hello, world!"
