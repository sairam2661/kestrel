"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_ptr) -> (!ttg_ptr), sym_name = "complex_flow", sym_visibility = "public"}> ({
  ^bb0(%arg0: !ttg_ptr):
    %0 = "arith.constant"() <{value = dense<1> : tensor<32x32xi32>}> : () -> tensor<32x32xi32>
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.select"(%0, %1, %0) : (tensor<32x32xi32>, i32, tensor<32x32xi32>) -> tensor<32x32xi32>
    %3 = "scf.for"() <{lowerBound = 0 : i32, upperBound = 32 : i32, step = 1 : i32}> ({
    ^bb1(%iv: i32):
      %4 = "scf.if"(%iv) ({
      ^bb2:
        "scf.yield"() : () -> ()
      }) {
      } : (i32) -> ()
      "scf.yield"() : () -> ()
    }) : () -> ()
    %5 = "tt.addptr"(%arg0, %2) : (!ttg_ptr, tensor<32x32xi32>) -> !ttg_ptr
    "tt.return"(%5) : (!ttg_ptr) -> ()
  }) : () -> ()
}) : () -> ()