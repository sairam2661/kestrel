"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xf32>, tensor<2x3xf32>) -> tensor<2x3xf32>, sym_name = "complexOperation"}> ({
    ^bb0(%arg0: tensor<2x3xf32>, %arg1: tensor<2x3xf32>):
      %0 = "arith.addf"(%arg0, %arg1) : (tensor<2x3xf32>, tensor<2x3xf32>) -> tensor<2x3xf32>
      %1 = "arith.cmpf"(%0, %arg0, "oeq") : (tensor<2x3xf32>, tensor<2x3xf32>) -> tensor<2xi1>
      %2 = "scf.if"(%1) : (tensor<2xi1>) -> tensor<2x3xf32>  "loc(\"unknown\", 0, 0)"  ( "loc(\"unknown\", 0, 0)" ){
        "scf.yield"  ="%arg0"  }  : (tensor<2x3xf32>) -> tensor<2x3xf32>  "loc(\"unknown\", 0, 0)" ( "loc(\"unknown\", 0, 0)" ){
        "scf.yield"  ="%0"  }
       : tensor<2x3xf32>, tensor<2x3xf32>, tensor<2xi1> -> tensor<2x3xf32>
      "func.return"(%2) : (tensor<2x3xf32>) -> ()
    }) : () -> ()
}) : () -> ()