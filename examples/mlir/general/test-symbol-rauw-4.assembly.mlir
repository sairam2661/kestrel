module {
  module @foo attributes {sym.new_name = "replaced_foo"} {
    func.func private @foo()
  }
  "foo.op"() {use = @foo::@foo} : () -> ()
}

