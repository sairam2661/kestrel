"builtin.module"() ({
  "func.func"() <{
    function_type = (!torch_int, !torch_constant_int, !torch_constant_int) -> !torch_int,
    sym_name = "mysterious_computation"
  }> ({
  ^bb0(%arg0: !torch_int, %arg1: !torch_constant_int, %arg2: !torch_constant_int):
    %0 = "arith.cmpi"(%arg0, %arg1, "gt") : (!torch_int, !torch_constant_int) -> i1
    %1 = "arith.cmpi"(%arg0, %arg2, "lt") : (!torch_int, !torch_constant_int) -> i1
    %2 = "arith.andi"(%0, %1) : (i1, i1) -> i1
    %3 = "torch.prim.NumToTensor.Scalar"(%2) : (i1) -> !torch_int
    %4 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch_int
    %5 = "arith.addi"(%arg0, %4) : (!torch_int, !torch_int) -> !torch_int
    %6 = "arith.muli"(%5, %3) : (!torch_int, !torch_int) -> !torch_int
    "func.return"(%6) : (!torch_int) -> ()
  }) : () -> ()
  "func.func"() <{
    function_type = (!torch_int, !torch_int, !torch_int) -> !torch_int,
    sym_name = "nested_computation"
  }> ({
  ^bb0(%arg0: !torch_int, %arg1: !torch_int, %arg2: !torch_int):
    %0 = "func.call"() <{callee = @mysterious_computation}> : (!torch_int, !torch_int, !torch_int) -> !torch_int
    %1 = "func.call"() <{callee = @mysterious_computation}> : (!torch_int, !torch_int, !torch_int) -> !torch_int
    %2 = "arith.addi"(%0, %1) : (!torch_int, !torch_int) -> !torch_int
    "func.return"(%2) : (!torch_int) -> ()
  }) : () -> ()
}) : () -> ()