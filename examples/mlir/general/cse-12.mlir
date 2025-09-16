"builtin.module"() ({
  "func.func"() <{function_type = () -> i32, sym_name = "nested_isolated"}> ({
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    "builtin.module"() ({
      "func.func"() <{function_type = () -> (), sym_name = "nested_func"}> ({
        %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
        "foo.yield"(%2) : (i32) -> ()
      }) : () -> ()
    }) : () -> ()
    "foo.region"() ({
      %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      "foo.yield"(%1) : (i32) -> ()
    }) : () -> ()
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

