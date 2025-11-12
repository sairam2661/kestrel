"builtin.module"() ({
    "func.func"() <{function_type = (tensor<32xi32>, index) -> tensor<32xi32>, sym_name = "tensor_insert_extract_complexity"}> ({
    ^bb0(%arg0: tensor<32xi32>, %arg1: index):
        %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
        %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
        %2 = "scf.for"(%arg1, %arg1, %0, %arg0) ({
        ^bb0(%arg2: index, %arg3: tensor<32xi32>):
            %4 = "tensor.extract"(%arg3, %arg2) : (tensor<32xi32>, index) -> i32
            %5 = "arith.addi"(%4, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
            %6 = "tensor.insert"(%5, %arg3, %arg2) : (i32, tensor<32xi32>, index) -> tensor<32xi32>
            "scf.yield"(%6) : (tensor<32xi32>) -> ()
        }) : (index, index, i32, tensor<32xi32>) -> tensor<32xi32>
        "func.return"(%2) : (tensor<32xi32>) -> ()
    }) : () -> ()
}) : () -> ()