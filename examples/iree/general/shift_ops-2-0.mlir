"builtin.module"() ({
  "vm.module"() <{sym_name = "shift_ops"}> ({
    "vm.export"() <{export_name = "test_shl_i32", function_ref = @test_shl_i32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %9 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %10 = "util.optimization_barrier"(%9) : (i32) -> i32
      %11 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %12 = "vm.shl.i32"(%10, %11) : (i32, i32) -> i32
      %13 = "vm.const.i32"() <{value = 4 : i32}> : () -> i32
      "vm.check.eq"(%12, %13) <{message = "1<<2=4"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_shl_i32"} : () -> ()
    "vm.export"() <{export_name = "test_shr_i32s", function_ref = @test_shr_i32s}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %5 = "vm.const.i32"() <{value = -1 : i32}> : () -> i32
      %6 = "util.optimization_barrier"(%5) : (i32) -> i32
      %7 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %8 = "vm.shr.i32.s"(%6, %7) : (i32, i32) -> i32
      "vm.check.eq"(%8, %6) <{message = "-1>>2=-1"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_shr_i32s"} : () -> ()
    "vm.export"() <{export_name = "test_shr_i32u", function_ref = @test_shr_i32u}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %0 = "vm.const.i32"() <{value = 4 : i32}> : () -> i32
      %1 = "util.optimization_barrier"(%0) : (i32) -> i32
      %2 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %3 = "vm.shr.i32.u"(%1, %2) : (i32, i32) -> i32
      %4 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      "vm.check.eq"(%3, %4) <{message = "4>>2=1"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_shr_i32u"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

