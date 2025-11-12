"builtin.module"() ({
  "func.func"() <{function_type = (i1, f32, vector<8xi8>) -> (i32, vector<16xi16>), sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i1, %arg1: f32, %arg2: vector<8xi8>):
    %0 = "tosa.const"() <{value = dense<1.0> : tensor<1xf32>}> : () -> tensor<1xf32>
    %1 = "arith.muli"(%arg1, %0) <{overflowFlags = #arith_overflow_attributes}> : (f32, f32) -> f32
    %2 = "arith.extui"(%arg0) : (i1) -> i32
    %3 = "vector.constant"() <{value = dense<[1, 2, 3, 4, 5, 6, 7, 8]> : vector<8xi8>}> : () -> vector<8xi8>
    %4 = "vector.shuffle"(%arg2, %3, %0) : (vector<8xi8>, vector<8xi8>, tensor<1xf32>) -> vector<16xi8>
    %5 = "arith.extsi"(%4) : (vector<16xi8>) -> vector<16xi16>
    "func.return"(%2, %5) : (i32, vector<16xi16>) -> ()
  }) : () -> ()
}) : () -> ()