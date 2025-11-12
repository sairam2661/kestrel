"builtin.module"() ({
  "vm.module"() <{sym_name = "assignment_ops"}> ({
    "vm.export"() <{export_name = "test_select_i32", function_ref = @test_select_i32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %19 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %20 = "util.optimization_barrier"(%19) : (i32) -> i32
      %21 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %22 = "util.optimization_barrier"(%21) : (i32) -> i32
      %23 = "vm.select.i32"(%20, %20, %22) : (i32, i32, i32) -> i32
      "vm.check.eq"(%23, %21) <{message = "0 ? 0 : 1 = 1"}> : (i32, i32) -> ()
      %24 = "vm.select.i32"(%22, %20, %22) : (i32, i32, i32) -> i32
      "vm.check.eq"(%24, %19) <{message = "1 ? 0 : 1 = 0"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_select_i32"} : () -> ()
    "vm.export"() <{export_name = "test_select_ref", function_ref = @test_select_ref}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %12 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %13 = "vm.list.alloc"(%12) : (i32) -> !vm.list<i8>
      %14 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %15 = "vm.list.alloc"(%14) : (i32) -> !vm.list<i8>
      %16 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %17 = "util.optimization_barrier"(%16) : (i32) -> i32
      %18 = "vm.select.ref"(%17, %13, %15) : (i32, !vm.list<i8>, !vm.list<i8>) -> !vm.list<i8>
      "vm.check.eq"(%18, %15) <{message = "0 ? list0 : list1 = list1"}> : (!vm.list<i8>, !vm.list<i8>) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_select_ref", sym_visibility = "private"} : () -> ()
    "vm.export"() <{export_name = "test_switch_i32", function_ref = @test_switch_i32}> {emitc.exclude} : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %0 = "vm.const.i32"() <{value = 100 : i32}> : () -> i32
      %1 = "vm.const.i32"() <{value = 200 : i32}> : () -> i32
      %2 = "vm.const.i32"() <{value = 300 : i32}> : () -> i32
      %3 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %4 = "util.optimization_barrier"(%3) : (i32) -> i32
      %5 = "vm.switch.i32"(%4, %2, %0, %1) : (i32, i32, i32, i32) -> i32
      "vm.check.eq"(%5, %0) <{message = "index 0 is 100"}> : (i32, i32) -> ()
      %6 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %7 = "util.optimization_barrier"(%6) : (i32) -> i32
      %8 = "vm.switch.i32"(%7, %2, %0, %1) : (i32, i32, i32, i32) -> i32
      "vm.check.eq"(%8, %1) <{message = "index 1 is 200"}> : (i32, i32) -> ()
      %9 = "vm.const.i32"() <{value = 2 : i32}> : () -> i32
      %10 = "util.optimization_barrier"(%9) : (i32) -> i32
      %11 = "vm.switch.i32"(%10, %2, %0, %1) : (i32, i32, i32, i32) -> i32
      "vm.check.eq"(%11, %2) <{message = "index 2 (out of bounds) is default 300"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_switch_i32", sym_visibility = "private"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

