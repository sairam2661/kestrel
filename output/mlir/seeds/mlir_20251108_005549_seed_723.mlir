"builtin.module"() ({
  "func.func"() <{function_type = (memref<?x?x?xf32>, index, index, index, index) -> (), sym_name = "stress_memref_dim_mixed_rank"}> ({
  ^bb0(%arg0: memref<?x?x?xf32>, %arg1: index, %arg2: index, %arg3: index, %arg4: index):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    "scf.for"(%arg2, %arg3, %arg4) ({
    ^bb0(%arg5: index):
      %2 = "memref.dim"(%arg0, %0) : (memref<?x?x?xf32>, index) -> index
      %3 = "memref.dim"(%arg0, %1) : (memref<?x?x?xf32>, index) -> index
      %4 = "arith.addi"(%2, %3) : (index, index) -> index
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<3x3xi8>, tensor<3x3xi8>) -> tensor<3x3xi8>, sym_name = "stress_tensor_bitwise_xor"}> ({
  ^bb0(%arg0: tensor<3x3xi8>, %arg1: tensor<3x3xi8>):
    %0 = "arith.xori"(%arg0, %arg1) : (tensor<3x3xi8>, tensor<3x3xi8>) -> tensor<3x3xi8>
    "func.return"(%0) : (tensor<3x3xi8>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i1, sym_name = "stress_cmpi_edge_case"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = 8 : i64}> : (i32, i32) -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "stress_cmpf_edge_case"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.cmpf"(%arg0, %arg1) <{predicate = 13 : i64}> : (f32, f32) -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()