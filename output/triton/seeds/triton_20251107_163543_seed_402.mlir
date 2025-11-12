"builtin.module"() ({
    "tt.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "complex_reduction"}> ({
        ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
            %0 = "arith.xori"(%arg0, %arg1) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
            %1 = "arith.subi"(%arg0, %arg1) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
            %2 = "arith.remsi"(%arg0, %arg1) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
            %3 = "arith.select"(%0, %1, %2) : (tensor<8xi32>, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
            %4 = "arith.muli"(%3, %arg0) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
            %5 = "tt.make_range"() <{end = 8 : i32, start = 0 : i32}> : () -> tensor<8xi32>
            %6 = "arith.xori"(%5, %4) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
            "tt.return"(%6) : (tensor<8xi32>) -> ()
        }) : () -> ()
    }) : () -> ()