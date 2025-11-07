"builtin.module"() ({
  "func.func"() <{function_type = (memref<3x4x5xf32>, memref<?x4x5xf32>) -> memref<3x4x5xf32>, sym_name = "main_graph"}> ({
  ^bb0(%arg0: memref<3x4x5xf32>, %arg1: memref<?x4x5xf32>):
    "func.return"(%arg0) : (memref<3x4x5xf32>) -> ()
  }) : () -> ()
  "krnl.entry_point"() {func = @main_graph, numInputs = 2 : i32, numOutputs = 1 : i32, signature = "[    { \22type\22 : \22f32\22 , \22dims\22 : [3 , 4 , 5] , \22name\22 : \22input0\22 }\0A ,    { \22type\22 : \22f32\22 , \22dims\22 : [-1 , 4 , 5] , \22name\22 : \22input1\22 }\0A\0A]\00@[   { \22type\22 : \22f32\22 , \22dims\22 : [3 , 4 , 5] , \22name\22 : \22output0\22 }\0A\0A]\00"} : () -> ()
}) : () -> ()

