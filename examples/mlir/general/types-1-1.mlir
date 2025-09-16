"builtin.module"() ({
  "func.func"() <{function_type = (!llvm.struct<"_Converted.foo", (i64)>) -> (), sym_name = "clashing_struct_name", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (!llvm.struct<"foo", (index)>) -> (), sym_name = "merge_on_conversion", sym_visibility = "private"}> ({
  }) : () -> ()
}) : () -> ()

