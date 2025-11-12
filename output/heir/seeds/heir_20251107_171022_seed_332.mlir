"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xi32>, tensor<5xi32>) -> tensor<5xi32>, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: tensor<5xi32>, %arg1: tensor<5xi32>):
    %c0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %c1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %c2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %c3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %c4 = "arith.constant"() <{value = 4 : index}> : () -> index

    %e0 = "tensor.extract"(%arg0, %c0) : (tensor<5xi32>, index) -> i32
    %e1 = "tensor.extract"(%arg0, %c1) : (tensor<5xi32>, index) -> i32
    %e2 = "tensor.extract"(%arg0, %c2) : (tensor<5xi32>, index) -> i32
    %e3 = "tensor.extract"(%arg0, %c3) : (tensor<5xi32>, index) -> i32
    %e4 = "tensor.extract"(%arg0, %c4) : (tensor<5xi32>, index) -> i32

    %add1 = "arith.addi"(%e0, %e1) : (i32, i32) -> i32
    %add2 = "arith.addi"(%e2, %e3) : (i32, i32) -> i32
    %add3 = "arith.addi"(%add1, %add2) : (i32, i32) -> i32
    %mul1 = "arith.muli"(%add3, %e4) : (i32, i32) -> i32

    %t0 = "tensor.insert"(%mul1, %arg1, %c0) : (i32, tensor<5xi32>, index) -> tensor<5xi32>
    %t1 = "tensor.insert"(%add2, %t0, %c1) : (i32, tensor<5xi32>, index) -> tensor<5xi32>
    %t2 = "tensor.insert"(%add1, %t1, %c2) : (i32, tensor<5xi32>, index) -> tensor<5xi32>
    %t3 = "tensor.insert"(%e3, %t2, %c3) : (i32, tensor<5xi32>, index) -> tensor<5xi32>
    %t4 = "tensor.insert"(%e4, %t3, %c4) : (i32, tensor<5xi32>, index) -> tensor<5xi32>

    "func.return"(%t4) : (tensor<5xi32>) -> ()
  }) : () -> ()
}) : () -> ()