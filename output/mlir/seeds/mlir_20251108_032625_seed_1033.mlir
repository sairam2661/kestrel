"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xi32>, index) -> (tensor<5xi32>, index), sym_name = "nested_scf_loop_with_arith"}> ({
  ^bb0(%arg0: tensor<5xi32>, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 5 : index}> : () -> index
    %3:2 = "scf.for"(%arg1, %0, %2, %1) ({
    ^bb1(%arg2: tensor<5xi32>, %arg3: index):
      %4 = "arith.addi"(%arg3, %1) : (index, index) -> index
      %5 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %6 = "arith.addi"(%arg2, %5) : (tensor<5xi32>, i32) -> tensor<5xi32>
      "scf.yield"(%6, %4) : (tensor<5xi32>, index) -> ()
    }) : (tensor<5xi32>, index) -> (tensor<5xi32>, index)
    "func.return"(%3#0, %3#1) : (tensor<5xi32>, index) -> ()
  }) : () -> ()
}) : () -> ()