locals {
    this-is-a-object = {
        foo = "bar"
        a-num = 78.9
        a-bool = true
        the-list = [1,2,3]
        the-map = {
            foo = "bar"
            baz = "bat"
        }
    }

    this-is-a-num = 123.987
    this-is-a-string = "hello, world!"
    this-is-interpolated = "${local.this-is-a-string} The number is ${local.this-is-a-num}"
}
