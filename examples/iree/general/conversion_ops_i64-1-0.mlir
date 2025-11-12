"builtin.module"() ({
  "vm.module"() <{sym_name = "conversion_ops_i64"}> ({
    "vm.export"() <{export_name = "test_trunc_i64_i32", function_ref = @test_trunc_i64_i32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %0 = "vm.const.i64"() <{value = 9223372036854775807 : i64}> : () -> i64
      %1 = "util.optimization_barrier"(%0) : (i64) -> i64
      %2 = "vm.trunc.i64.i32"(%1) : (i64) -> i32
      %3 = "vm.const.i32"() <{value = -1 : i32}> : () -> i32
      "vm.check.eq"(%2, %3) <{message = "truncate unsigned i64 to unsigned i32"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_trunc_i64_i32"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

