"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<5x5x32xi8>, memref<4x4x32xi32>) -> (i32, tensor<5x5x32xi8>, memref<4x4x32xi32>), sym_name = "complex_transform"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<5x5x32xi8>, %arg2: memref<4x4x32xi32>):
    %0 = "transform.structured.match"() <{patterns = [@pattern1, @pattern2]}> : () -> (i32, tensor<5x5x32xi8>, memref<4x4x32xi32>)
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2:2 = "arith.sub"(%arg1, %0) : (tensor<5x5x32xi8>, tensor<5x5x32xi8>) -> (tensor<5x5x32xi8>, tensor<5x5x32xi8>)
    %3:2 = "arith.div"(%arg2, %0) : (memref<4x4x32xi32>, memref<4x4x32xi32>) -> (memref<4x4x32xi32>, memref<4x4x32xi32>)
    "transform.yield"(%1, %2#0, %3#0) : (i32, tensor<5x5x32xi8>, memref<4x4x32xi32>) -> ()
    "transform.named_sequence"() <{name = "my_sequence", regions = [@region1, @region2]}> : () -> ()
  }) : () -> ()
}) : () -> ()

"transform.pattern"() ({
  "arith.constant"() <{value = 5 : i32}> : () -> i32
}) : () -> ()

"transform.pattern"() ({
  "arith.constant"() <{value = 10 : i32}> : () -> i32
}) : () -> ()

"transform.region"() ({
  ^bb0(%arg0: i32):
    "arith.subi"(%arg0, 1) : (i32, i32) -> i32
    "transform.yield"() : () -> ()
}) : () -> ()

"transform.region"() ({
  ^bb0(%arg0: i32):
    "arith.addi"(%arg0, 1) : (i32, i32) -> i32
    "transform.yield"() : () -> ()
}) : () -> ()