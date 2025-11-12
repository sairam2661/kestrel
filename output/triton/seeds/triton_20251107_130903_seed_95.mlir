"builtin.module"() ({
  "tt.func"() <{function_type = (index, index) -> tensor<64xi32>, sym_name = "unique_tensor_ops"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
    %1 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %2 = "arith.addi"(%0, %1) : (tensor<32xi32>, tensor<16xi32>) -> tensor<32xi32>
    %3 = "arith.muli"(%1, %0) : (tensor<16xi32>, tensor<32xi32>) -> tensor<32xi32>
    %4 = "arith.cmpi"(%2, %3) <{predicate = 4 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
    %5 = "scf.if"(%arg1) ({
      ^bb1(%c0: i1):
        "scf.yield"(%c0) : (i1) -> i1
    }) {
      "tt.return"=(tensor<64xi32>) 
    -> () 
    } 
    : () -> tensor<64xi32>
  }) : () -> ()
}) : () -> ()