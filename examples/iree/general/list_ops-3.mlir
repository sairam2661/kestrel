"builtin.module"() ({
  "util.func"() <{function_type = (!util.list<i32>) -> (), sym_name = "list_access", sym_visibility = "public"}> ({
  ^bb0(%arg0: !util.list<i32>):
    %0 = "arith.constant"() <{value = 10 : index}> : () -> index
    %1 = "util.list.get"(%arg0, %0) : (!util.list<i32>, index) -> i32
    %2 = "util.list.get"(%arg0, %0) : (!util.list<i32>, index) -> i32
    %3 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    "util.list.set"(%arg0, %0, %3) : (!util.list<i32>, index, i32) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

