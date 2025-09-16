"builtin.module"() ({
  "test.symbol"() <{sym_name = "foo_3", sym_visibility = "nested"}> : () -> ()
  "test.symbol"() <{sym_name = "foo_4", sym_visibility = "private"}> : () -> ()
  "test.symbol"() <{sym_name = "foo_5", sym_visibility = "public"}> : () -> ()
  "test.symbol"() <{sym_name = "foo_6"}> : () -> ()
}) : () -> ()

