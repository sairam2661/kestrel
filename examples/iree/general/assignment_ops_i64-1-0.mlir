"builtin.module"() ({
  "vm.module"() <{sym_name = "assignment_ops_i64"}> ({
    "vm.export"() <{export_name = "test_select_i64", function_ref = @test_select_i64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %12 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %13 = "util.optimization_barrier"(%12) : (i32) -> i32
      %14 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %15 = "util.optimization_barrier"(%14) : (i32) -> i32
      %16 = "vm.const.i64"() <{value = 0 : i64}> : () -> i64
      %17 = "vm.const.i64"() <{value = 1 : i64}> : () -> i64
      %18 = "vm.select.i64"(%13, %16, %17) : (i32, i64, i64) -> i64
      "vm.check.eq"(%18, %17) <{message = "0 ? 0 : 1 = 1"}> : (i64, i64) -> ()
      %19 = "vm.select.i64"(%15, %16, %17) : (i32, i64, i64) -> i64
      "vm.check.eq"(%19, %16) <{message = "1 ? 0 : 1 = 0"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_select_i64"} : () -> ()
    "vm.export"() <{export_name = "test_switch_i64", function_ref = @test_switch_i64}> {emitc.exclude} : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %0 = "vm.const.i64"() <{value = 100 : i64}> : () -> i64
      %1 = "vm.const.i64"() <{value = 200 : i64}> : () -> i64
      %2 = "vm.const.i64"() <{value = 300 : i64}> : () -> i64
      %3 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %4 = "util.optimization_barrier"(%3) : (i32) -> i32
      %5 = "vm.switch.i64"(%4, %2, %0, %1) : (i32, i64, i64, i64) -> i64
      "vm.check.eq"(%5, %0) <{message = "index 0 is 100"}> : (i64, i64) -> ()
      %6 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %7 = "util.optimization_barrier"(%6) : (i32) -> i32
      %8 = "vm.switch.i64"(%7, %2, %0, %1) : (i32, i64, i64, i64) -> i64
      "vm.check.eq"(%8, %1) <{message = "index 1 is 200"}> : (i64, i64) -> ()
      %9 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %10 = "util.optimization_barrier"(%9) : (i32) -> i32
      %11 = "vm.switch.i64"(%10, %2, %0, %1) : (i32, i64, i64, i64) -> i64
      "vm.check.eq"(%11, %2) <{message = "index 2 (out of bounds) is default 300"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_switch_i64", sym_visibility = "private"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

