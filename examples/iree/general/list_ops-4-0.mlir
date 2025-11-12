"builtin.module"() ({
  "vm.module"() <{sym_name = "list_ops"}> ({
    "vm.export"() <{export_name = "test_i8", function_ref = @test_i8}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %28 = "vm.const.i32"() <{value = 42 : i32}> : () -> i32
      %29 = "vm.const.i32"() <{value = 100 : i32}> : () -> i32
      %30 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %31 = "vm.list.alloc"(%28) : (i32) -> !vm.list<i8>
      "vm.list.reserve"(%31, %29) : (!vm.list<i8>, i32) -> ()
      %32 = "vm.list.size"(%31) : (!vm.list<i8>) -> i32
      %33 = "util.optimization_barrier"(%32) : (i32) -> i32
      "vm.check.eq"(%33, %30) <{message = "list<i8>.empty.size()=0"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_i8"} : () -> ()
    "vm.export"() <{export_name = "test_i16", function_ref = @test_i16}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %23 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %24 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %25 = "vm.const.i32"() <{value = 27 : i32}> : () -> i32
      %26 = "vm.list.alloc"(%24) : (i32) -> !vm.list<i16>
      "vm.list.resize"(%26, %24) : (!vm.list<i16>, i32) -> ()
      "vm.list.set.i32"(%26, %23, %25) : (!vm.list<i16>, i32, i32) -> ()
      %27 = "vm.list.get.i32"(%26, %23) : (!vm.list<i16>, i32) -> i32
      "vm.check.eq"(%27, %25) <{message = "list<i16>.empty.set(0, 27).get(0)=27"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_i16"} : () -> ()
    "vm.export"() <{export_name = "test_i32", function_ref = @test_i32}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %17 = "vm.const.i32"() <{value = 42 : i32}> : () -> i32
      %18 = "vm.list.alloc"(%17) : (i32) -> !vm.list<i32>
      %19 = "vm.list.size"(%18) : (!vm.list<i32>) -> i32
      %20 = "vm.const.i32"() <{value = 100 : i32}> : () -> i32
      %21 = "vm.const.i32"() <{value = 101 : i32}> : () -> i32
      "vm.list.resize"(%18, %21) : (!vm.list<i32>, i32) -> ()
      "vm.list.set.i32"(%18, %20, %17) : (!vm.list<i32>, i32, i32) -> ()
      %22 = "vm.list.get.i32"(%18, %20) : (!vm.list<i32>, i32) -> i32
      "vm.check.eq"(%22, %17) <{message = "list<i32>.empty.set(100, 42).get(100)=42"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_i32"} : () -> ()
    "vm.export"() <{export_name = "test_ref", function_ref = @test_ref}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      "vm.return"() : () -> ()
    }) {sym_name = "test_ref"} : () -> ()
    "vm.export"() <{export_name = "test_multiple_lists", function_ref = @test_multiple_lists}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %9 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %10 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %11 = "vm.const.i32"() <{value = 27 : i32}> : () -> i32
      %12 = "vm.const.i32"() <{value = 42 : i32}> : () -> i32
      %13 = "vm.list.alloc"(%10) : (i32) -> !vm.list<i8>
      %14 = "vm.list.alloc"(%10) : (i32) -> !vm.list<i8>
      "vm.list.resize"(%13, %10) : (!vm.list<i8>, i32) -> ()
      "vm.list.resize"(%14, %10) : (!vm.list<i8>, i32) -> ()
      "vm.list.set.i32"(%13, %9, %11) : (!vm.list<i8>, i32, i32) -> ()
      "vm.list.set.i32"(%14, %9, %12) : (!vm.list<i8>, i32, i32) -> ()
      %15 = "vm.list.get.i32"(%13, %9) : (!vm.list<i8>, i32) -> i32
      %16 = "vm.list.get.i32"(%14, %9) : (!vm.list<i8>, i32) -> i32
      "vm.check.eq"(%15, %11) <{message = "list0.get(0)=27"}> : (i32, i32) -> ()
      "vm.check.eq"(%16, %12) <{message = "list1.get(0)=42"}> : (i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_multiple_lists"} : () -> ()
    "vm.export"() <{export_name = "fail_uninitialized_access", function_ref = @fail_uninitialized_access}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %6 = "vm.const.i32"() <{value = 0 : i32}> : () -> i32
      %7 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %8 = "vm.list.alloc"(%7) : (i32) -> !vm.list<i32>
      "vm.list.set.i32"(%8, %6, %7) : (!vm.list<i32>, i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "fail_uninitialized_access"} : () -> ()
    "vm.export"() <{export_name = "fail_out_of_bounds_read", function_ref = @fail_out_of_bounds_read}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %2 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %3 = "vm.list.alloc"(%2) : (i32) -> !vm.list<i32>
      "vm.list.resize"(%3, %2) : (!vm.list<i32>, i32) -> ()
      %4 = "vm.list.get.i32"(%3, %2) : (!vm.list<i32>, i32) -> i32
      %5 = "util.optimization_barrier"(%4) : (i32) -> i32
      "vm.list.set.i32"(%3, %2, %5) : (!vm.list<i32>, i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "fail_out_of_bounds_read"} : () -> ()
    "vm.export"() <{export_name = "fail_out_of_bounds_write", function_ref = @fail_out_of_bounds_write}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %0 = "vm.const.i32"() <{value = 1 : i32}> : () -> i32
      %1 = "vm.list.alloc"(%0) : (i32) -> !vm.list<i32>
      "vm.list.resize"(%1, %0) : (!vm.list<i32>, i32) -> ()
      "vm.list.set.i32"(%1, %0, %0) : (!vm.list<i32>, i32, i32) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "fail_out_of_bounds_write"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

