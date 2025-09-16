"builtin.module"() ({
  "func.func"() <{function_type = () -> i1, sym_name = "test"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "test.with_bounds"() <{smax = 9223372036854775807 : index, smin = 0 : index, umax = 9223372036854775807 : index, umin = 0 : index}> : () -> index
    %2 = "arith.cmpi"(%1, %0) <{predicate = 2 : i64}> : (index, index) -> i1
    "func.return"(%2) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

