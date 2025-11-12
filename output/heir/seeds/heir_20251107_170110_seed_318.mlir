"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "tensor_insert_extract_combo"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "arith.constant"() <{value = 5 : index}> : () -> index
    %2 = "arith.constant"() <{value = 7 : index}> : () -> index
    %3 = "tensor.extract"(%arg0, %1) : (tensor<8xi32>, index) -> i32
    %4 = "tensor.extract"(%arg1, %2) : (tensor<8xi32>, index) -> i32
    %5 = "arith.addi"(%3, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "tensor.insert"(%5, %arg0, %0) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    "func.return"(%6) : (tensor<8xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "add_and_select"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %2 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %3 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.cmpi"(%arg0, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %5 = "scf.if"(%4) ({
      "scf.yield"(%3) : (i32) -> ()
    }, {
      "scf.yield"(%arg0) : (i32) -> ()
    }) : (i1) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()