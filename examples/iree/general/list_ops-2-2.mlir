"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "list_construct_i64"}> ({
    %0 = "arith.constant"() <{value = 100 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 200 : i64}> : () -> i64
    %2 = "util.list.construct"(%0, %1) : (i64, i64) -> !util.list<i64>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

