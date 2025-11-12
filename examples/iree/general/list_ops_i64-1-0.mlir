"builtin.module"() ({
  "vm.module"() <{sym_name = "list_ops_i64"}> ({
    "vm.export"() <{export_name = "test_i64", function_ref = @test_i64}> : () -> ()
    "vm.func"() <{function_type = () -> ()}> ({
      %0 = "vm.const.i32"() <{value = 42 : i32}> : () -> i32
      %1 = "vm.const.i32"() <{value = 41 : i32}> : () -> i32
      %2 = "vm.const.i64"() <{value = 2147483648 : i64}> : () -> i64
      %3 = "vm.list.alloc"(%0) : (i32) -> !vm.list<i64>
      %4 = "vm.list.size"(%3) : (!vm.list<i64>) -> i32
      "vm.list.resize"(%3, %0) : (!vm.list<i64>, i32) -> ()
      "vm.list.set.i64"(%3, %1, %2) : (!vm.list<i64>, i32, i64) -> ()
      %5 = "vm.list.get.i64"(%3, %1) : (!vm.list<i64>, i32) -> i64
      "vm.check.eq"(%5, %2) <{message = "list<i64>.empty.set(41, MAX_INT_PLUS_1).get(41)=MAX_INT_PLUS_1"}> : (i64, i64) -> ()
      "vm.return"() : () -> ()
    }) {sym_name = "test_i64"} : () -> ()
    "vm.module_terminator"() : () -> ()
  }) : () -> ()
}) : () -> ()

