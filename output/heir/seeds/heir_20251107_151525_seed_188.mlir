"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecreti32, i1) -> !secretsecreti32, sym_name = "test_nested_control_flow"}> ({
  ^bb0(%arg0: !secretsecreti32, %arg1: i1):
    %0 = "arith.cmpi"(%arg1, %arg1, "eq") : (i1, i1) -> i1
    %1 = "arith.select"(%0, %arg0, %arg0) : (i1, !secretsecreti32, !secretsecreti32) -> !secretsecreti32
    %2 = "secret.generic"(%1) ({
    ^bb0(%arg2: i32):
      %3 = "scf.if"(%0) ({
      ^bb0():
        %4 = "arith.addi"(%arg2, %arg2) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
        "scf.yield"(%4) : (i32) -> ()
      }) {
        "scf.yield"="#" : () -> i32
      } : (i1) -> i32
      "secret.yield"(%3) : (i32) -> ()
    }) {__argattrs = [{tensor_extlayout = #newlayout}], __resattrs = [{tensor_extlayout = #newlayout}]} : (!secretsecreti32) -> !secretsecreti32
    "func.return"(%2) : (!secretsecreti32) -> ()
  }) : () -> ()
}) : () -> ()


#newlayout = #tensor_extnew_layout"{ [] -> [ct, slot] : ct = 0 and 0 <= slot <= 31 }" 
  (tensor<i32>) 
  ( { tensor_ext.layout : tensor<i32> } ) 
  { tensor_ext.layout = #newlayout } 
  : (tensor<i32>) -> (tensor<i32>)