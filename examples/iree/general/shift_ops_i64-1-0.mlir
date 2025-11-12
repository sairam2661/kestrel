"builtin.module"() ({
  "vm.module"() <{sym_name = "shift_ops_i64"}> ({
    "vm.export"() <{export_name = "test_shl_i64", function_ref = @test_shl_i64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %10 = "vm.const.i64"() <{value = 1 : i64}> : () -> i64
      %11 = "util.optimization_barrier"(%10) : (i64) -> i64
      %12 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %13 = "vm.shl.i64"(%11, %12) : (i64, i32) -> i64
      %14 = "vm.const.i64"() <{value = 4 : i64}> : () -> i64
      "vm.check.eq"(%13, %14) <{message = "1<<2=4"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_shl_i64"} : () -> ()
    "vm.export"() <{export_name = "test_shr_i64s", function_ref = @test_shr_i64s}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %5 = "vm.const.i64"() <{value = -1 : i64}> : () -> i64
      %6 = "util.optimization_barrier"(%5) : (i64) -> i64
      %7 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %8 = "vm.shr.i64.s"(%6, %7) : (i64, i32) -> i64
      %9 = "vm.const.i64"() <{value = -1 : i64}> : () -> i64
      "vm.check.eq"(%8, %9) <{message = "-1>>2=-1"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_shr_i64s"} : () -> ()
    "vm.export"() <{export_name = "test_shr_i64u", function_ref = @test_shr_i64u}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %0 = "vm.const.i64"() <{value = 4 : i64}> : () -> i64
      %1 = "util.optimization_barrier"(%0) : (i64) -> i64
      %2 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %3 = "vm.shr.i64.u"(%1, %2) : (i64, i32) -> i64
      %4 = "vm.const.i64"() <{value = 1 : i64}> : () -> i64
      "vm.check.eq"(%3, %4) <{message = "4>>2=1"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_shr_i64u"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

