"builtin.module"() ({
  "util.func"() <{function_type = (!util.list<tensor<*xf32>>) -> (), sym_name = "list_access_tensor", sym_visibility = "public"}> ({
  ^bb0(%arg0: !util.list<tensor<*xf32>>):
    %0 = "arith.constant"() <{value = 10 : index}> : () -> index
    %1 = "util.list.get"(%arg0, %0) : (!util.list<tensor<*xf32>>, index) -> tensor<?xf32>
    %2 = "arith.constant"() <{value = dense<1> : tensor<5xi32>}> : () -> tensor<5xi32>
    "util.list.set"(%arg0, %0, %2) : (!util.list<tensor<*xf32>>, index, tensor<5xi32>) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

