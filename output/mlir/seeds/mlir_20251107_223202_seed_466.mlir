"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<?xi8>) -> (i32, tensor<?xi32>), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<?xi8>):
    %c5_i32 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %add1 = "arith.addi"(%arg0, %c5_i32) : (i32, i32) -> i32
    %scf_for = "scf.for"(%c3_i32, %c2_i32) <{lower_bound = 3 : index, upper_bound = 5 : index, step = 1 : index}> ({
    ^bb0(%iv: index, %arg2: tensor<?xi8>):
      %add2 = "arith.addi"(%iv, %c2_i32) : (index, i32) -> i32
      "scf.yield"(%add2) : (i32) -> ()
    }) : (index, tensor<?xi8>) -> i32
    %scf_if = "scf.if"(%add1) ({
    ^bb0(%cond: i1):
      "tosa.add"(%arg1, %arg1) : (tensor<?xi8>, tensor<?xi8>) -> tensor<?xi8>
      "scf.yield"() : () -> ()
    }) {
    } : (i1) -> ()
    %add3 = "arith.addi"(%add1, %scf_for) : (i32, i32) -> i32
    "func.return"(%add3, %arg1) : (i32, tensor<?xi8>) -> ()
  }) : () -> ()
}) : () -> ()