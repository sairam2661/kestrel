"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xf32>, tensor<2x2xf32>) -> tensor<2x2xi1>, sym_name = "complex_compare"}> ({
    ^entry(%arg0: tensor<2x2xf32>, %arg1: tensor<2x2xf32>):
      %cmp0 = "arith.cmpf"(%arg0, %arg1, "oeq") : (tensor<2x2xf32>, tensor<2x2xf32>) -> tensor<2x2xi1>
      
      "scf.if"(%cmp0) <{sym_name = "if_region"}> ({
        ^bb0(%arg2: tensor<2x2xi1>):  
          %const1 = "arith.constant"() <{value = 10.0 : f32}> : () -> f32
          %const2 = "arith.constant"() <{value = 20.0 : f32}> : () -> f32
          %add1 = "arith.addf"(%const1, %const2) : (f32, f32) -> f32
          %add2 = "arith.addf"(%add1, %const1) : (f32, f32) -> f32
          %add3 = "arith.addf"(%add2, %const2) : (f32, f32) -> f32
          "scf.yield"() : () -> ()
      }) {
        "scf.yield"  = "scf.yield" : () -> ()
      }

      : (tensor<2x2xi1>) -> ()
      "func.return" (%cmp0) : (tensor<2x2xi1>) -> ()
  }) : () -> ()
}) : () -> ()