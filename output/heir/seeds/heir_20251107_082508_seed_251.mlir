"builtin.module"() ({
  "func.func"() <{function_type = (tensor<32xi32>, tensor<32xf32>) -> tensor<32xf32>, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 32 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %3 = "secret.conceal"(%arg0) : (tensor<32xi32>) -> !secret secret
   .scf.0: 
    (index, tensor<32xf32>) -> tensor<32xf32> 
    ^bb0(%indvar: index, %acc: tensor<32xf32>):
      %4 = "tensor.extract"(%arg1, %indvar) : (tensor<32xf32>, index) -> f32
      %5 = "secret.generic"(%3, %indvar) ({
      ^bb0(%secret_val: i32):
        %6 = "arith.extsi"(%secret_val) : (i32) -> i64
        %7 = "arith.cast"(%6) : (i64) -> f64
        %8 = "arith.addf"(%7, %2) <{fastmath = #arith_fastmath_attrs}> : (f64, f64) -> f64
        "secret.yield"(%8) : (f64) -> ()
      }) : (!secret, index) -> !secret
      %9 = "secret.reveal"(%5) : (!secret) -> f64
      %10 = "arith.cast"(%9) : (f64) -> f32
      %11 = "tensor.insert"(%10, %acc, %indvar) : (f32, tensor<32xf32>, index) -> tensor<32xf32>
      "scf.yield"(%11) : (tensor<32xf32>) -> ()
    }) {lower = 0 : i64, upper = 32 : i64} : (index, tensor<32xf32>) -> tensor<32xf32>
    "func.return"(%3) : (tensor<32xf32>) -> ()
  }) : () -> ()
  "func.func"() 
  ({
    ^bb0(%arg0: !secret, %arg1: index):
      %0 = "secret.generic"(%arg0, %arg1) ({
      ^bb0(%secret_val: i32):
        %1 = "arith.extsi"(%secret_val) : (i32) -> i64
        %2 = "arith.cast"(%1) : (i64) -> f64
        "secret.yield"(%2) : (f64) -> ()
      }) : (!secret, index) -> !secret
      "func.return"(%0) : (!secret) -> ()
  }) : () -> ()
  "func.func"() 
  ({
    ^bb0(%arg0: !secret, %arg1: index):
      %0 = "secret.generic"(%arg0, %arg1) ({
      ^bb0(%secret_val: f64):
        %1 = "arith.cast"(%secret_val) : (f64) -> i64
        %2 = "arith.trunci"(%1) : (i64) -> i32
        "secret.yield"(%2) : (i32) -> ()
      }) : (!secret, index) -> !secret
      "func.return"(%0) : (!secret) -> ()
  }) : () -> ()
  
  "func.func"() 
  ({
    ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xf32>):
    %0 = "secret.conceal"(%arg0) : (tensor<32xi32>) -> !secret
    %1 = "secret.conceal"(%arg1) : (tensor<32xf32>) -> !secret
    %2 = "func.call"(%0, %1) : (!secret, !secret) -> !secret
    %3 = "func.call"(%2, %0) : (!secret, !secret) -> !secret
    %4 = "secret.reveal"(%3) : (!secret) -> tensor<32xi32>
    "func.return"(%4) : (tensor<32xi32>) -> ()
  }) : () -> ()
  
  "func.func"() 
  ({
    ^bb0(%arg0: tensor<32xi32>):
    %0 = "secret.conceal"(%arg0) : (tensor<32xi32>) -> !secret
    %1 = "func.call"(%0, %0) : (!secret, !secret) -> !secret
    %2 = "secret.reveal"(%1) : (!secret) -> tensor<32xi32>
    "func.return"(%2) : (tensor<32xi32>) -> ()
  }) : () -> ()
  
  "func.func"() 
  ({
    ^bb0(%arg0: !secret, %arg1: !secret):
    %0 = "secret.generic"(%arg0, %arg1) ({
      ^bb0(%secret_val0: i32, %secret_val1: i32):
        %1 = "arith.addi"(%secret_val0, %secret_val1) : (i32, i32) -> i32
        "secret.yield"(%1) : (i32) -> ()
      }) : (!secret, !secret) -> !secret
      "func.return"(%0) : (!secret) -> ()
  }) : () -> ()
  
  "func.func"() 
  ({
    ^bb0(%arg0: !secret, %arg1: !secret):
    %0 = "secret.generic"(%arg0, %arg1) ({
      ^bb0(%secret_val0: i32, %secret_val1: i32):
        %1 = "arith.muli"(%secret_val0, %secret_val1) : (i32, i32) -> i32
        "secret.yield"(%1) : (i32) -> ()
      }) : (!secret, !secret) -> !secret
      "func.return"(%0) : (!secret) -> ()
  }) : () -> ()
  
  "func.func"() 
  ({
    ^bb0(%arg0: !secret, %arg1: !secret):
    %0 = "secret.generic"(%arg0, %arg1) ({
      ^bb0(%secret_val0: i32, %secret_val1: i32):
        %1 = "arith.cmpi"(%secret_val0, %secret_val1, "eq") : (i32, i32) -> i1
        "secret.yield"(%1) : (i1) -> ()
      }) : (!secret, !secret) -> !secret
      "func.return"(%0) : (!secret) -> ()
  }) : () -> ()
  
  "func.func"() 
  ({
    ^bb0(%arg0: !secret, %arg1: !secret):
    %0 = "secret.generic"(%arg0, %arg1) ({
      ^bb0(%secret_val0: i32, %secret_val1: i32):
        %1 = "arith.cmpi"(%secret_val0, %secret_val1, "ne") : (i32, i32) -> i1
        "secret.yield"(%1) : (i1) -> ()
      }) : (!secret, !secret) -> !secret
      "func.return"(%0) : (!secret) -> ()
  }) : () -> ()
  
  "func.func"() 
  ({
    ^bb0(%arg0: !secret, %arg1: !secret):
    %0 = "secret.generic"(%arg0, %arg1) ({
      ^bb0(%secret_val0: i32, %secret_val1: i32):
        %1 = "arith.cmpi"(%secret_val0, %secret_val1, "sgt") : (i32, i32) -> i1
        "secret.yield"(%1) : (i1) -> ()
      }) : (!secret, !secret) -> !secret
      "func.return"(%0) : (!secret) -> ()
  }) : () -> ()
  
  "func.func"() 
  ({
    ^bb0(%arg0: !secret, %arg1: !secret):
    %0 = "secret.generic"(%arg0, %arg1) ({
      ^bb0(%secret_val0: i32