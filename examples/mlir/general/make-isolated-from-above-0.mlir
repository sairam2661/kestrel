"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (), sym_name = "make_isolated_from_above_single_block"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "tensor.empty"(%arg0, %arg1) : (index, index) -> tensor<?x?xf32>
    %3 = "tensor.dim"(%2, %0) : (tensor<?x?xf32>, index) -> index
    %4 = "tensor.dim"(%2, %1) : (tensor<?x?xf32>, index) -> index
    "test.one_region_with_operands_op"() ({
      "foo.yield"(%0, %1, %3, %4) : (index, index, index, index) -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

